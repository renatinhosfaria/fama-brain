---
schema_version: 1
type: interaction
status: active
created: '2026-05-13'
updated: '2026-05-13'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - famachat-created
  - ignorado
  - fora-escopo
title: Primeiro contato ignorado — cliente 11359 fora do escopo do Reno
event_date: '2026-05-13'
occurred_at: '2026-05-13T19:03:23.278Z'
channel: webhook/famachat-created
participants:
  - Sergio daniel Moraes
  - Michel
  - Reno
confidence: 1
external_ids:
  broker_id: '14'
  client_id: '11359'
  event_type: cliente.created
  idempotency_key: '3526_1778699003278'
  route: famachat-created
  webhook_event_id: evt_3526
---
Evento cliente.created recebido pela rota famachat-created para o cliente 11359 (Sergio daniel Moraes). CRM/FamaChat validado: broker_id real=14 (Michel), status=Sem Atendimento, origem=SLA Cascata. Como o escopo operacional do Reno exige broker_id=35, nenhum WhatsApp foi enviado e nenhum status/meta_data foi alterado. Decisão registrada no CRM.
