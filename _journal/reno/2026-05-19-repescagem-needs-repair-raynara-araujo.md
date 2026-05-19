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
  - repescagem
  - needs_repair
  - crm
  - whatsapp
title: Repescagem needs_repair — Raynara Araújo
event_date: '2026-05-19'
occurred_at: '2026-05-19T15:52:28-03:00'
channel: internal
participants:
  - Raynara Araújo
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11444'
  flow: repescagem
  step: '2'
  next_run_at: '2026-05-20T14:20:00-03:00'
  event_kind: needs_repair
---
## Resumo
A repescagem da cliente 11444 (Raynara Araújo) estava due, mas o último envio do step 2 ainda estava dentro da janela anti-catch-up de 18h em BRT. Nenhuma nova mensagem foi enviada.

## Ação tomada
Normalizei `next_run_at` para 2026-05-20T14:20:00-03:00 para o próximo step oficial da repescagem e registrei nota objetiva no CRM.

## Evidência operacional
- broker_id=35
- status CRM: Não Respondeu
- step atual: 2
- last_sent_at: 2026-05-19T11:41:10-03:00
- janela anti-catch-up: mesma data BRT / menos de 18h

## Próximo passo
Aguardar a próxima janela oficial da repescagem antes de retomar o contato.

## Links relacionados
[[reno-hub]]
