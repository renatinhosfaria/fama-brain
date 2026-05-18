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
  - ignored
  - broker-out-of-scope
  - famachat-created
title: Primeiro contato ignorado — cliente 11471 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T20:00:21.257Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Sara Emanuele
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11471'
  event_id: evt_3639
  idempotency_key: '3639_1779134421257'
  crm_note_id: '18447'
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` para o cliente 11471 (Sara Emanuele). O CRM/FamaChat foi consultado e confirmou `broker_id=14`, corretor Michel Henrique Teixeira da Silva, portanto fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado.
- Nota objetiva registrada no CRM pelo Reno.

## Evidência operacional
- CRM validado via `mcp-postgres/get_client`.
- Nota CRM criada: 18447.
- Evento: `evt_3639`.
- Idempotência: `3639_1779134421257`.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer diferente de 35.

## Links relacionados
[[reno-hub]]
