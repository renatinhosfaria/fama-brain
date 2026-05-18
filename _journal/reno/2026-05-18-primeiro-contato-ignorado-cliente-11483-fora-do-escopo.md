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
  - primeiro-contato
  - ignorado
  - fora-do-escopo
  - sla-cascata
title: Primeiro contato ignorado — cliente 11483 fora do escopo
event_date: '2026-05-18'
occurred_at: '2026-05-18T23:00:19.816Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Ana Claudia
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11483'
  crm_note_id: '18470'
  idempotency_key: '3651_1779145219816'
  webhook_event_id: evt_3651
---
Referência operacional: [[reno-hub]].

Evento `cliente.created` recebido pela rota `famachat-created` para o cliente 11483 (Ana Claudia). CRM/FamaChat validado: `broker_id=24` (Maria Eduarda), fonte `SLA Cascata`, status `Sem Atendimento`. Como o escopo operacional do Reno exige `broker_id=35`, o primeiro contato foi ignorado. Nenhum WhatsApp foi enviado; status e `meta_data` foram preservados. Nota CRM registrada: 18470.
