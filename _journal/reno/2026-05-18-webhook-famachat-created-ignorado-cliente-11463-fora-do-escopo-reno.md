---
schema_version: 1
type: interaction
status: active
created: '2026-05-18'
updated: '2026-05-18'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - webhook
  - ignored
  - broker-out-of-scope
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11463 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T15:10:17.733Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11463'
  event_id: evt_3631
  idempotency_key: '3631_1779117017733'
  crm_note_id: '18363'
  route: famachat-created
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado contra o CRM/FamaChat para o cliente 11463. O CRM confirmou `broker_id=24` (Maria Eduarda), portanto o caso ficou fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado pelo Reno.
- Status e `meta_data` foram preservados.
- Nota objetiva registrada no CRM informando a decisão de ignorar por broker fora do escopo.

## Evidência operacional
- CRM/FamaChat: cliente 11463 existente, status `Sem Atendimento`, origem `SLA Cascata`, broker real `24`.
- Nota CRM registrada: 18363.
- Event ID: `evt_3631`.
- Idempotency key: `3631_1779117017733`.

## Próximo passo
Sem ação do Reno neste atendimento enquanto o cliente permanecer atribuído a broker diferente de 35.

## Links relacionados
[[reno-hub]]
