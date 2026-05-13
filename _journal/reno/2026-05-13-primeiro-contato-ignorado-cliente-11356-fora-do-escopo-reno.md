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
  - fora-escopo
title: Primeiro contato ignorado — cliente 11356 fora do escopo Reno
event_date: '2026-05-13'
occurred_at: '2026-05-13T19:03:23.234Z'
channel: webhook/famachat-created
participants:
  - Suely Rodrigues OGrady de Paiva
  - Reno
mentions_entity:
  - cliente-11356
  - reno
related: []
confidence: 1
external_ids:
  client_id: '11356'
  crm_note_id: '17687'
  webhook_event_id: evt_3525
  idempotency_key: '3525_1778699003234'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11356. O CRM foi consultado como fonte operacional e confirmou `broker_id=14` (Michel), portanto o caso está fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado em `Sem Atendimento`.
- Nota objetiva registrada no CRM informando a decisão de ignorar por broker fora do escopo.

## Evidência operacional
- Cliente validado no CRM: 11356 — Suely Rodrigues OGrady de Paiva.
- Broker real no CRM: 14 — Michel Henrique Teixeira da Silva.
- Nota CRM registrada: 17687.
- IdempotencyKey do evento: 3525_1778699003234.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer diferente de 35.
