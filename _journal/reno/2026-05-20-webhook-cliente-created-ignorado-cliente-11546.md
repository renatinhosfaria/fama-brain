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
title: Webhook cliente.created ignorado — cliente 11546
event_date: '2026-05-20'
occurred_at: '2026-05-20T20:46:29.139Z'
channel: webhook
participants:
  - Reno
  - Dinha Souza
  - Maria Eduarda Moreira Rodrigues
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11546'
  webhook_event_id: evt_3714
  idempotency_key: '3714_1779309989139'
  crm_note_id: '18828'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` validado no CRM/FamaChat para o cliente 11546 (Dinha Souza). O broker_id real no CRM é 24 (Maria Eduarda Moreira Rodrigues), portanto o caso está fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado sem inicialização de Repescagem.
- Nota CRM registrada com o motivo do ignorado.

## Evidência operacional
- CRM/FamaChat consultado via `mcp-postgres/get_client`.
- Nota CRM criada e lida de volta: note_id 18828.
- idempotency_key do evento: `3714_1779309989139`.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker_id real permanecer diferente de 35.

## Links relacionados
[[reno-hub]]
