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
  - webhook
  - ignorado
  - broker-fora-escopo
title: Primeiro contato ignorado — cliente 11357 fora do escopo Reno
event_date: '2026-05-13'
occurred_at: '2026-05-13T19:03:23.238Z'
channel: webhook/famachat-created
participants:
  - Bruna Santos
  - Reno
  - Michel
mentions_entity:
  - 'client:11357'
  - 'broker:14'
  - reno
related:
  - famachat-created
  - primeiro-contato
confidence: 1
external_ids:
  client_id: '11357'
  webhook_event_id: evt_3524
  idempotency_key: '3524_1778699003238'
  crm_note_id: '17684'
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
