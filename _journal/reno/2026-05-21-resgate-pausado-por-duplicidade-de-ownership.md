---
schema_version: 1
type: interaction
status: active
created: '2026-05-21'
updated: '2026-05-21'
source: agent-generated
author_agent: reno
tags:
  - reno
  - resgate
  - duplicate-ownership
  - manual-review
  - crm
title: Resgate pausado por duplicidade de ownership
event_date: '2026-05-21'
occurred_at: '2026-05-21T20:19:10.579Z'
channel: crm
participants:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11440'
  duplicate_client_id: '11532'
  crm_note_id: '18922'
  flow: resgate
  step: '0'
---
## Resumo
Resgate step 0 do cliente Pericles Andrade (client_id 11440) foi pausado antes do envio.

## Ação tomada
A revalidação encontrou o mesmo telefone/JID em outro broker (client_id 11532, broker 24, status Não Respondeu). Como isso caracteriza duplicidade/ownership ativa fora do Reno, a branch de resgate foi marcada como manual_review_duplicate_active_broker e não houve WhatsApp nesta execução.

## Evidência operacional
- broker_id do cliente: 35
- status: Em Atendimento
- branch resgate: step 0, due, com next_run_at vencido
- active appointments: nenhuma
- active SLA: nenhum
- duplicate row encontrada: broker 24, status Não Respondeu, mesmo telefone/JID

## Próximo passo
Revisar ownership/duplicidade antes de retomar qualquer envio do Resgate.

## Links relacionados
- [[reno-hub]]
