---
type: runbook
procedure_owner: reno
trigger: >-
  Revisão detalhada aprovada por Renato para corrigir o desenho antes de
  qualquer implementação em banco/runtime.
schema_version: 1
status: draft
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
tags:
  - reno
  - famachat
  - database
  - design
  - kpi
  - meta-data
author_agent: reno
title: Reno — Design de Dados Operacionais Estruturados no FamaChat
---
# Reno — Design de Dados Operacionais Estruturados no FamaChat

## Links canônicos

- Hub Reno: [[reno-hub]]
- Schema do vault: [[schema]]
- Operação CRM/Webhook: [[reno-operacao-crm-webhook]]

## Status do documento

- **Status:** draft revisado para aprovação antes de implementação.
- **Data original:** 2026-05-19.
- **Revisão aplicada:** 2026-05-19.
- **Escopo:** desenho de dados e runtime para o Reno no FamaChat.
- **Não é implementação:** este documento não cria tabela, não altera worker, não altera CRM, não envia WhatsApp e não muda comportamento produtivo por si só.
- **Correções incorporadas nesta revisão:** `cycle_state`, `stopped_reason` canônico + `stopped_detail`, idempotência explícita, referências tipadas em `reno_events`, reforço de Agendamento contra `clientes_agendamentos`, views de divergência e plano de runtime mais claro.

## 1. Contexto

Hoje o Reno usa principalmente `clientes.meta_data` como camada flexível de automação. O campo existe na tabela `clientes`, é `jsonb`, `NOT NULL`, default `{}`, e está documentado como metadados flexíveis do cliente para automações e integrações.

Na prática, ele armazena partes da operação Reno, especialmente:

- `reno_first_contact`;
- `reno_followup.repescagem`;
- `reno_followup.resgate`;
- `reno_followup.agendamento`;
- poucos registros de `reno_qualification` e `reno_preferences`.

Esse uso funcionou para evoluir rápido, mas não é ideal como fonte principal de KPI porque:

- mistura estado atual, histórico parcial, payload auxiliar e controle de fila no mesmo JSON;
- dificulta constraints, índices e auditoria;
- torna mais frágil medir conversão por etapa, tempo entre eventos e performance por fluxo;
- não separa bem evento histórico de estado atual;
- exige parse de JSON para perguntas operacionais recorrentes;
- não dá contrato claro para workers, dashboards e governança;
- permite variações de chaves e motivos de parada sem domínio canônico.

A direção aprovada é manter `clientes.meta_data` como compatibilidade e criar uma camada Reno estruturada incremental.

## 2. Snapshot de evidência usado na revisão

Este documento foi revisado contra o estado observado em 2026-05-19:

- total de clientes consultados: 7.854;
- `meta_data` vazio: 7.628;
- clientes com algum `meta_data` Reno: 226;
- clientes com `reno_followup`: 226;
- clientes com `reno_first_contact`: 58;
- clientes com `reno_qualification`: 2;
- clientes com `reno_preferences`: 1;
- branches `reno_followup.repescagem`: 215;
- branches `reno_followup.resgate`: 72;
- branches `reno_followup.agendamento`: 7;
- tabelas `reno_%` propostas ainda inexistentes no banco no momento da revisão;
- cronjobs produtivos ativos de Repescagem, Resgate e Agendamento ainda usando prompts autocontidos com `skills=[]`.

Esse snapshot é evidência de diagnóstico, não contrato permanente. Antes de migration ou backfill, os números devem ser revalidados.

## 3. Objetivo do desenho

Criar uma estrutura relacional específica do Reno para servir como fonte confiável de:

- funil operacional do Reno;
- primeiro contato;
- Repescagem;
- Resgate;
- Agendamento proativo;
- eventos históricos e auditáveis;
- KPIs reais de resposta, etapa, tempo, conversão e outcome;
- seleção futura de filas pelos workers;
- comparação segura durante a transição com `clientes.meta_data`.

O objetivo principal é permitir que o Reno seja alimentado por essas tabelas e também alimente essas tabelas em tempo real operacional, sem quebrar a produção atual.

## 4. Não objetivos

Fora do escopo da Fase 1:

- substituir imediatamente `clientes.meta_data`;
- criar tabela própria de qualificação comercial completa;
- duplicar notas CRM ou documentos do vault;
- substituir `clientes_agendamentos` como fonte operacional de visitas;
- guardar transcrição completa de WhatsApp;
- criar uma tabela técnica separada de mensagens outbound neste momento;
- mudar workers produtivos sem uma fase de escrita dupla e validação;
- usar as tabelas novas para disparo automático antes de validar divergências.

## 5. Decisões de design já alinhadas

### 5.1 Manter `clientes.meta_data`

`clientes.meta_data` permanece como:

- fonte operacional legada ativa durante a transição;
- camada de compatibilidade;
- fonte de backfill;
- fallback runtime temporário;
- espaço para dados auxiliares ainda não modelados;
- ponte para workers atuais até migração controlada.

Ele deixa de ser a fonte principal de KPI quando as tabelas estruturadas estiverem alimentadas, validadas e os workers tiverem sido migrados de forma explícita.

### 5.2 Criar tabelas específicas por ciclo operacional

A estrutura deve refletir os fluxos reais do Reno. Quando um fluxo tem regra própria, etapas próprias, stop reasons próprios e KPI próprio, ele merece tabela própria.

Desenho recomendado:

- `reno_cases`;
- `reno_first_contacts`;
- `reno_repescagem_cycles`;
- `reno_resgate_cycles`;
- `reno_agendamento_cycles`;
- `reno_events`.

### 5.3 Não criar `reno_message_attempts` agora

A tabela `reno_message_attempts` foi considerada, mas removida da Fase 1.

