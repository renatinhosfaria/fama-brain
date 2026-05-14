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
  - ignorado
  - fora-do-escopo
title: Primeiro contato ignorado — cliente 11358 fora do escopo Reno
event_date: '2026-05-13'
occurred_at: '2026-05-13T19:03:23.280Z'
channel: webhook/famachat-created
participants:
  - '[[reno]]'
  - 'cliente:11358'
  - 'broker:14'
mentions_entity:
  - 'client:11358'
  - 'broker:14'
  - '[[reno]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11358'
  crm_note_id: '17686'
  event_id: evt_3527
  idempotency_key: '3527_1778699003280'
  migration: wikilinks-2026-05-14
  original_path: >-
    _journal/reno/2026-05-13-primeiro-contato-ignorado-cliente-11358-fora-do-escopo-reno.md
  original_sha256: ff25cdd6c9a35938653c10f0039562dbff0e303247c41416a1a1b25607a1529b
---
Evento cliente.created da rota famachat-created validado no CRM para o cliente 11358 (Raimundo Nonato Ferreira Dos Santos). O broker real no CRM é 14 (Michel), diferente do escopo operacional do Reno (broker_id=35). Decisão: ignorado; nenhum WhatsApp enviado; status preservado em Sem Atendimento. Nota CRM registrada: 17686.

## Links relacionados
- [[reno]]
- [[reno-hub]]
