---
schema_version: 1
type: runbook
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
procedure_owner: reno
trigger: >-
  Aprovação de Renato para documentar o desenho completo da camada estruturada
  Reno no FamaChat, mantendo clientes.meta_data como compatibilidade e movendo
  KPIs para tabelas específicas.
---
# Reno — Design de Dados Operacionais Estruturados no FamaChat

## Links canônicos

- Hub Reno: [[reno-hub]]
- Schema do vault: [[schema]]
- Operação CRM/Webhook: [[reno-operacao-crm-webhook]]

## Status do documento

- **Status:** draft para revisão do Renato antes de implementação.
- **Data:** 2026-05-19.
- **Escopo:** desenho de dados e runtime para o Reno no FamaChat.
- **Não é implementação:** este documento não cria tabela, não altera worker, não altera CRM, não envia WhatsApp e não muda comportamento produtivo por si só.

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
- não dá contrato claro para workers, dashboards e governança.

A direção aprovada é manter `clientes.meta_data` como compatibilidade e criar uma camada Reno estruturada incremental.

## 2. Objetivo do desenho

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

## 3. Não objetivos

Fora do escopo da Fase 1:

- substituir imediatamente `clientes.meta_data`;
- criar tabela própria de qualificação comercial completa;
- duplicar notas CRM ou documentos do vault;
- substituir `clientes_agendamentos` como fonte operacional de visitas;
- guardar transcrição completa de WhatsApp;
- criar uma tabela técnica separada de mensagens outbound neste momento;
- mudar workers produtivos sem uma fase de escrita dupla e validação.

## 4. Decisões de design já alinhadas

### 4.1 Manter `clientes.meta_data`

`clientes.meta_data` permanece como:

- camada de compatibilidade;
- cache/fallback durante transição;
- espaço para dados auxiliares ainda não modelados;
- ponte para workers atuais até migração controlada.

Ele deixa de ser a fonte principal de KPI quando as tabelas estruturadas estiverem alimentadas e validadas.

### 4.2 Criar tabelas específicas por ciclo operacional

A estrutura deve refletir os fluxos reais do Reno. Quando um fluxo tem regra própria, etapas próprias, stop reasons próprios e KPI próprio, ele merece tabela própria.

Por isso, o desenho recomendado é:

- `reno_cases`;
- `reno_first_contacts`;
- `reno_repescagem_cycles`;
- `reno_resgate_cycles`;
- `reno_agendamento_cycles`;
- `reno_events`.

### 4.3 Não criar `reno_message_attempts` agora

A tabela `reno_message_attempts` foi considerada, mas removida da Fase 1 por decisão de desenho.

Motivo: neste momento, a prioridade é funil, estado, outcomes e KPIs comerciais. Uma tabela técnica de mensagens pode ser criada depois, se houver necessidade de auditar múltiplas tentativas por step, delivery status detalhado, retries técnicos ou comparação entre provedores.

Na Fase 1, os dados mínimos de envio ficam nos ciclos específicos e nos eventos.

### 4.4 Não criar `reno_qualifications`

A qualificação comercial segue em:

- notas do FamaChat;
- documentos curados no vault;
- histórico de conversa quando necessário.

No banco estruturado entram apenas marcos mensuráveis e referências, por exemplo:

- `client_replied`;
- `qualification_note_recorded`;
- `visit_invited`;
- `appointment_created`;
- `case_outcome_set`;
- `crm_note_id`;
- `vault_path`.

## 5. Fontes de verdade por decisão

### 5.1 Cadastro e status operacional do cliente

Fonte primária:

- `clientes`.

Campos principais:

- `clientes.id`;
- `clientes.status`;
- `clientes.broker_id`;
- dados de contato e perfil cadastral.

### 5.2 Visitas e agenda

Fonte primária:

- `clientes_agendamentos`.

As tabelas Reno não substituem a agenda. Elas apenas referenciam `appointment_id` e registram eventos/outcomes relacionados ao ciclo de agendamento.

### 5.3 Narrativa, diagnóstico e contexto qualitativo

Fontes principais:

- notas CRM;
- vault Obsidian;
- documentos curados Reno.

As tabelas estruturadas guardam referências e marcos, não o texto completo do diagnóstico.

### 5.4 Estado operacional do Reno

Fonte alvo:

- `reno_cases` para resumo do caso;
- tabelas de ciclo para estado atual por fluxo;
- `reno_events` para histórico auditável.

### 5.5 Compatibilidade durante transição