Motivo: neste momento, a prioridade é funil, estado, outcomes e KPIs comerciais. Uma tabela técnica de mensagens pode ser criada depois, se houver necessidade de auditar múltiplas tentativas por step, delivery status detalhado, retries técnicos ou comparação entre provedores.

Na Fase 1, os dados mínimos de envio ficam nos ciclos específicos e nos eventos.

### 5.4 Não criar `reno_qualifications`

A qualificação comercial segue em:

- notas do FamaChat;
- documentos curados no vault;
- histórico de conversa quando necessário.

No banco estruturado entram apenas marcos mensuráveis e referências, por exemplo:

- `qualification_started`;
- `qualification_note_recorded`;
- `objection_recorded`;
- `visit_invited`;
- `visit_accepted`;
- `appointment_created`;
- `case_outcome_set`;
- `crm_note_id`;
- `vault_path`.

### 5.5 Usar `cycle_state` nos ciclos

`enabled` não deve carregar sozinho a semântica do ciclo.

Todo ciclo operacional deve ter:

- `enabled`: flag operacional de seleção pelo worker;
- `cycle_state`: estado semântico do ciclo.

Valores iniciais de `cycle_state`:

- `active`;
- `waiting`;
- `stopped`;
- `failed`;
- `manual_review`;
- `completed`.

### 5.6 Separar `stopped_reason` e `stopped_detail`

`stopped_reason` deve ser canônico e curto. `stopped_detail` guarda variação granular quando necessário.

Exemplos:

- `stopped_reason = client_replied`;
- `stopped_detail = client_replied_income_low_no_interest`.

Ou:

- `stopped_reason = whatsapp_unavailable`;
- `stopped_detail = whatsapp_not_available_verified_by_renato`.

Isso evita poluir domínio de KPI com dezenas de variações operacionais.

### 5.7 `reno_events` deve usar referências tipadas

Decisão revisada: em vez de `cycle_id + cycle_table`, usar colunas opcionais específicas em `reno_events`:

- `first_contact_id`;
- `repescagem_cycle_id`;
- `resgate_cycle_id`;
- `agendamento_cycle_id`.

Motivos:

- melhor integridade referencial;
- joins mais claros;
- melhor aderência a Drizzle/schema TypeScript;
- menor risco de string inválida em `cycle_table`;
- melhor para dashboard e validação.

### 5.8 Agendamento não substitui agenda

`reno_agendamento_cycles` representa o ciclo de comunicação/automação do Reno sobre uma visita. A fonte operacional da visita continua sendo `clientes_agendamentos`.

Qualquer KPI de visita precisa cruzar:

- `reno_agendamento_cycles`;
- `clientes_agendamentos`;
- `reno_events`.

A tabela Reno sozinha não deve ser fonte final de visita ativa, futura, realizada, cancelada ou no-show.

## 6. Precedência das fontes de verdade

Para evitar ambiguidade durante a transição, aplicar esta ordem:

1. `clientes` para cliente, broker e status atual.
2. `clientes_agendamentos` para visita/agendamento real.
3. tabelas `reno_%` para estado Reno estruturado, KPI e auditoria após backfill/validação.
4. `clientes.meta_data` como legado ativo, fonte de backfill e fallback temporário.
5. notas CRM e vault para narrativa, diagnóstico e contexto qualitativo.
6. payload/webhook como sinal de entrada, nunca como verdade final.

Se houver divergência entre CRM e vault, prevalece CRM/FamaChat para estado operacional.

Se houver divergência entre `clientes_agendamentos` e `reno_agendamento_cycles`, prevalece `clientes_agendamentos` para a existência e status da visita.

## 7. Modelo proposto

## 7.1 `reno_cases`

### Propósito

Tabela central do caso Reno. Deve existir uma linha por cliente atendido ou avaliado pelo Reno no escopo atual.

Ela responde:

- o cliente pertence ao escopo Reno?
- em qual estágio está?
- já recebeu primeiro contato?
- já respondeu?
- há visita/agendamento associado?
- qual é o outcome atual?
- quando foi a última mudança relevante?

### Cardinalidade

- 1 cliente pode ter 0 ou 1 caso Reno na Fase 1.
- Constraint recomendada para Fase 1: `UNIQUE(client_id)`.
- Se no futuro houver múltiplos casos por cliente, o modelo pode evoluir para reabertura/versionamento.

### Campos sugeridos

- `id`;
- `client_id`;
- `broker_id`;
- `case_scope`;
- `is_active`;
- `opened_at`;
- `opened_reason`;
- `closed_at`;
- `closed_reason`;
- `current_stage`;
- `current_outcome`;
- `current_status_snapshot`;
- `source_client_created_at`;
- `last_status_sync_at`;
- `first_contact_at`;
- `first_response_at`;
- `last_inbound_at`;
- `last_outbound_at`;
- `latest_followup_flow`;
- `latest_followup_step`;
- `latest_appointment_id`;
- `appointment_scheduled_at`;
- `latest_event_at`;
- `vault_path`;
- `last_crm_note_id`;
- `created_at`;
- `updated_at`.

### Valores sugeridos para `case_scope`

- `reno_broker_35`;
- `manual_migration`;
- `out_of_scope`;
- `future_scope`.

### Valores sugeridos para `current_stage`

- `new`;
- `first_contact_sent`;
- `no_response`;
- `in_conversation`;
- `scheduled`;
- `visited`;
- `archived`;
- `lost`;
- `out_of_scope`;
- `manual_review`.

### Valores sugeridos para `current_outcome`

- `open`;
- `sent_no_response`;
- `responded`;
- `scheduled`;
- `visited`;
- `no_response_max_steps`;
- `whatsapp_failed`;
- `out_of_scope`;
- `manual_review`;
- `lost`.

### Observação

`reno_cases` não deve virar histórico. Histórico entra em `reno_events`. Essa tabela é a foto atual do caso.

## 7.2 `reno_first_contacts`

### Propósito

Registrar o ciclo específico do primeiro contato Reno.

