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
  - webhook
  - ignorado
  - fora-escopo
title: Primeiro contato ignorado — cliente 11544 fora do escopo Reno
event_date: '2026-05-20'
channel: 'webhook:famachat-created'
participants:
  - Reno
  - Francieudes Veloso
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11544'
  delivery_event_id: evt_3710
  idempotency_key: '3710_1779307289085'
  crm_note_id: '18823'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` foi validado no CRM para o cliente 11544 (Francieudes Veloso). O CRM confirmou `broker_id=24`, portanto o caso está fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. Foi registrada nota objetiva no CRM informando a decisão de ignorar o primeiro contato pelo Reno. Status e `meta_data` foram preservados.

## Evidência operacional
- CRM/FamaChat via `mcp-postgres_get_client`: cliente 11544 existe, status `Sem Atendimento`, source `SLA Cascata`, broker_id real `24`.
- Nota CRM registrada via `mcp-postgres_add_client_note`: note_id `18823`.

## Próximo passo
O atendimento permanece fora do Reno e deve seguir pelo responsável atual no FamaChat.

## Links relacionados
[[reno-hub]]
