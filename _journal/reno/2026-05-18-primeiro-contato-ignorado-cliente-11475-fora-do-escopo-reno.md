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
title: Primeiro contato ignorado — cliente 11475 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T20:00:21.883Z'
channel: 'webhook:famachat-created'
participants:
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11475'
  event_id: evt_3641
  idempotency_key: '3641_1779134421883'
  crm_note_id: '18448'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11475. O CRM/FamaChat foi consultado e confirmou que o cliente está atribuído ao `broker_id=14` (Michel), portanto fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp enviado.
- Status e `meta_data` preservados.
- Nota objetiva registrada no CRM: `18448`.

## Evidência operacional
- Fonte de verdade: CRM/FamaChat via `mcp-postgres/get_client`.
- Cliente: Higor Diogo (`client_id=11475`).
- Status no momento da validação: `Sem Atendimento`.
- Origem: `SLA Cascata`.
- Event id: `evt_3641`.
- Idempotency key: `3641_1779134421883`.

## Próximo passo
Sem ação do Reno. Caso permanece com o corretor responsável no CRM.

## Links relacionados
- [[reno-hub]]