O primeiro contato tem regra própria:

- nasce de `cliente.created`;
- exige validação no CRM;
- exige escopo mínimo do Reno (`broker_id=35` no desenho atual);
- exige tentativa WhatsApp;
- para celular brasileiro, deve tentar com o nono dígito e também sem o nono dígito quando aplicável;
- não deve bloquear tentativa por `haswhatsapp=false` antes de tentar;
- pode mudar `Sem Atendimento` para `Não Respondeu`, somente se o cliente ainda estiver exatamente em `Sem Atendimento`;
- inicializa Repescagem quando enviado;
- mede KPI próprio de resposta inicial;
- precisa registrar regra de nome suspeito/ruidoso quando usada.

### Cardinalidade

- 1 caso Reno deve ter no máximo 1 primeiro contato válido na Fase 1.
- Tentativas técnicas múltiplas ficam representadas como eventos associados, não como tabela de mensagens separada.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `idempotency_key`;
- `trigger_source`;
- `trigger_event_id`;
- `webhook_event_id`;
- `was_eligible`;
- `eligibility_reason`;
- `status_before`;
- `status_after`;
- `send_status`;
- `sent_at`;
- `failed_at`;
- `first_response_at`;
- `outcome`;
- `whatsapp_message_id`;
- `external_event_id`;
- `template_version`;
- `variant`;
- `property_id`;
- `property_name`;
- `property_source`;
- `name_handling`;
- `phone_variant_attempted`;
- `phone_variant_used`;
- `validated_jid_hash`;
- `validation_method`;
- `error_code`;
- `error_message_sanitized`;
- `crm_note_id`;
- `vault_path`;
- `created_at`;
- `updated_at`.

### Valores sugeridos para `trigger_source`

- `cliente.created`;
- `manual_reprocess`;
- `backfill`;
- `system_recovery`.

### Valores sugeridos para `send_status`

- `pending`;
- `sent`;
- `failed`;
- `skipped`;
- `blocked`.

### Valores sugeridos para `outcome`

- `sent_waiting_response`;
- `responded`;
- `failed_whatsapp`;
- `skipped_out_of_scope`;
- `skipped_client_not_found`;
- `manual_review`.

### Valores sugeridos para `name_handling`

- `used_first_name`;
- `used_full_name`;
- `asked_preferred_name`;
- `neutral_opening`;
- `not_applicable`.

### Eventos obrigatórios relacionados

- `first_contact_evaluated`;
- `first_contact_sent`;
- `first_contact_failed`;
- `first_contact_skipped`;
- `client_replied`;
- `status_changed` quando houver transição.

## 7.3 `reno_repescagem_cycles`

### Propósito

Representar o estado e resultado da Repescagem.

Repescagem é a régua para clientes em `Não Respondeu` após primeiro contato, com objetivo de gerar resposta e, no limite, encerrar/arquivar conforme política.

### Cardinalidade

- 1 caso pode ter 0 ou mais ciclos de Repescagem ao longo do tempo.
- Na Fase 1, começar com no máximo 1 ciclo ativo por caso.
- Constraint operacional sugerida: um ciclo ativo por `case_id` quando `stopped_at IS NULL`.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `started_at`;
- `entered_stage_at`;
- `first_due_at`;
- `enabled`;
- `cycle_state`;
- `current_step`;
- `max_steps`;
- `next_run_at`;
- `last_sent_at`;
- `last_send_status`;
- `last_whatsapp_message_id`;
- `last_external_event_id`;
- `last_error_code`;
- `last_error_message_sanitized`;
- `last_candidate_checked_at`;
- `last_claim_worker`;
- `stopped_at`;
- `stopped_reason`;
- `stopped_detail`;
- `archived_at`;
- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `created_at`;
- `updated_at`.

### Valores canônicos para `stopped_reason`

- `client_replied`;
- `max_steps`;
- `whatsapp_failed`;
- `whatsapp_unavailable`;
- `manual_review`;
- `status_changed`;
- `out_of_scope`;
- `disabled_by_policy`.

### Exemplos de `stopped_detail`

- `client_replied_wrong_click`;
- `client_replied_income_low_no_interest`;
- `client_said_mistake`;
- `whatsapp_not_available_verified_by_renato`.

### Eventos obrigatórios relacionados

- `repescagem_started`;
- `repescagem_step_sent`;
- `repescagem_step_failed`;
- `repescagem_stopped`;
- `client_replied`;
- `case_archived` quando aplicável.

## 7.4 `reno_resgate_cycles`

### Propósito

Representar o estado e resultado do Resgate.

Resgate é diferente de Repescagem. Ele atua em clientes em `Em Atendimento`, normalmente após outbound normal do Reno sem resposta posterior, preservando contexto e evitando abordagem genérica.

### Cardinalidade

- 1 caso pode ter 0 ou mais ciclos de Resgate.
- Cada ciclo deve preservar o outbound/contexto que armou o resgate.
- Na Fase 1, deve haver no máximo 1 ciclo ativo por caso.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `source_outbound_at`;
- `source_outbound_type`;
- `source_outbound_message_id`;
- `source_outbound_summary`;
- `last_inbound_before_armed_at`;
- `armed_at`;
- `last_context_bucket`;
- `enabled`;
- `cycle_state`;
- `current_step`;
- `max_steps`;
- `next_run_at`;
- `last_sent_at`;
- `last_send_status`;
- `last_whatsapp_message_id`;
- `last_external_event_id`;
- `last_error_code`;
- `last_error_message_sanitized`;
- `last_candidate_checked_at`;
- `last_claim_worker`;
- `stopped_at`;
- `stopped_reason`;
- `stopped_detail`;
- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `created_at`;
- `updated_at`.

### Valores canônicos para `stopped_reason`

