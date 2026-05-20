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
  - first-contact
  - webhook
  - ignored
  - out-of-scope
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11539 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T19:41:27.618Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11539'
  event_id: evt_3707
  idempotency_key: '3707_1779306087618'
  crm_note_id: '18810'
  broker_id: '24'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` foi validado no CRM para o cliente 11539 (Raynara Araújo). O cliente existe, mas o broker real no CRM é `broker_id=24`, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado.
- Nota objetiva registrada no CRM informando a decisão de ignorar por escopo.

## Evidência operacional
- CRM/FamaChat validado via `mcp-postgres/get_client`.
- Nota CRM criada: 18810.
- Fonte/origem do cliente: SLA Cascata, sequência 2, usuário anterior 35.

## Próximo passo
Sem ação do Reno neste cliente enquanto o `broker_id` real permanecer diferente de 35.

## Links relacionados
- [[reno-hub]]
