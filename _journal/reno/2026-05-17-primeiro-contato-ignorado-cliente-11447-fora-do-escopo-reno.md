---
schema_version: 1
type: interaction
status: active
created: '2026-05-17'
updated: '2026-05-17'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - ignorado
  - fora-do-escopo
  - famachat-created
title: Primeiro contato ignorado — cliente 11447 fora do escopo Reno
event_date: '2026-05-17'
occurred_at: '2026-05-17T21:23:36.261Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Luciene Martins Bezerra
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11447'
  event_id: evt_3615
  idempotency_key: '3615_1779053016261'
  route: famachat-created
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado no CRM para o cliente 11447 (Luciene Martins Bezerra). O broker real no CRM é 14, portanto o caso está fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. O status CRM foi preservado como `Sem Atendimento`. Foi registrada nota objetiva no CRM informando a decisão de ignorar por escopo.

## Evidência operacional
CRM/FamaChat consultado via `mcp-postgres`: cliente existente, source `SLA Cascata`, broker_id real 14, status `Sem Atendimento`.

## Próximo passo
Sem ação operacional do Reno neste cliente enquanto permanecer fora do broker_id=35.

## Links relacionados
[[reno-hub]]