Fonte auxiliar:

- `clientes.meta_data`.

## 6. Modelo proposto

## 6.1 `reno_cases`

### Propósito

Tabela central do caso Reno. Deve existir uma linha por cliente atendido ou avaliado pelo Reno.

Ela responde:

- o cliente pertence ao escopo Reno?
- em qual estágio está?
- já recebeu primeiro contato?
- já respondeu?
- há visita/agendamento associado?
- qual é o outcome atual?
- quando foi a última mudança relevante?

### Cardinalidade

- 1 cliente pode ter 0 ou 1 caso Reno ativo.
- Chave sugerida: `client_id` único para o escopo atual.
- Se no futuro houver múltiplos casos por cliente, o modelo pode evoluir para permitir reabertura/versionamento, mas a Fase 1 deve privilegiar simplicidade.

### Campos sugeridos

- `id`;
- `client_id`;
- `broker_id`;
- `opened_at`;
- `closed_at`;
- `current_stage`;
- `current_outcome`;
- `current_status_snapshot`;
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

### Observações

`reno_cases` não deve virar histórico. Histórico entra em `reno_events`. Essa tabela é a foto atual do caso.

## 6.2 `reno_first_contacts`

### Propósito

Registrar o ciclo específico do primeiro contato Reno.

O primeiro contato tem regra própria:

- nasce de `cliente.created`;
- exige validação no CRM;
- exige escopo mínimo do Reno (`broker_id=35` no desenho atual);
- exige tentativa WhatsApp;
- pode mudar `Sem Atendimento` para `Não Respondeu`;
- inicializa Repescagem quando enviado;
- mede KPI próprio de resposta inicial.

### Cardinalidade

- 1 caso Reno deve ter no máximo 1 primeiro contato válido na Fase 1.
- Tentativas técnicas múltiplas ficam representadas como eventos associados, não como tabela de mensagens separada.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
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
- `phone_variant_used`;
- `validated_jid_hash` ou referência segura equivalente;
- `validation_method`;
- `error_code`;
- `error_message_sanitized`;
- `crm_note_id`;
- `vault_path`;
- `created_at`;
- `updated_at`.

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

### Eventos obrigatórios relacionados

- `first_contact_evaluated`;
- `first_contact_sent`;
- `first_contact_failed`;
- `first_contact_skipped`;
- `client_replied`;
- `status_changed` quando houver transição.

## 6.3 `reno_repescagem_cycles`

### Propósito

Representar o estado e resultado da Repescagem.

Repescagem é a régua para clientes em `Não Respondeu` após primeiro contato, com objetivo de gerar resposta e, no limite, encerrar/arquivar conforme política.

### Cardinalidade

- 1 caso pode ter 0 ou mais ciclos de Repescagem ao longo do tempo.
- Na Fase 1, pode-se começar com 1 ciclo ativo por caso.
- Chave operacional sugerida para ciclo ativo: `case_id` + `active=true`, ou controle por `stopped_at IS NULL`.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `started_at`;
- `enabled`;
- `current_step`;
- `max_steps`;
- `next_run_at`;
- `last_sent_at`;
- `last_send_status`;
- `last_whatsapp_message_id`;
- `last_external_event_id`;
- `last_error_code`;
- `last_error_message_sanitized`;
- `stopped_at`;
- `stopped_reason`;
- `archived_at`;
- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `created_at`;
- `updated_at`.

### Valores sugeridos para `stopped_reason`

- `client_replied`;
- `max_steps`;
- `whatsapp_send_failed`;
- `manual_review`;
- `status_changed`;
- `out_of_scope`;
- `disabled_by_policy`.

### Eventos obrigatórios relacionados

- `repescagem_started`;
- `repescagem_step_sent`;
- `repescagem_step_failed`;
- `repescagem_stopped`;
- `client_replied`;
- `case_archived` quando aplicável.

## 6.4 `reno_resgate_cycles`

### Propósito

Representar o estado e resultado do Resgate.

Resgate é diferente de Repescagem. Ele atua em clientes em `Em Atendimento`, normalmente após outbound normal do Reno sem resposta posterior, preservando contexto e evitando abordagem genérica.

### Cardinalidade

