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
  - webhook
  - ignorado
  - broker-fora-escopo
title: Primeiro contato ignorado — cliente 11357 fora do escopo Reno
event_date: '2026-05-13'
occurred_at: '2026-05-13T19:03:23.238Z'
channel: webhook/famachat-created
participants:
  - Bruna Santos
  - '[[reno]]'
  - Michel
mentions_entity:
  - 'client:11357'
  - 'broker:14'
  - '[[reno]]'
related:
  - famachat-created
  - primeiro-contato
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11357'
  webhook_event_id: evt_3524
  idempotency_key: '3524_1778699003238'
  crm_note_id: '17684'
  migration: wikilinks-2026-05-14
  original_path: >-
    _journal/reno/2026-05-13-primeiro-contato-ignorado-cliente-11357-fora-do-escopo-reno.md
  original_sha256: 79743808ffe813d59f6ecb5591423829de57c2232edd859b0adfae5c2d19a3c9
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` para o cliente Bruna Santos (client_id 11357). O CRM/FamaChat foi consultado como fonte operacional da verdade e confirmou `broker_id=14` (Michel), diferente do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Reno não enviou WhatsApp, não alterou status e não inicializou repescagem. Foi registrada nota objetiva no CRM informando que o primeiro contato foi ignorado por broker fora do escopo.

## Evidência operacional
- CRM/FamaChat: cliente 11357 existente, status `Sem Atendimento`, broker_id `14`, corretor Michel.
- Nota CRM registrada: 17684.
- Evento do webhook: `cliente.created` / `evt_3524`.
- IdempotencyKey: `3524_1778699003238`.

## Próximo passo
Nenhuma ação operacional do Reno. Atendimento permanece sob responsabilidade do broker atual no CRM/FamaChat.

## Links relacionados
- [[reno]]
- [[reno-hub]]
