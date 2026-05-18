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
  - famachat-created
  - primeiro-contato
  - ignorado
  - broker-fora-escopo
title: Webhook famachat-created ignorado — cliente 11468 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T17:55:18.416Z'
channel: webhook
participants:
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11468'
  event_id: evt_3636
  idempotency_key: '3636_1779126918415'
  crm_note_id: '18426'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11468 (Alfredo Júlio da Silva). O CRM/FamaChat confirmou `broker_id=24`, portanto o caso está fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado.
- Nota objetiva registrada no CRM informando o ignorado por broker fora do Reno.

## Evidência operacional
- Fonte de verdade: CRM/FamaChat via `mcp-postgres_get_client`.
- Nota CRM criada: 18426.
- `event_id=evt_3636`.
- `idempotency_key=3636_1779126918415`.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer diferente de 35.

## Links relacionados
- [[reno-hub]]
