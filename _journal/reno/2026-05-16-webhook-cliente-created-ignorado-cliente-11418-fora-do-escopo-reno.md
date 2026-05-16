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
  - famachat-created
  - primeiro-contato
  - ignorado
  - broker-fora-escopo
title: Webhook cliente.created ignorado — cliente 11418 fora do escopo Reno
event_date: '2026-05-16'
occurred_at: '2026-05-16T20:03:37.179Z'
channel: webhook/famachat-created
participants:
  - Reno
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11418'
  crm_note_id: '18125'
  event_id: evt_3587
  idempotency_key: '3587_1778961817178'
---
[[reno-hub]]

Evento `cliente.created` da rota `famachat-created` para o cliente 11418 foi validado no CRM/FamaChat antes de qualquer envio. O CRM confirmou `broker_id=14` (Michel), enquanto o escopo operacional do Reno exige `broker_id=35`.

Decisão: ignorar o primeiro contato Reno para este evento. Nenhum WhatsApp foi enviado, o status foi preservado como `Sem Atendimento` e foi registrada nota objetiva no CRM (nota 18125).

Idempotência/evento: event_id `evt_3587`; idempotency_key `3587_1778961817178`.
