---
schema_version: 1
type: interaction
status: active
created: '2026-05-16'
updated: '2026-05-16'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - ignored
  - broker-out-of-scope
  - famachat-created
title: Primeiro contato ignorado — cliente 11419 fora do escopo Reno
event_date: '2026-05-16'
occurred_at: '2026-05-16T20:03:37.287Z'
channel: 'webhook:famachat-created'
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11419'
  delivery_event_id: evt_3588
  idempotency_key: '3588_1778961817287'
  route: famachat-created
  event_type: cliente.created
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado no CRM para o cliente 11419 (Wesley Jeovane). O broker real no CRM é 14 (Michel), portanto fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- WhatsApp não enviado.
- Status CRM preservado como `Sem Atendimento`.
- Decisão objetiva registrada em nota do CRM.

## Evidência operacional
- CRM/FamaChat via `mcp-postgres_get_client`: cliente existente, `broker_id=14`, status `Sem Atendimento`, telefone/JID presentes.
- Payload tratado apenas como sinal; CRM prevaleceu.

## Próximo passo
Atendimento permanece com o broker responsável no CRM. Reno não assume este caso.

## Links relacionados
- [[reno-hub]]