- 1 caso pode ter 0 ou mais ciclos de Resgate.
- Cada ciclo deve preservar o outbound/contexto que armou o resgate.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `source_outbound_at`;
- `source_outbound_type`;
- `armed_at`;
- `last_context_bucket`;
- `enabled`;
- `current_step`;
- `max_steps`;
- `next_run_at`;
- `last_sent_at`;
- `last_send_status`;
- `last_whatsapp_message_id`;
- `last_external_event_id`;
- `last_error_code`;
- `last_error_message_sanitized`;
- `stopped_at`;
- `stopped_reason`;
- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `created_at`;
- `updated_at`.

### Valores sugeridos para `stopped_reason`

- `client_replied`;
- `awaiting_normal_outbound`;
- `manual_review_duplicate_active_broker`;
- `max_steps`;
- `whatsapp_send_failed`;
- `status_changed`;
- `appointment_active`;
- `disabled_by_policy`.

### Eventos obrigatórios relacionados

- `resgate_armed`;
- `resgate_step_sent`;
- `resgate_step_failed`;
- `resgate_stopped`;
- `client_replied`;
- `normal_outbound_sent`.

## 6.5 `reno_agendamento_cycles`

### Propósito

Representar o acompanhamento proativo de visita/agendamento pelo Reno.

Essa tabela não substitui `clientes_agendamentos`. Ela referencia o appointment real e registra o estado do ciclo de lembrete/confirmação.

### Cardinalidade

- 1 appointment pode ter 0 ou 1 ciclo Reno de agendamento ativo.
- 1 caso pode ter vários ciclos de agendamento ao longo do tempo se houver remarcação ou novas visitas.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `appointment_id`;
- `appointment_scheduled_at`;
- `enabled`;
- `current_step`;
- `next_run_at`;
- `last_sent_at`;
- `last_message_type`;
- `reminder_sent_at`;
- `confirmation_sent_at`;
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
- `stopped_at`;
- `stopped_reason`;
- `claim_token`;
- `claimed_at`;
- `claim_expires_at`;
- `created_at`;
- `updated_at`.

### Valores sugeridos para `last_message_type`

- `lembrete_visita`;
- `confirmacao_visita`;
- `remarcacao_probe`.

### Valores sugeridos para `stopped_reason`

- `confirmacao_visita_enviada`;
- `cliente_cancelou_visita_remarcacao_pendente`;
- `appointment_cancelled`;
- `appointment_rescheduled`;
- `appointment_completed`;
- `no_show`;
- `whatsapp_send_failed`;
- `disabled_by_policy`.

### Eventos obrigatórios relacionados

- `agendamento_started`;
- `agendamento_reminder_sent`;
- `agendamento_confirmation_sent`;
- `agendamento_send_failed`;
- `appointment_confirmed`;
- `appointment_cancelled`;
- `appointment_rescheduled`;
- `visit_completed`;
- `visit_no_show`;
- `agendamento_stopped`.

## 6.6 `reno_events`

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
- Resgate parou por resposta, max steps ou revisão manual;
- visita foi criada, remarcada, cancelada, confirmada, realizada ou no-show;
- registro de qualificação foi feito em nota/vault;
- caso foi arquivado ou encerrado.

### Campos sugeridos

- `id`;
- `case_id`;
- `client_id`;
- `event_type`;
- `flow`;
- `cycle_id`;
- `cycle_table`;
- `step`;
- `occurred_at`;
- `source`;
- `actor`;
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

`metadata` deve existir para exceções e extensibilidade, mas não deve substituir colunas importantes. KPI recorrente precisa estar em coluna tipada.

## 7. Relação entre tabelas

Relações esperadas:

- `reno_cases.client_id` referencia `clientes.id`.
- `reno_first_contacts.case_id` referencia `reno_cases.id`.
- `reno_repescagem_cycles.case_id` referencia `reno_cases.id`.
- `reno_resgate_cycles.case_id` referencia `reno_cases.id`.
- `reno_agendamento_cycles.case_id` referencia `reno_cases.id`.
- `reno_agendamento_cycles.appointment_id` referencia `clientes_agendamentos.id`.
- `reno_events.case_id` referencia `reno_cases.id`.
- `reno_events.client_id` referencia `clientes.id`.
- `reno_events.appointment_id` referencia `clientes_agendamentos.id` quando aplicável.

`reno_events.cycle_id` + `cycle_table` pode apontar para o ciclo específico sem exigir uma foreign key polimórfica rígida na primeira versão. Alternativamente, pode-se criar colunas opcionais separadas:

- `first_contact_id`;
- `repescagem_cycle_id`;
- `resgate_cycle_id`;
- `agendamento_cycle_id`.

