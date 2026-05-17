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
title: Webhook famachat-created ignorado — cliente 11445
event_date: '2026-05-17'
occurred_at: '2026-05-17T20:03:36.355Z'
channel: webhook
participants:
  - reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11445'
  delivery_event_id: evt_3613
  idempotency_key: '3613_1779048216355'
  crm_note_id: '18266'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado no CRM/FamaChat para a cliente Katia Xavier (client_id 11445) e ignorado pelo Reno porque o `broker_id` real é 24, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado sem inicialização de repescagem.
- Nota objetiva registrada no CRM.

## Evidência operacional
- CRM/FamaChat consultado via `mcp-postgres/get_client`.
- Broker real no CRM: 24.
- Nota CRM criada: 18266.
- Origem: SLA Cascata.

## Próximo passo
Sem ação do Reno neste cliente enquanto permanecer fora do `broker_id=35`.

## Links relacionados
- [[reno-hub]]
