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
  - first-contact
  - webhook
  - ignored
  - broker-out-of-scope
title: Primeiro contato ignorado — cliente 11494 fora do escopo Reno
event_date: '2026-05-19'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11494'
  event_type: cliente.created
  idempotency_key: '3662_1779209188041'
  route: famachat-created
  webhook_event_id: evt_3662
---
Relacionado a [[reno-hub]].

Evento cliente.created recebido na rota famachat-created para o cliente 11494 (Patrícia Nunes Mosken). CRM/FamaChat validado como fonte operacional: broker_id real 24 (Maria Eduarda), source SLA Cascata, status Sem Atendimento, meta_data vazio. Decisão: ignorado por broker_id fora do escopo operacional do Reno (exige broker_id=35). Nenhum WhatsApp enviado, nenhuma alteração de status ou meta_data feita. IdempotencyKey: 3662_1779209188041. Payload indicava usuario_anterior=35 e cliente_original_id=11411, mas o cliente atual do evento pertence ao broker_id 24.