- `client_replied`;
- `awaiting_normal_outbound`;
- `manual_review`;
- `max_steps`;
- `whatsapp_failed`;
- `status_changed`;
- `appointment_active`;
- `disabled_by_policy`.

### Exemplos de `stopped_detail`

- `manual_review_duplicate_active_broker`;
- `awaiting_normal_outbound`;
- `whatsapp_send_failed`.

### Observação crítica

`awaiting_normal_outbound` não deve ser tratado como falha do Resgate. É estado legítimo de espera. Por isso, `cycle_state='waiting'` é preferível a depender somente de `enabled=false`.

### Eventos obrigatórios relacionados

- `resgate_armed`;
- `resgate_waiting_normal_outbound`;
- `resgate_step_sent`;
- `resgate_step_failed`;
- `resgate_stopped`;
- `client_replied`;
- `normal_outbound_sent`.

## 7.5 `reno_agendamento_cycles`

### Propósito

Representar o acompanhamento proativo de visita/agendamento pelo Reno.

Essa tabela não substitui `clientes_agendamentos`. Ela referencia o appointment real e registra o estado do ciclo de lembrete/confirmação/remarcação pelo Reno.

### Cardinalidade

- 1 appointment pode ter 0 ou 1 ciclo Reno de agendamento principal na Fase 1.
- 1 caso pode ter vários ciclos de agendamento ao longo do tempo se houver remarcação ou novas visitas.
- Constraint recomendada na Fase 1: `UNIQUE(appointment_id)`.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `appointment_id`;
- `appointment_scheduled_at`;
- `appointment_end_at`;
- `appointment_status_snapshot`;
- `appointment_status_synced_at`;
- `appointment_type_snapshot`;
- `appointment_was_future_at_claim`;
- `enabled`;
- `cycle_state`;
- `current_step`;
- `next_run_at`;
- `last_sent_at`;
- `last_message_type`;
- `reminder_sent_at`;
- `confirmation_sent_at`;
- `manual_probe_sent_at`;
- `confirmed_at`;
- `cancelled_at`;
- `rescheduled_at`;
- `no_show_at`;
- `completed_at`;
- `last_send_status`;
- `last_whatsapp_message_id`;
- `last_external_event_id`;
- `last_error_code`;
- `last_error_message_sanitized`;
- `last_candidate_checked_at`;
- `last_claim_worker`;
- `stopped_at`;
- `stopped_reason`;
- `stopped_detail`;
- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `created_at`;
- `updated_at`.

### Valores sugeridos para `last_message_type`

- `lembrete_visita`;
- `confirmacao_visita`;
- `remarcacao_probe`;
- `cancelamento_probe`.

### Valores canônicos para `stopped_reason`

- `confirmation_sent`;
- `client_cancelled`;
- `appointment_cancelled`;
- `appointment_rescheduled`;
- `appointment_completed`;
- `no_show`;
- `whatsapp_failed`;
- `appointment_not_active`;
- `disabled_by_policy`.

### Exemplos de `stopped_detail`

- `confirmacao_visita_enviada`;
- `cliente_cancelou_visita_remarcacao_pendente`.

### Regra crítica de KPI

Views de Agendamento precisam cruzar com `clientes_agendamentos`. `reno_agendamento_cycles` mede a comunicação do Reno, não a existência final da visita.

### Eventos obrigatórios relacionados

- `agendamento_started`;
- `agendamento_reminder_sent`;
- `agendamento_confirmation_sent`;
- `agendamento_manual_probe_sent`;
- `agendamento_send_failed`;
- `appointment_confirmed`;
- `appointment_cancelled`;
- `appointment_rescheduled`;
- `visit_completed`;
- `visit_no_show`;
- `agendamento_stopped`.

## 7.6 `reno_events`

### Propósito

Histórico append-only dos acontecimentos mensuráveis do Reno.

Essa tabela é a base para auditoria e KPIs históricos. Ela deve registrar tudo que altera ou explica resultado operacional.

### Regra principal

Todo acontecimento que muda KPI precisa gerar evento estruturado.

Exemplos:

- primeiro contato avaliado, enviado, falho ou ignorado;
- cliente respondeu;
- status mudou;
- Repescagem avançou step;
- Repescagem parou por resposta ou `max_steps`;
- Resgate foi armado;
- Resgate parou por resposta, max steps, espera de outbound normal ou revisão manual;
- visita foi criada, remarcada, cancelada, confirmada, realizada ou no-show;
- registro de qualificação foi feito em nota/vault;
- caso foi arquivado ou encerrado.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `idempotency_key`;
- `schema_version`;
- `event_type`;
- `flow`;
- `first_contact_id`;
- `repescagem_cycle_id`;
- `resgate_cycle_id`;
- `agendamento_cycle_id`;
- `step`;
- `occurred_at`;
- `source`;
- `actor`;
- `created_by_runtime`;
- `status`;
- `outcome`;
- `reason`;
- `from_status`;
- `to_status`;
- `whatsapp_message_id`;
- `external_event_id`;
- `template_version`;
- `variant`;
- `phone_variant_used`;
- `error_code`;
- `error_message_sanitized`;
- `appointment_id`;
- `crm_note_id`;
- `vault_path`;
- `metadata`;
- `created_at`.

### Valores sugeridos para `flow`

- `first_contact`;
- `qualification`;
- `repescagem`;
- `resgate`;
- `agendamento`;
- `case`;
- `system`.

### Valores sugeridos para `source`

- `webhook`;
- `worker`;
- `qualification`;
- `appointment_tool`;
- `manual`;
- `backfill`;
- `system`.

### Valores sugeridos para `actor`

- `reno`;
- `client`;
- `broker`;
- `system`.

### Observação sobre `metadata`

`metadata` deve existir para exceções e extensibilidade, mas não deve substituir colunas importantes.

Regra de governança:

