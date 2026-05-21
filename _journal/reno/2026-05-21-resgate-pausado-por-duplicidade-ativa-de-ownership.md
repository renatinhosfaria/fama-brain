---
schema_version: 1
type: interaction
status: active
created: '2026-05-21'
updated: '2026-05-21'
source: agent-generated
author_agent: reno
tags:
  - resgate
  - duplicidade
  - crm
  - whatsapp
title: Resgate pausado por duplicidade ativa de ownership
event_date: '2026-05-21'
channel: crm
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11467'
  duplicate_client_id: '11556'
  duplicate_broker_id: '24'
  crm_note_id: '18925'
---
## Resumo
Revalidação de Resgate do cliente 11467 (Leandro André) identificou duplicidade ativa do mesmo telefone/JID em outro cliente sob broker_id=24, vindo de SLA Cascata (cliente_id 11556, cliente_original_id 11467).

## Ação tomada
CRM atualizado com `stopped_reason=manual_review_duplicate_active_broker`, `enabled=false` e `next_run_at=null` na branch `reno_followup.resgate`.

## Evidência operacional
- Cliente original: 11467
- Cliente duplicado/ownership paralelo: 11556
- Nenhum WhatsApp foi enviado nesta execução.

## Próximo passo
Aguardar revisão manual do ownership antes de qualquer retomada de Resgate.

[[reno-hub]]
