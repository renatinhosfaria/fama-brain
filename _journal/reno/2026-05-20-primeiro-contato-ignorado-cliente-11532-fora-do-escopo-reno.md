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
  - broker-out-of-scope
title: Primeiro contato ignorado — cliente 11532 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T18:11:27.675Z'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11532'
  crm_note_id: '18799'
  event_id: evt_3700
  idempotency_key: '3700_1779300687675'
---
Evento `cliente.created` recebido na rota `famachat-created` para o cliente Pericles Andrade (CRM #11532). O CRM/FamaChat foi consultado e confirmou `broker_id=24` (Maria Eduarda), enquanto o escopo operacional do Reno exige `broker_id=35`. Decisão: ignorado por broker fora do Reno. Nenhum WhatsApp foi enviado; status `Sem Atendimento` e `meta_data` foram preservados. Nota CRM registrada: #18799. Referência canônica: [[reno-hub]].