- se um campo for usado em view/KPI, ele deve sair de `metadata` e virar coluna tipada;
- `metadata` só deve guardar exceção, payload sanitizado, flags de backfill ou detalhe temporário;
- nunca guardar payload bruto sensível, transcrição completa ou erro técnico sem sanitização.

## 8. Relação entre tabelas

Relações esperadas:

- `reno_cases.client_id` referencia `clientes.id`.
- `reno_first_contacts.case_id` referencia `reno_cases.id`.
- `reno_first_contacts.client_id` referencia `clientes.id`.
- `reno_repescagem_cycles.case_id` referencia `reno_cases.id`.
- `reno_repescagem_cycles.client_id` referencia `clientes.id`.
- `reno_resgate_cycles.case_id` referencia `reno_cases.id`.
- `reno_resgate_cycles.client_id` referencia `clientes.id`.
- `reno_agendamento_cycles.case_id` referencia `reno_cases.id`.
- `reno_agendamento_cycles.client_id` referencia `clientes.id`.
- `reno_agendamento_cycles.appointment_id` referencia `clientes_agendamentos.id`.
- `reno_events.case_id` referencia `reno_cases.id`.
- `reno_events.client_id` referencia `clientes.id`.
- `reno_events.first_contact_id` referencia `reno_first_contacts.id` quando aplicável.
- `reno_events.repescagem_cycle_id` referencia `reno_repescagem_cycles.id` quando aplicável.
- `reno_events.resgate_cycle_id` referencia `reno_resgate_cycles.id` quando aplicável.
- `reno_events.agendamento_cycle_id` referencia `reno_agendamento_cycles.id` quando aplicável.
- `reno_events.appointment_id` referencia `clientes_agendamentos.id` quando aplicável.

Decisão revisada: não usar FK polimórfica `cycle_id + cycle_table` na Fase 1. Usar colunas tipadas opcionais.

## 9. Fluxos de escrita em tempo real operacional

## 9.1 Primeiro contato enviado

Quando o Reno envia primeiro contato com sucesso:

1. valida CRM e escopo;
2. cria/atualiza `reno_cases`;
3. cria/atualiza `reno_first_contacts` com `idempotency_key`, origem, empreendimento, nome handling e evidência de WhatsApp;
4. registra `reno_events.first_contact_sent`;
5. se status ainda for `Sem Atendimento`, altera para `Não Respondeu`;
6. registra `reno_events.status_changed` se houve transição;
7. inicializa `reno_repescagem_cycles` com `cycle_state='active'` e `current_step=0`;
8. durante transição, mantém `clientes.meta_data.reno_first_contact` e `clientes.meta_data.reno_followup.repescagem`.

## 9.2 Primeiro contato falhou

Quando o WhatsApp não é enviado:

1. registra falha em `reno_first_contacts`;
2. registra `reno_events.first_contact_failed`;
3. registra nota CRM objetiva quando aplicável;
4. não avança status;
5. durante transição, preserva evidência mínima em `meta_data` se a rotina atual já fizer isso.

## 9.3 Cliente respondeu

Quando o cliente responde pela primeira vez:

1. atualiza `reno_cases.first_response_at`;
2. muda `reno_cases.current_stage` para `in_conversation`;
3. registra `reno_events.client_replied`;
4. encerra Repescagem ativa com `stopped_reason='client_replied'` e detalhe quando aplicável;
5. encerra ou pausa Resgate ativo, se aplicável;
6. se status ainda for `Não Respondeu`, altera para `Em Atendimento`;
7. registra `status_changed`, se houve mudança;
8. registra nota CRM e/ou vault conforme regra operacional.

## 9.4 Repescagem envia step

Quando o worker de Repescagem envia uma mensagem:

1. seleciona ciclo due;
2. valida `clientes.broker_id=35` e `clientes.status='Não Respondeu'`;
3. aplica claim/lock do ciclo;
4. envia WhatsApp;
5. atualiza `current_step`, `last_sent_at`, `next_run_at`, status de envio e evidência;
6. registra `reno_events.repescagem_step_sent` ou `repescagem_step_failed`;
7. se chegou ao fim, registra `repescagem_stopped` e outcome correspondente.

## 9.5 Resgate é armado

Quando um outbound normal do Reno fica sem resposta e vira candidato a resgate:

1. cria ciclo em `reno_resgate_cycles`;
2. registra `source_outbound_at`, `source_outbound_type`, `source_outbound_message_id` quando houver e `last_context_bucket`;
3. registra `last_inbound_before_armed_at` quando houver evidência;
4. agenda `next_run_at`;
5. registra `reno_events.resgate_armed`.

## 9.6 Resgate envia step

Quando o worker de Resgate envia uma mensagem:

1. seleciona ciclo due;
2. valida `clientes.broker_id=35` e `clientes.status='Em Atendimento'`;
3. verifica contexto e ausência de resposta posterior;
4. envia WhatsApp;
5. atualiza ciclo;
6. registra evento de envio, falha ou parada.

## 9.7 Visita/agendamento criado

Quando uma visita é criada no FamaChat:

1. `clientes_agendamentos` recebe o appointment real;
2. `reno_cases.latest_appointment_id` é atualizado;
3. `reno_cases.current_stage` muda para `scheduled` quando aplicável;
4. cria `reno_agendamento_cycles` referenciando o appointment real;
5. copia snapshots mínimos do appointment para auditoria;
6. registra `reno_events.appointment_created`;
7. se status ainda for `Em Atendimento`, muda para `Agendamento` conforme regra operacional.

## 9.8 Agendamento envia lembrete/confirmação

Quando o worker de Agendamento envia lembrete ou confirmação:

1. seleciona ciclo due;
2. valida appointment real, futuro e ativo em `clientes_agendamentos`;
3. salva snapshot do status do appointment no momento do claim;
4. envia WhatsApp;
5. atualiza `reminder_sent_at`, `confirmation_sent_at` ou `manual_probe_sent_at`;
6. registra evento;
7. encerra ciclo quando a confirmação final for enviada ou quando a visita deixar de ser elegível.

