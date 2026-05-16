---
schema_version: 1
type: interaction
status: active
created: '2026-05-16'
updated: '2026-05-16'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - webhook
  - ignorado
  - broker-fora-escopo
title: Primeiro contato ignorado — cliente 11426 Gustavo Nunes fora do escopo Reno
event_date: '2026-05-16'
occurred_at: '2026-05-16T20:18:35.791Z'
channel: 'webhook:famachat-created'
participants:
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11426'
  webhook_event_id: evt_3594
  idempotency_key: '3594_1778962715791'
  crm_note_id: '18133'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created`, mas o cliente 11426 não pertence ao escopo operacional do Reno no CRM.

## Evidência operacional
- CRM consultado: cliente existente, status `Sem Atendimento`, broker_id real `14` (Michel Henrique Teixeira da Silva).
- Escopo Reno exige broker_id `35`.
- Nota CRM registrada: 18133.

## Ação tomada
- Nenhum WhatsApp enviado.
- Nenhuma alteração de status ou meta_data realizada.
- Decisão registrada no CRM como ignorada por broker fora do escopo.

## Próximo passo
Atendimento deve permanecer com o corretor responsável no CRM, fora do fluxo automático do Reno.

## Links relacionados
- [[reno-hub]]
