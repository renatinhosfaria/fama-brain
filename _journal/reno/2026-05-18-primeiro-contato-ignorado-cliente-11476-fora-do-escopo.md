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
title: Primeiro contato ignorado — cliente 11476 fora do escopo
event_date: '2026-05-18'
occurred_at: '2026-05-18T20:40:18.124Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Flavielle Dias
  - Maria Eduarda
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11476'
  crm_note_id: '18455'
  event_id: evt_3644
  idempotency_key: '3644_1779136818123'
---
Webhook `cliente.created` da rota `famachat-created` validado contra o CRM. O cliente 11476 (Flavielle Dias) existe, mas o CRM confirmou `broker_id=24` (Maria Eduarda), enquanto o escopo operacional do Reno exige `broker_id=35`. Decisão: atendimento ignorado; nenhum WhatsApp enviado; status `Sem Atendimento` e `meta_data` preservados. Nota CRM registrada: 18455.
