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
  - webhook
  - ignored
  - out-of-scope
  - sla-cascata
title: Primeiro contato ignorado — cliente 11472 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T20:00:21.927Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Jose Lucas
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11472'
  event_id: evt_3643
  idempotency_key: '3643_1779134421927'
  crm_note_id: '18449'
  route: famachat-created
  event_type: cliente.created
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` foi validado no CRM/FamaChat para o cliente 11472 (Jose Lucas). O CRM confirmou `broker_id=14`, não `35`, com origem `SLA Cascata`.

## Decisão operacional
Reno ignorou o primeiro contato por estar fora do escopo operacional mínimo atual. Nenhum WhatsApp foi enviado.

## Evidência operacional
- CRM/FamaChat validado via `mcp-postgres_get_client`.
- Cliente existente: 11472.
- Broker real no CRM: 14 (Michel).
- Status preservado: Sem Atendimento.
- `meta_data` preservado.
- Nota CRM registrada: 18449.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer diferente de 35. Referência de governança: [[reno-hub]].
