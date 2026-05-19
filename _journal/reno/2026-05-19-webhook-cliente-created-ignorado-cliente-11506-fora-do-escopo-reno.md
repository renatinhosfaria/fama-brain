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
  - primeiro-contato
  - webhook
  - ignorado
  - fora-do-escopo
title: Webhook cliente.created ignorado — cliente 11506 fora do escopo Reno
event_date: '2026-05-19'
occurred_at: '2026-05-19T22:41:27.542Z'
channel: 'webhook:famachat-created'
participants:
  - Reno
  - FamaChat
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11506'
  webhook_event_id: evt_3674
  idempotency_key: '3674_1779230487542'
  crm_note_id: '18654'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11506. O CRM/FamaChat confirmou que o cliente existe, mas o broker atual é `broker_id=24` (Maria Eduarda), fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado.
- Nota CRM registrada com a decisão operacional objetiva.

## Evidência operacional
- Fonte operacional: CRM/FamaChat via `mcp-postgres.get_client`.
- Nota CRM: 18654.
- Evento/idempotência: `evt_3674` / `3674_1779230487542`.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer fora do escopo. Ver também [[reno-hub]].
