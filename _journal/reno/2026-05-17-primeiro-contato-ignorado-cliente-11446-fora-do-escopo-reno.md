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
  - webhook
  - ignorado
  - fora-do-escopo
  - sla-cascata
title: Primeiro contato ignorado — cliente 11446 fora do escopo Reno
event_date: '2026-05-17'
occurred_at: '2026-05-17T20:03:36.748Z'
channel: 'webhook:famachat-created'
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11446'
  webhook_event_id: evt_3614
  idempotency_key: '3614_1779048216748'
  crm_note_id: '18265'
---
## Resumo
Webhook `famachat-created` / `cliente.created` recebido para o cliente 11446 (Willian Rodrigues pereira). CRM validado antes de qualquer envio.

## Decisão operacional
Primeiro contato ignorado porque o cliente está atribuído no CRM ao broker_id=24 (Maria Eduarda), fora do escopo operacional do Reno (broker_id=35).

## Evidência operacional
- CRM/FamaChat: cliente 11446 existente, status `Sem Atendimento`, origem `SLA Cascata`, broker_id=24.
- Nota CRM registrada: 18265.
- Nenhum WhatsApp enviado; status e meta_data preservados.

## Próximo passo
Atendimento permanece fora do escopo do Reno enquanto o broker_id real no CRM for diferente de 35.

## Links relacionados
[[reno-hub]]