A opção com colunas separadas é mais tipada. A opção `cycle_id` + `cycle_table` é mais flexível. Para a Fase 1, a recomendação é discutir essa decisão antes da migration.

## 8. Fluxos de escrita em tempo real operacional

## 8.1 Primeiro contato enviado

Quando o Reno envia primeiro contato com sucesso:

1. valida CRM e escopo;
2. cria/atualiza `reno_cases`;
3. cria/atualiza `reno_first_contacts`;
4. registra `reno_events.first_contact_sent`;
5. se status ainda for `Sem Atendimento`, altera para `Não Respondeu`;
6. registra `reno_events.status_changed` se houve transição;
7. inicializa `reno_repescagem_cycles`;
8. durante transição, mantém `clientes.meta_data.reno_first_contact` e `clientes.meta_data.reno_followup.repescagem`.

## 8.2 Primeiro contato falhou

Quando o WhatsApp não é enviado:

1. registra falha em `reno_first_contacts`;
2. registra `reno_events.first_contact_failed`;
3. registra nota CRM objetiva quando aplicável;
4. não avança status;
5. durante transição, preserva evidência mínima em `meta_data` se a rotina atual já fizer isso.

## 8.3 Cliente respondeu

Quando o cliente responde pela primeira vez:

1. atualiza `reno_cases.first_response_at`;
2. muda `reno_cases.current_stage` para `in_conversation`;
3. registra `reno_events.client_replied`;
4. encerra Repescagem ativa com `stopped_reason='client_replied'`;
5. encerra ou pausa Resgate ativo, se aplicável;
6. se status ainda for `Não Respondeu`, altera para `Em Atendimento`;
7. registra `status_changed`, se houve mudança;
8. registra nota CRM e/ou vault conforme regra operacional.

## 8.4 Repescagem envia step

Quando o worker de Repescagem envia uma mensagem:

1. seleciona ciclo due;
2. valida `clientes.broker_id=35` e `clientes.status='Não Respondeu'`;
3. aplica claim/lock do ciclo;
4. envia WhatsApp;
5. atualiza `current_step`, `last_sent_at`, `next_run_at`, status de envio e evidência;
6. registra `reno_events.repescagem_step_sent` ou `repescagem_step_failed`;
7. se chegou ao fim, registra `repescagem_stopped` e outcome correspondente.

## 8.5 Resgate é armado

Quando um outbound normal do Reno fica sem resposta e vira candidato a resgate:

1. cria ciclo em `reno_resgate_cycles`;
2. registra `source_outbound_at`, `source_outbound_type` e `last_context_bucket`;
3. agenda `next_run_at`;
4. registra `reno_events.resgate_armed`.

## 8.6 Resgate envia step

Quando o worker de Resgate envia uma mensagem:

1. seleciona ciclo due;
2. valida `clientes.broker_id=35` e `clientes.status='Em Atendimento'`;
3. verifica contexto e ausência de resposta posterior;
4. envia WhatsApp;
5. atualiza ciclo;
6. registra evento de envio, falha ou parada.

## 8.7 Visita/agendamento criado

Quando uma visita é criada no FamaChat:

1. `clientes_agendamentos` recebe o appointment real;
2. `reno_cases.latest_appointment_id` é atualizado;
3. `reno_cases.current_stage` muda para `scheduled` quando aplicável;
4. cria `reno_agendamento_cycles` referenciando o appointment;
5. registra `reno_events.appointment_created`;
6. se status ainda for `Em Atendimento`, muda para `Agendamento` conforme regra operacional.

## 8.8 Agendamento envia lembrete/confirmação

Quando o worker de Agendamento envia lembrete ou confirmação:

1. seleciona ciclo due;
2. valida appointment real, futuro e ativo em `clientes_agendamentos`;
3. envia WhatsApp;
4. atualiza `reminder_sent_at` ou `confirmation_sent_at`;
5. registra evento;
6. encerra ciclo quando a confirmação final for enviada ou quando a visita deixar de ser elegível.

## 9. Leitura pelos workers

## 9.1 Estado atual

Hoje, os workers leem principalmente `clientes.meta_data.reno_followup`. No modelo alvo, eles passam a ler:

- Repescagem: `reno_repescagem_cycles`;
- Resgate: `reno_resgate_cycles`;
- Agendamento: `reno_agendamento_cycles` + `clientes_agendamentos`.

## 9.2 Validação obrigatória contra `clientes`

Mesmo lendo tabelas Reno, os workers devem validar no momento da execução:

