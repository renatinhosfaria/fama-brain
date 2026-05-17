---
schema_version: 1
type: interaction
status: active
created: '2026-05-17'
updated: '2026-05-17'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - webhook
  - ignorado
  - fora-do-escopo
title: Primeiro contato ignorado — cliente 11435 fora do escopo Reno
event_date: '2026-05-17'
occurred_at: '2026-05-17T14:33:36.072Z'
channel: webhook/famachat-created
participants:
  - Reno
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11435'
  crm_note_id: '18177'
  event_id: evt_3603
  idempotency_key: '3603_1779028416072'
---
[[reno-hub]]

Evento cliente.created da rota famachat-created foi validado contra o CRM/FamaChat para o cliente 11435 (Mariana Ferreira dos Santos Nunes). Estado real no CRM: broker_id=24 (Maria Eduarda), status=Sem Atendimento, source=SLA Cascata. Decisão: ignorado por estar fora do escopo operacional do Reno (broker_id=35). Nenhum WhatsApp foi enviado; status e meta_data foram preservados. Nota CRM registrada: 18177. Event ID: evt_3603. Idempotency key: 3603_1779028416072.