## 10. Leitura pelos workers

## 10.1 Estado atual

Hoje, os workers leem principalmente `clientes.meta_data.reno_followup`. No modelo alvo, eles passam a ler:

- Repescagem: `reno_repescagem_cycles`;
- Resgate: `reno_resgate_cycles`;
- Agendamento: `reno_agendamento_cycles` + `clientes_agendamentos`.

## 10.2 Validação obrigatória contra `clientes`

Mesmo lendo tabelas Reno, os workers devem validar no momento da execução:

- cliente existe;
- `broker_id` ainda é do Reno;
- status atual ainda é compatível com o fluxo;
- appointment ainda existe e está futuro/ativo no caso de Agendamento;
- não há stop reason ou encerramento recente;
- `cycle_state` e `enabled` são compatíveis com envio.

## 10.3 Transição segura

Durante migração, os workers devem operar em etapas:

1. ler do `meta_data` e escrever também nas tabelas novas;
2. ler das tabelas novas, mas comparar com `meta_data`;
3. usar tabelas novas como fonte primária;
4. manter `meta_data` apenas como fallback e compatibilidade.

## 10.4 Atenção aos cronjobs produtivos atuais

Os cronjobs produtivos verificados na revisão estavam ativos, mas com `skills=[]`. Isso significa que eles dependem de prompt autocontido/compilado.

Consequência:

- atualizar este runbook ou skills não altera produção automaticamente;
- a migração precisa atualizar explicitamente prompts/jobs/runtime;
- depois de qualquer atualização de job, é obrigatório auditar output novo e estado no CRM.

## 11. Idempotência, claim e concorrência

Campos de claim nos ciclos são necessários para evitar processamento duplicado:

- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `last_claim_worker`.

Regras:

- um worker deve claimar apenas um candidato por execução quando o fluxo exigir essa segurança;
- claims expirados podem ser liberados;
- envio só deve ser considerado concluído depois de evidência mínima de sucesso;
- falha deve ser registrada sem avançar indevidamente o step;
- repetição do mesmo evento deve ser evitada por constraints/idempotency em nível de evento ou ciclo.

Sugestões de idempotência:

- `reno_cases`: `UNIQUE(client_id)` na Fase 1;
- `reno_first_contacts`: `UNIQUE(case_id)` e `UNIQUE(idempotency_key)` quando não nulo;
- `reno_repescagem_cycles`: um ciclo ativo por `case_id` quando `stopped_at IS NULL`;
- `reno_resgate_cycles`: um ciclo ativo por `case_id` quando `stopped_at IS NULL`, e avaliar uniqueness por `case_id + source_outbound_at + source_outbound_type`;
- `reno_agendamento_cycles`: `UNIQUE(appointment_id)` na Fase 1;
- `reno_events`: `UNIQUE(idempotency_key)` quando não nulo;
- eventos de WhatsApp devem preservar `whatsapp_message_id`/`external_event_id` quando existir;
- eventos de backfill devem usar idempotência explícita, por exemplo `backfill:{event_type}:{client_id}:{source_timestamp}`.

## 12. Views e KPIs

As tabelas estruturadas devem alimentar views analíticas e views de divergência.

### 12.1 `v_reno_funnel_current`

Responde:

- quantos casos estão em cada estágio;
- quantos abriram, responderam, agendaram, visitaram, arquivaram;
- aging por estágio;
- casos sem próximo passo.

Base:

- `reno_cases`;
- `clientes`.

### 12.2 `v_reno_first_contact_kpis`

Responde:

- elegíveis;
- enviados;
- falhas;
- pulados por fora de escopo;
- resposta após primeiro contato;
- tempo até primeira resposta;
- taxa contra meta de 25%.

Base:

- `reno_first_contacts`;
- `reno_events`;
- `reno_cases`.

### 12.3 `v_reno_repescagem_kpis`

Responde:

- ciclos iniciados;
- mensagens enviadas por step;
- respostas por step;
- encerramentos por `max_steps`;
- falhas WhatsApp;
- taxa contra meta de 50% dos enviados.

Base:

- `reno_repescagem_cycles`;
- `reno_events`.

### 12.4 `v_reno_resgate_kpis`

Responde:

- ciclos armados;
- enviados por step/context bucket;
- respostas;
- `awaiting_normal_outbound`;
- revisão manual;
- max steps;
- taxa contra meta de 50% dos enviados.

Base:

- `reno_resgate_cycles`;
- `reno_events`.

### 12.5 `v_reno_agendamento_kpis`

Responde:

- visitas agendadas;
- lembretes enviados;
- confirmações enviadas;
- confirmadas;
- remarcadas;
- canceladas;
- realizadas;
- no-show;
- taxa contra meta de 100% confirmação/realização, separando confirmação de comparecimento real.

Base obrigatória:

- `reno_agendamento_cycles`;
- `clientes_agendamentos`;
- `reno_events`.

### 12.6 `v_reno_queue_health`

Responde:

- ciclos ativos vencidos;
- ciclos sem `next_run_at`;
- claims expirados;
- divergências com `meta_data` durante transição;
- candidatos bloqueados por status incompatível;
- branch nova sem ciclo estruturado.

Base:

- ciclos Reno;
- `clientes`;
- `clientes.meta_data` durante transição.

### 12.7 Views de divergência obrigatórias na transição

Criar desde a Fase 1:

- `v_reno_meta_data_vs_structured_divergence`;
- `v_reno_missing_case_from_meta_data`;
- `v_reno_missing_cycle_from_meta_data`;
- `v_reno_cycle_without_matching_meta_data`;
- `v_reno_active_cycle_status_mismatch`;
- `v_reno_agendamento_without_active_appointment`;
- `v_reno_events_without_case`;
- `v_reno_first_contact_without_event`.

