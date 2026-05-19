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
  - webhook
  - primeiro-contato
  - ignorado
  - fora-escopo
title: Webhook famachat-created ignorado — cliente 11490 fora do escopo Reno
event_date: '2026-05-19'
occurred_at: '2026-05-19T14:26:27.710Z'
channel: webhook
participants:
  - Reno
  - Roberto Paranaiba
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11490'
  event_id: evt_3659
  idempotency_key: '3659_1779200787710'
  crm_note_id: '18550'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado no CRM para o cliente Roberto Paranaiba (client_id 11490).

## Decisão operacional
O cliente está atribuído ao broker_id=24 (Maria Eduarda Moreira Rodrigues), portanto está fora do escopo operacional do Reno (broker_id=35). Nenhum WhatsApp foi enviado.

## Evidência operacional
- CRM/FamaChat consultado via mcp-postgres: cliente existente, status `Sem Atendimento`, source `SLA Cascata`, broker_id=24.
- Nota CRM registrada: id 18550.

## Próximo passo
Sem ação do Reno. Atendimento segue fora do escopo do Reno conforme atribuição atual no CRM.

## Links relacionados
[[reno-hub]]