- cliente existe;
- `broker_id` ainda é do Reno;
- status atual ainda é compatível com o fluxo;
- appointment ainda existe e está futuro/ativo no caso de Agendamento;
- não há stop reason ou encerramento recente.

## 9.3 Transição segura

Durante migração, os workers devem operar em etapas:

1. ler do `meta_data` e escrever também nas tabelas novas;
2. ler das tabelas novas, mas comparar com `meta_data`;
3. usar tabelas novas como fonte primária;
4. manter `meta_data` apenas como fallback e compatibilidade.

## 10. Idempotência, claim e concorrência

Campos de claim nos ciclos são necessários para evitar processamento duplicado:

- `claim_token`;
- `claimed_at`;
- `claim_expires_at`.

Regras:

- um worker deve claimar apenas um candidato por execução quando o fluxo exigir essa segurança;
- claims expirados podem ser liberados;
- envio só deve ser considerado concluído depois de evidência mínima de sucesso;
- falha deve ser registrada sem avançar indevidamente o step;
- repetição do mesmo evento deve ser evitada por constraints/idempotency em nível de evento ou ciclo.

Sugestões de idempotência:

- `reno_first_contacts`: único por `case_id`;
- ciclo ativo: constraint parcial por `case_id` quando `stopped_at IS NULL`, se fizer sentido para cada fluxo;
- `reno_events`: chave idempotente opcional baseada em `client_id`, `event_type`, `flow`, `step`, `occurred_at` truncado ou `external_event_id` quando disponível;
- eventos de WhatsApp devem preservar `whatsapp_message_id`/`external_event_id` quando existir.

## 11. Views e KPIs

As tabelas estruturadas devem alimentar views analíticas. Views sugeridas:

### 11.1 `v_reno_funnel_current`

Responde:

- quantos casos estão em cada estágio;
- quantos abriram, responderam, agendaram, visitaram, arquivaram;
- aging por estágio;
- casos sem próximo passo.

Base:

- `reno_cases`;
- `clientes`.

### 11.2 `v_reno_first_contact_kpis`

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

### 11.3 `v_reno_repescagem_kpis`

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

### 11.4 `v_reno_resgate_kpis`

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

### 11.5 `v_reno_agendamento_kpis`

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

Base:

- `reno_agendamento_cycles`;
- `clientes_agendamentos`;
- `reno_events`.

### 11.6 `v_reno_queue_health`

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

## 12. Backfill inicial

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

Eventos de backfill devem ser claramente marcados como `source='backfill'` para não confundir evento real capturado em tempo real com reconstrução posterior.

## 13. Migração de runtime

### Fase 1 — Schema e backfill

- Criar tabelas e índices.
- Fazer backfill controlado.
- Criar views de diagnóstico.
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

## 14. Índices e constraints sugeridos

A definição exata deve ser feita na migration, mas o desenho recomenda:

### `reno_cases`

- índice único em `client_id` para Fase 1;
- índice em `broker_id`, `current_stage`, `current_outcome`;
- índice em `latest_event_at`.

### `reno_first_contacts`

- índice único em `case_id`;
- índice em `client_id`;
- índice em `send_status`, `outcome`, `sent_at`, `first_response_at`.

### `reno_repescagem_cycles`

- índice em `enabled`, `next_run_at`, `stopped_at`;
- índice em `client_id`;
- índice em `current_step`, `stopped_reason`;
- constraint para step dentro de faixa esperada.

### `reno_resgate_cycles`

- índice em `enabled`, `next_run_at`, `stopped_at`;
- índice em `source_outbound_at`;
- índice em `last_context_bucket`;
- índice em `stopped_reason`.

### `reno_agendamento_cycles`

- índice em `appointment_id`;
- índice em `enabled`, `next_run_at`, `stopped_at`;
- índice em `appointment_scheduled_at`;
- índice em `stopped_reason`.

### `reno_events`

- índice em `client_id`, `occurred_at`;
- índice em `case_id`, `occurred_at`;
- índice em `event_type`, `occurred_at`;
- índice em `flow`, `step`, `occurred_at`;
- índice em `appointment_id`;
- índice em `source`.

## 15. Uso de enums versus `TEXT + CHECK`

Recomendação inicial: usar `TEXT + CHECK` em vez de enums PostgreSQL.

Motivo:

- o modelo ainda está amadurecendo;
- os fluxos Reno mudam com aprendizado operacional;
- `TEXT + CHECK` permite governança e validação sem rigidez excessiva;
- enum PostgreSQL pode dificultar evolução rápida.

