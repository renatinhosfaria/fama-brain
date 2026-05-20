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
  - first-contact
  - webhook
  - ignored
  - broker-out-of-scope
title: Webhook cliente.created ignorado — cliente 11531 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T17:56:27.666Z'
channel: webhook
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11531'
  idempotency_key: '3699_1779299787666'
  crm_note_id: '18794'
  webhook_event_id: evt_3699
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11531 (Alesha Moraes). O CRM/FamaChat confirmou `broker_id=24` (Maria Eduarda), portanto fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- WhatsApp não enviado.
- Status e `meta_data` preservados.
- Nota objetiva registrada no CRM informando a decisão de ignorar por broker fora do Reno.

## Evidência operacional
- CRM/FamaChat consultado via `mcp-postgres/get_client`.
- Nota CRM criada: 18794.
- Idempotency do webhook: `3699_1779299787666`.

## Próximo passo
Nenhum pelo Reno. O atendimento permanece com a corretora atribuída no CRM.

## Links relacionados
[[reno-hub]]