Essas views são fundamentais para provar consistência antes de migrar leitura primária.

## 13. Backfill inicial

O backfill deve ser read-only em termos de comportamento operacional: ele preenche tabelas novas, mas não envia WhatsApp e não altera status.

Fontes do backfill:

- `clientes`;
- `clientes.meta_data.reno_first_contact`;
- `clientes.meta_data.reno_followup.repescagem`;
- `clientes.meta_data.reno_followup.resgate`;
- `clientes.meta_data.reno_followup.agendamento`;
- `clientes_agendamentos`;
- notas CRM apenas se necessário para marcos específicos e com cautela.

Prioridade do backfill:

1. criar `reno_cases` para clientes Reno conhecidos;
2. criar `reno_first_contacts` para quem tem `reno_first_contact`;
3. criar ciclos de Repescagem/Resgate/Agendamento a partir de `meta_data.reno_followup`;
4. criar eventos sintéticos com `source='backfill'` para marcos conhecidos;
5. não inventar eventos sem evidência.

Eventos de backfill devem ser claramente marcados:

- `source='backfill'`;
- `created_by_runtime='backfill_script'`;
- `metadata.inferred=true` quando o timestamp ou outcome foi inferido;
- `idempotency_key` própria para evitar duplicidade em reprocessamento.

Backfill não deve fazer:

- envio de WhatsApp;
- alteração de status;
- criação de visita;
- criação de nota CRM operacional;
- correção automática de divergência sem regra aprovada.

## 14. Migração de runtime

### Fase 1 — Schema e backfill

- Criar tabelas e índices.
- Fazer backfill controlado.
- Criar views de KPI e divergência.
- Não mudar workers ainda.

### Fase 2 — Escrita dupla

- Manter `meta_data` como hoje.
- Toda ação nova do Reno grava também nas tabelas `reno_%`.
- `reno_events` passa a receber eventos reais novos.
- Dashboards podem começar a comparar JSON versus estrutura.

### Fase 3 — Leitura dupla

- Workers passam a consultar tabelas novas, mas validam contra `meta_data`.
- Divergências são registradas em view/auditoria, não corrigidas automaticamente sem regra.
- O objetivo é provar consistência antes da virada.

### Fase 4 — Tabelas Reno como fonte primária

- Workers leem primariamente dos ciclos estruturados.
- `meta_data` vira fallback/compatibilidade.
- KPIs oficiais passam a sair das views sobre `reno_%`.

### Fase 5 — Redução gradual do JSON

- Remover dependências diretas de `meta_data` nos workers quando seguro.
- Manter apenas campos auxiliares ou payloads ainda sem modelo.
- Documentar qualquer campo JSON remanescente.

## 15. Índices e constraints sugeridos

A definição exata deve ser feita na migration, mas o desenho recomenda:

### `reno_cases`

- índice único em `client_id` para Fase 1;
- índice em `broker_id`, `current_stage`, `current_outcome`;
- índice em `is_active`;
- índice em `latest_event_at`.

### `reno_first_contacts`

- índice único em `case_id`;
- índice único em `idempotency_key` quando não nulo;
- índice em `client_id`;
- índice em `trigger_source`, `trigger_event_id`;
- índice em `send_status`, `outcome`, `sent_at`, `first_response_at`.

### `reno_repescagem_cycles`

- índice em `enabled`, `cycle_state`, `next_run_at`, `stopped_at`;
- índice em `client_id`;
- índice em `current_step`, `stopped_reason`, `stopped_detail`;
- constraint para step dentro de faixa esperada;
- constraint parcial para no máximo um ciclo ativo por caso quando aplicável.

### `reno_resgate_cycles`

- índice em `enabled`, `cycle_state`, `next_run_at`, `stopped_at`;
- índice em `source_outbound_at`;
- índice em `last_context_bucket`;
- índice em `stopped_reason`, `stopped_detail`;
- constraint parcial para no máximo um ciclo ativo por caso quando aplicável.

### `reno_agendamento_cycles`

- índice único em `appointment_id` na Fase 1;
- índice em `enabled`, `cycle_state`, `next_run_at`, `stopped_at`;
- índice em `appointment_scheduled_at`;
- índice em `appointment_status_snapshot`;
- índice em `stopped_reason`, `stopped_detail`.

### `reno_events`

- índice único em `idempotency_key` quando não nulo;
- índice em `client_id`, `occurred_at`;
- índice em `case_id`, `occurred_at`;
- índice em `event_type`, `occurred_at`;
- índice em `flow`, `step`, `occurred_at`;
- índice em `first_contact_id`;
- índice em `repescagem_cycle_id`;
- índice em `resgate_cycle_id`;
- índice em `agendamento_cycle_id`;
- índice em `appointment_id`;
- índice em `source`;
- índice em `created_by_runtime`.

## 16. Uso de enums versus `TEXT + CHECK`

Recomendação inicial: usar `TEXT + CHECK` em vez de enums PostgreSQL.

Motivo:

- o modelo ainda está amadurecendo;
- os fluxos Reno mudam com aprendizado operacional;
- `TEXT + CHECK` permite governança e validação sem rigidez excessiva;
- enum PostgreSQL pode dificultar evolução rápida.

Quando o domínio estabilizar, pode-se avaliar enums ou tabelas de domínio.

## 17. Riscos e mitigação

### 17.1 Risco: tabela nova virar outro `meta_data`

Mitigação:

- colunas tipadas para campos de KPI;
- `metadata` apenas para exceções;
- eventos obrigatórios para mudanças mensuráveis;
- revisão periódica de chaves recorrentes em `metadata`.

### 17.2 Risco: divergência entre JSON e tabelas novas

Mitigação:

- escrita dupla;
- views de divergência;
- fase de leitura dupla antes da virada;
- backfill marcado com `source='backfill'`;
- critérios claros de reconciliação.

