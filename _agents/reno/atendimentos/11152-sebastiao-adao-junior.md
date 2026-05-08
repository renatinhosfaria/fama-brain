---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Sebastiao Adao Junior
client_id: 11152
broker_id: 35
status_crm: Em Atendimento
source: FamaChat
created: '2026-05-08'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - duplicidade
---
# Atendimento — Sebastiao Adao Junior

## Resumo atual
Resgate pausado antes de qualquer envio por duplicidade/ownership recente no mesmo telefone/JID. O cliente permanece em **Em Atendimento** com broker **35**. A branch de Resgate ficou em **step 0**, com **enabled=false** e **stopped_reason=manual_review_duplicate_active_broker**. Nenhum WhatsApp foi enviado nesta execução.

## Dados operacionais
- Cliente ID: 11152
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead_automatico
- Última interação relevante: outbound normal de 2026-05-03 com convite para visita presencial; branch rearmada em 2026-05-07 e pausada em 2026-05-08 por duplicidade/ownership
- Estado atual do Resgate: step 0, paused

## Contexto comercial
O histórico aponta para **visita pendente** como gancho principal. A conversa anterior vinha em torno de validação presencial e organização de agenda/condição, sem novo avanço nesta execução.

## Diagnóstico
### Necessidade
Seguir com validação presencial e organização de visita, quando a ownership estiver resolvida.

### Momento
Retomada controlada; não há abertura segura para novo contato enquanto a duplicidade estiver em revisão.

### Decisão
Não avançar com WhatsApp de Resgate. Pausa operacional por conflito de ownership recente.

### Viabilidade
Sem nova validação de financiamento/entrada nesta execução.

## Histórico curado de interações
### 2026-05-03 — Convite para visita
Reno convidou o cliente para passar na Fama na segunda-feira, com proposta de horário simples para avançar na visita presencial.

### 2026-05-07 — Branch de Resgate armada
A branch de Resgate foi rearmada em step 0 com next_run_at às 08:00 -03:00 de 2026-05-08, aguardando janela elegível.

### 2026-05-08 — Pausa por duplicidade/ownership
Durante a revalidação, apareceram siblings com o mesmo telefone/JID: cliente 11272 (broker 24, status Sem Atendimento, origem SLA Cascata, cliente_original_id=11152) e cliente 11228 (broker 14, status Arquivado, origem SLA Cascata, usuario_anterior=35, cliente_original_id=11152). O ciclo foi suspenso com stopped_reason=manual_review_duplicate_active_broker.

## Objeções e travas
- Duplicidade/ownership recente no mesmo telefone/JID.
- SLA Cascata relacionado ao mesmo contato.

## Próximo passo
Aguardar revisão manual de ownership antes de reativar qualquer novo contato de Resgate.

## Observações operacionais
- Nenhum WhatsApp foi enviado nesta execução.
- CRM atualizado com anotação objetiva de pausa e motivo.
- Branch de Resgate permanece preservada no cliente, porém pausada.
- Não foram identificados agendamentos/visitas ativas nesta checagem.
