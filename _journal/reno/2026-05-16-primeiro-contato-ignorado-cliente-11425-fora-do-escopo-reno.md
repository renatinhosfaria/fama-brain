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
  - primeiro-contato
  - famachat-created
  - ignorado
  - fora-escopo
title: Primeiro contato ignorado — cliente 11425 fora do escopo Reno
event_date: '2026-05-16'
occurred_at: '2026-05-16T20:03:39.732Z'
channel: webhook/famachat-created
participants:
  - Reno
  - FamaChat
mentions_entity:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11425'
  crm_note_id: '18132'
  delivery_event_id: evt_3593
  idempotency_key: '3593_1778961819732'
---
[[reno-hub]]

Evento `cliente.created` recebido pela rota `famachat-created` para o cliente CRM 11425.

Decisão operacional: ignorado, porque o CRM/FamaChat validou `broker_id=24`, fora do escopo operacional do Reno (`broker_id=35`).

Efeitos: nenhum WhatsApp enviado; status e `meta_data` preservados; nota CRM registrada no cliente com referência ao evento `evt_3593` e idempotency key `3593_1778961819732`.

Fonte operacional: CRM/FamaChat via `mcp-postgres_get_client`; nota CRM id 18132 registrada via `mcp-postgres_add_client_note`.
