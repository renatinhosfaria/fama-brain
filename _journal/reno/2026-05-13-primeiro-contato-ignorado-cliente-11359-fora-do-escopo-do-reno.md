---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
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
  - '[[reno]]'
mentions_entity:
  - '[[reno]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  broker_id: '14'
  client_id: '11359'
  event_type: cliente.created
  idempotency_key: '3526_1778699003278'
  route: famachat-created
  webhook_event_id: evt_3526
  migration: wikilinks-2026-05-14
  original_path: >-
    _journal/reno/2026-05-13-primeiro-contato-ignorado-cliente-11359-fora-do-escopo-do-reno.md
  original_sha256: 578d5ae1dee687924470ec7958542c2a9996b47484d4b1981c230d45a66b1593
---
Evento cliente.created recebido pela rota famachat-created para o cliente 11359 (Sergio daniel Moraes). CRM/FamaChat validado: broker_id real=14 (Michel), status=Sem Atendimento, origem=SLA Cascata. Como o escopo operacional do Reno exige broker_id=35, nenhum WhatsApp foi enviado e nenhum status/meta_data foi alterado. Decisão registrada no CRM.

## Links relacionados
- [[reno]]
- [[reno-hub]]
