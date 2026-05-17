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
  - famachat-created
  - primeiro-contato
  - ignorado
  - fora-do-escopo
title: Webhook famachat-created ignorado — cliente 11449 fora do escopo Reno
event_date: '2026-05-17'
occurred_at: '2026-05-17T22:48:36.365Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11449'
  event_id: evt_3617
  idempotency_key: '3617_1779058116365'
  crm_note_id: '18293'
  broker_id: '24'
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` para o cliente Dulce Silva (client_id 11449) foi validado no CRM/FamaChat e ignorado pelo Reno porque o `broker_id` real do cliente é 24 (Maria Eduarda), diferente do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado sem inicializar repescagem.
- Nota objetiva registrada no CRM informando a decisão de ignorar.

## Evidência operacional
- CRM/FamaChat consultado via `mcp-postgres/get_client`.
- Nota CRM registrada com id 18293.
- Evento: `evt_3617`.
- Idempotency key: `3617_1779058116365`.

## Próximo passo
Sem ação do Reno neste cliente enquanto permanecer atribuído a broker diferente de 35.

## Links relacionados
- [[reno-hub]]
