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
  - famachat-created
  - ignored
  - fora-do-escopo
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11520 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T03:41:27.475Z'
channel: webhook/famachat-created
participants:
  - Reno
  - FamaChat
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  broker_id: '24'
  client_id: '11520'
  event_id: evt_3688
  idempotency_key: '3688_1779248487475'
---
[[reno-hub]]

Evento cliente.created recebido na rota famachat-created para o cliente CRM 11520 (Ricardo Lázaro). CRM validado: broker_id real 24 (Maria Eduarda), status Sem Atendimento, origem SLA Cascata. Decisão: ignorar primeiro contato Reno porque o cliente está fora do escopo operacional broker_id=35. Nenhum WhatsApp enviado; status e meta_data preservados. event_id=evt_3688; idempotencyKey=3688_1779248487475.
