---
schema_version: 1
type: interaction
status: active
created: '2026-05-20'
updated: '2026-05-20'
source: agent-generated
author_agent: reno
tags:
  - reno
  - resgate
  - whatsapp
  - duplicate-ownership
  - manual-review
title: Resgate pausado por duplicidade ativa — Roberto Paranaiba
event_date: '2026-05-20'
channel: whatsapp
participants:
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11408'
  duplicate_client_id: '11490'
  note_id: '18851'
  broker_id: '35'
  duplicate_broker_id: '24'
  resgate_step: '4'
---
## Resumo
Resgate do cliente 11408 (Roberto Paranaiba) foi pausado por revisão manual.

## Evidência operacional
- Cliente segue em status Em Atendimento e broker_id=35.
- A revalidação encontrou a mesma linha/whatsapp_jid em outro cliente ativo sob broker_id=24 (cliente 11490), com status Não Respondeu e SLA cascata ativo.
- A branch `reno_followup.resgate` foi atualizada para `stopped_reason=manual_review_duplicate_active_broker` e `next_run_at=null`.
- Não houve envio de WhatsApp nesta execução.

## Próximo passo
Aguardar revisão manual sobre a ownership duplicada antes de qualquer nova tentativa.

## Links relacionados
[[reno-hub]]
