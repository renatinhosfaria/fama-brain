---
schema_version: 1
type: interaction
status: active
created: '2026-05-18'
updated: '2026-05-18'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - famachat-created
  - ignored
  - out-of-scope
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11481 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T21:50:42Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11481'
  event_id: evt_3649
  idempotency_key: '3649_1779141018585'
  crm_note_id: '18463'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11481 (Renildo Márcio Rodrigues Márcio). O CRM/FamaChat foi consultado e confirmou `broker_id=24` (Maria Eduarda Moreira Rodrigues), `source=SLA Cascata`, status `Sem Atendimento`.

## Ação tomada
O primeiro contato do Reno foi ignorado por estar fora do escopo operacional mínimo (`broker_id=35`). Nenhum WhatsApp foi enviado, nenhum status foi avançado e `meta_data` foi preservado.

## Evidência operacional
- CRM validado via `mcp-postgres/get_client`.
- Nota CRM registrada: `18463`.
- Event ID: `evt_3649`.
- Idempotency key: `3649_1779141018585`.

## Próximo passo
Sem ação do Reno neste cliente. Atendimento pertence ao broker responsável no CRM.

## Links relacionados
[[reno-hub]]
