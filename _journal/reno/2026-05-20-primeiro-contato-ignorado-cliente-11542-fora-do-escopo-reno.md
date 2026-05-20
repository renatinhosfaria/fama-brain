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
  - primeiro-contato
  - famachat-created
  - ignorado
  - fora-do-escopo
title: Primeiro contato ignorado — cliente 11542 fora do escopo Reno
event_date: '2026-05-20'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11542'
  event_id: evt_3708
  idempotency_key: '3708_1779307288565'
  route: famachat-created
---
Evento cliente.created recebido na rota famachat-created para o cliente 11542 (Terezinha Batista Moura). Validação operacional feita no CRM/FamaChat confirmou broker_id real 24 (Maria Eduarda Moreira Rodrigues), portanto fora do escopo mínimo do Reno (broker_id=35). Decisão: ignorado; nenhum WhatsApp enviado; status e meta_data preservados no CRM. Evento: evt_3708; idempotency_key: 3708_1779307288565.

Contexto canônico: [[reno-hub]]
