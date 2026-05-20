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
  - ignorado
  - fora-escopo
  - sla-cascata
title: Primeiro contato ignorado — cliente 11530 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T17:31:28.110Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Cliente 11530
  - Maria Eduarda Moreira Rodrigues
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11530'
  idempotency_key: '3698_1779298288110'
  delivery_event_id: evt_3698
  source: SLA Cascata
  broker_id: '24'
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` para o cliente 11530 foi validado no CRM/FamaChat e classificado como fora do escopo operacional do Reno.

## Evidência operacional
- CRM confirmou cliente existente: Ademir Posso (client_id 11530).
- Broker real no CRM: 24 — Maria Eduarda Moreira Rodrigues.
- Escopo mínimo do Reno exige `broker_id=35`.
- Fonte no CRM: SLA Cascata.

## Ação tomada
Nenhum WhatsApp foi enviado pelo Reno. Status e `meta_data` foram preservados. Nota objetiva de ignorado registrada no CRM.

## Próximo passo
Atendimento permanece com a corretora responsável no CRM.

## Links relacionados
[[reno-hub]]
