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
  - fora-do-escopo
title: Primeiro contato ignorado — cliente 11543 Bruna Oliveira fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T20:01:29.121Z'
channel: 'webhook:famachat-created'
participants:
  - Reno
  - Bruna Oliveira
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11543'
  event_id: evt_3712
  idempotency_key: '3712_1779307289121'
  source: SLA Cascata
  broker_id: '24'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` validado contra o CRM/FamaChat. O cliente 11543 (Bruna Oliveira) existe, mas o CRM confirmou `broker_id=24`, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. O caso foi ignorado como fora de escopo Reno e a decisão foi registrada no CRM.

## Evidência operacional
- CRM validado via `mcp-postgres/get_client`.
- Status no momento da validação: `Sem Atendimento`.
- Origem: `SLA Cascata`.
- Idempotency key do evento: `3712_1779307289121`.

## Próximo passo
Atendimento segue fora do Reno, com a corretora responsável no CRM.

## Links relacionados
[[reno-hub]]
