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
  - first-contact
  - webhook
  - ignored
  - out-of-scope
  - sla-cascata
title: Primeiro contato ignorado — cliente 11498 fora do escopo Reno
event_date: '2026-05-19'
occurred_at: '2026-05-19T17:22:14Z'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11498'
  crm_note_id: '18597'
  webhook_event_id: evt_3666
  idempotency_key: '3666_1779211287594'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11498 (Naiane Caroline). O CRM/FamaChat foi consultado e confirmou `broker_id=24`, portanto fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. O status CRM foi preservado como `Sem Atendimento`.

## Evidência operacional
- Fonte operacional: CRM/FamaChat via `mcp-postgres_get_client`.
- Broker real no CRM: 24.
- Nota CRM registrada: 18597.
- Idempotência do evento: `3666_1779211287594`.

## Próximo passo
Sem ação do Reno neste cliente enquanto permanecer fora do escopo. [[reno-hub]]
