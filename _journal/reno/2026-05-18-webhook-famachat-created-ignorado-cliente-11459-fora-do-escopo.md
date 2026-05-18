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
  - famachat-created
  - primeiro-contato
  - ignorado
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11459 fora do escopo
event_date: '2026-05-18'
occurred_at: '2026-05-18T14:40:17.518Z'
channel: webhook/famachat-created
participants:
  - Reno
  - FamaChat
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11459'
  crm_note_id: '18347'
  delivery_id: evt_3626
  idempotency_key: '3626_1779115217518'
---
Contexto canônico: [[reno-hub]].

Evento cliente.created da rota famachat-created validado no CRM para o cliente 11459 (Ricardo Lázaro). O CRM confirmou broker_id=14 (Michel), enquanto o escopo operacional do Reno exige broker_id=35. Decisão: ignorar o primeiro contato Reno, não enviar WhatsApp e preservar status/meta_data. Nota CRM registrada em clientes_notas id 18347.
