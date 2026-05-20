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
  - webhook
  - primeiro-contato
  - ignorado
  - fora-escopo
  - crm
title: Webhook famachat-created ignorado — cliente 11538 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T19:01:28.229Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11538'
  delivery_event_id: evt_3703
  idempotency_key: '3703_1779303688229'
  crm_note_id: '18805'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado no CRM/FamaChat para o cliente 11538 (Alexandra Castellao Rod). O cliente existe, mas o broker real no CRM é `broker_id=24` (Maria Eduarda), fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado em `Sem Atendimento`.
- Nota objetiva registrada no CRM informando o motivo do ignorado.

## Evidência operacional
- CRM/FamaChat validado via `mcp-postgres/get_client`.
- Nota CRM registrada com ID 18805.
- Idempotency key do webhook: `3703_1779303688229`.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer fora do escopo.

## Links relacionados
- [[reno-hub]]