### 17.3 Risco: worker antigo continuar usando prompt compilado

Mitigação:

- atualizar cron jobs deliberadamente depois da aprovação;
- versionar prompt/runtime;
- auditar outputs depois da troca;
- lembrar que jobs atuais podem ter `skills=[]` e não absorvem mudanças de skill automaticamente.

### 17.4 Risco: eventos incompletos gerarem KPI falso

Mitigação:

- definir lista mínima de eventos obrigatórios;
- validar views contra amostras do CRM;
- não tratar ausência de evento como ausência de acontecimento durante a fase de backfill;
- exigir evento para toda mudança operacional nova após escrita dupla.

### 17.5 Risco: envio duplicado

Mitigação:

- claim/lock por ciclo;
- idempotência por evento/step;
- validação contra status atual do cliente;
- validação contra `last_sent_at` e `current_step`;
- no máximo um envio por execução de worker quando a skill do fluxo exigir.

### 17.6 Risco: Agendamento medir comunicação e não visita real

Mitigação:

- `clientes_agendamentos` segue como fonte operacional da visita;
- views de Agendamento sempre cruzam appointment real;
- snapshots de appointment servem para auditoria, não substituição;
- ciclo Reno encerrado quando appointment deixa de ser elegível.

## 18. Perguntas ainda abertas antes da migration

Antes de implementar, decidir:

1. A lista final de `event_type` da Fase 1.
2. A lista final de `current_stage` e `current_outcome`.
3. A lista final de `cycle_state` e sua tradução para cada fluxo.
4. A lista canônica inicial de `stopped_reason` e política para `stopped_detail`.
5. Se `reno_cases.client_id` será único permanentemente ou apenas Fase 1.
6. O backfill deve criar eventos sintéticos para todos os estados atuais ou apenas para marcos principais?
7. As views de KPI e divergência entram na mesma migration das tabelas ou em migration separada?
8. Os workers vão primeiro fazer escrita dupla lendo `meta_data` ou já vão ler das tabelas novas em modo comparação?
9. Como tratar dados de `validated_jid` com segurança: hash, sufixo mascarado ou referência indireta?
10. Qual política de retenção para `error_message_sanitized` e `metadata`?

Decisão já fechada nesta revisão:

- `reno_events` deve usar colunas específicas opcionais (`first_contact_id`, `repescagem_cycle_id`, `resgate_cycle_id`, `agendamento_cycle_id`) em vez de `cycle_id + cycle_table`.

## 19. Critérios de aceite da Fase 1

A Fase 1 estará correta quando:

- tabelas existirem sem quebrar fluxo atual;
- backfill preencher casos e ciclos conhecidos;
- nenhum WhatsApp for enviado pelo backfill;
- nenhum status for alterado pelo backfill;
- views básicas retornarem números coerentes com `meta_data` atual;
- views de divergência estiverem criadas e consultáveis;
- divergências forem visíveis e auditáveis;
- `clientes.meta_data` continuar funcionando como compatibilidade;
- `reno_events` conseguir registrar pelo menos eventos de backfill e eventos novos na escrita dupla;
- o desenho permitir KPIs de primeiro contato, Repescagem, Resgate, Agendamento e funil.

## 20. Critérios de aceite da migração completa

A migração completa estará madura quando:

- workers de primeiro contato/follow-up/agendamento lerem primariamente das tabelas estruturadas;
- toda ação nova gerar evento estruturado;
- dashboards não dependerem de parse direto de `clientes.meta_data`;
- `meta_data` for apenas compatibilidade/fallback;
- houver auditoria de divergência baixa ou nula por período definido;
- KPIs de Renato forem calculáveis diretamente:
  - 25% resposta no primeiro contato em `Sem Atendimento`;
  - 50% resposta em Repescagem sobre enviados;
  - 50% resposta em Resgate sobre enviados;
  - 10% agendamento após qualificação/conversa;
  - acompanhamento de confirmação/realização em Agendamento.

## 21. Próximo passo recomendado

Se Renato aprovar este design revisado, o próximo passo não é ainda mudar produção diretamente. O próximo passo recomendado é criar uma especificação técnica de implementação contendo:

1. SQL/migration proposta;
2. alterações em `shared/schema.ts`;
3. script de backfill;
4. queries de validação;
5. views de KPI e divergência;
6. plano de escrita dupla;
7. plano de atualização dos cron jobs;
8. plano de rollback;
9. checklist de verificação pós-deploy.

Depois disso, a implementação deve seguir em etapas pequenas e verificáveis.

## 22. Resumo executivo

O desenho recomendado é criar tabelas específicas por ciclo operacional do Reno:

- `reno_cases` para o caso/funil atual;
- `reno_first_contacts` para abertura e KPI de primeiro contato;
- `reno_repescagem_cycles` para Repescagem;
- `reno_resgate_cycles` para Resgate;
- `reno_agendamento_cycles` para acompanhamento de comunicação sobre visita;
- `reno_events` para histórico append-only e KPI auditável.

Não criar na Fase 1:

- `reno_message_attempts`;
- `reno_followup_states`;
- `reno_qualifications`.

Correções consolidadas nesta revisão:

- `cycle_state` obrigatório nos ciclos;
- `stopped_reason` canônico separado de `stopped_detail`;
- idempotência explícita por tabela;
- `reno_events` com FKs opcionais tipadas, não FK polimórfica;
- Agendamento sempre cruzado com `clientes_agendamentos`;
- views de divergência obrigatórias na transição;
- runtime/cronjobs tratados como fase separada, porque jobs atuais não absorvem automaticamente mudanças de skill/runbook.

`clientes.meta_data` permanece como compatibilidade durante a transição. O alvo é que as tabelas `reno_%` sejam alimentadas pelo Reno em tempo real operacional e passem a alimentar os workers depois de escrita dupla, leitura dupla e validação de consistência.
