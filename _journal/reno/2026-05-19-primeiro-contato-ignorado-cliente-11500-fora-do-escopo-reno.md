---
schema_version: 1
type: interaction
status: active
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - ignorado
  - fora-escopo
  - sla-cascata
title: Primeiro contato ignorado — cliente 11500 fora do escopo Reno
event_date: '2026-05-19'
occurred_at: '2026-05-19T19:21:28.020Z'
channel: webhook/famachat-created
participants:
  - Reno
  - FamaChat
confidence: 1
external_ids:
  client_id: '11500'
  crm_note_id: '18635'
  delivery_id: evt_3668
  idempotency_key: '3668_1779218488019'
---
Relacionado: [[reno-hub]].

Evento cliente.created recebido na rota famachat-created para o cliente Hellen Vitória Inácio Gomes (client_id=11500). O CRM/FamaChat foi consultado e confirmou broker_id=24 (Maria Eduarda), portanto fora do escopo operacional do Reno (broker_id=35). Nenhum WhatsApp foi enviado e o status foi preservado. Nota CRM registrada: 18635. Idempotency key: 3668_1779218488019; delivery_id: evt_3668.