Quando o domínio estabilizar, pode-se avaliar enums ou tabelas de domínio.

## 16. Riscos e mitigação

### 16.1 Risco: tabela nova virar outro `meta_data`

Mitigação:

- colunas tipadas para campos de KPI;
- `metadata` apenas para exceções;
- eventos obrigatórios para mudanças mensuráveis.

### 16.2 Risco: divergência entre JSON e tabelas novas

Mitigação:

- escrita dupla;
- views de divergência;
- fase de leitura dupla antes da virada;
- backfill marcado com `source='backfill'`.

### 16.3 Risco: worker antigo continuar usando prompt compilado

Mitigação:

- atualizar cron jobs deliberadamente depois da aprovação;
- versionar prompt/runtime;
- auditar outputs depois da troca;
- lembrar que jobs atuais podem ter `skills=[]` e não absorvem mudanças de skill automaticamente.

### 16.4 Risco: eventos incompletos gerarem KPI falso

Mitigação:

- definir lista mínima de eventos obrigatórios;
- validar views contra amostras do CRM;
- não tratar ausência de evento como ausência de acontecimento durante a fase de backfill.

### 16.5 Risco: envio duplicado

Mitigação:

- claim/lock por ciclo;
- idempotência por evento/step;
- validação contra status atual do cliente;
- validação contra `last_sent_at` e `current_step`.

## 17. Perguntas ainda abertas antes da migration

Antes de implementar, decidir:

1. `reno_events` deve referenciar ciclos por `cycle_id + cycle_table` ou por colunas específicas opcionais (`repescagem_cycle_id`, `resgate_cycle_id`, etc.)?
2. `reno_cases.client_id` será único permanentemente ou só na Fase 1?
3. Qual lista final de valores `current_stage`, `current_outcome`, `event_type` e `stopped_reason` será aceita na primeira migration?
4. O backfill deve criar eventos sintéticos para todos os estados atuais ou apenas para marcos principais?
5. As views de KPI entram na mesma migration das tabelas ou em migration separada?
6. Os workers vão primeiro fazer escrita dupla lendo `meta_data` ou já vão ler das tabelas novas em modo comparação?
7. Como tratar dados de `validated_jid` com segurança: hash, sufixo mascarado ou referência indireta?
8. Qual política de retenção para `error_message_sanitized` e `metadata`?

## 18. Critérios de aceite da Fase 1

A Fase 1 estará correta quando:

- tabelas existirem sem quebrar fluxo atual;
- backfill preencher casos e ciclos conhecidos;
- nenhum WhatsApp for enviado pelo backfill;
- nenhum status for alterado pelo backfill;
- views básicas retornarem números coerentes com `meta_data` atual;
- divergências forem visíveis e auditáveis;
- `clientes.meta_data` continuar funcionando como compatibilidade;
- `reno_events` conseguir registrar pelo menos eventos de backfill e eventos novos na escrita dupla;
- o desenho permitir KPIs de primeiro contato, Repescagem, Resgate, Agendamento e funil.

## 19. Critérios de aceite da migração completa

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

## 20. Próximo passo recomendado

Se Renato aprovar este design, o próximo passo não é ainda mudar produção diretamente. O próximo passo recomendado é criar uma especificação técnica de implementação contendo:

1. SQL/migration proposta;
2. alterações em `shared/schema.ts`;
3. script de backfill;
4. queries de validação;
5. plano de escrita dupla;
6. plano de atualização dos cron jobs;
7. plano de rollback;
8. checklist de verificação pós-deploy.

Depois disso, a implementação deve seguir em etapas pequenas e verificáveis.

## 21. Resumo executivo

O desenho recomendado é criar tabelas específicas por ciclo operacional do Reno:

- `reno_cases` para o caso/funil atual;
- `reno_first_contacts` para abertura e KPI de primeiro contato;
- `reno_repescagem_cycles` para Repescagem;
- `reno_resgate_cycles` para Resgate;
- `reno_agendamento_cycles` para acompanhamento de visita;
- `reno_events` para histórico append-only e KPI auditável.

Não criar na Fase 1:

- `reno_message_attempts`;
- `reno_followup_states`;
- `reno_qualifications`.

`clientes.meta_data` permanece como compatibilidade durante a transição. O alvo é que as tabelas `reno_%` sejam alimentadas pelo Reno em tempo real operacional e passem a alimentar os workers depois de escrita dupla, leitura dupla e validação de consistência.
