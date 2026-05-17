---
schema_version: 1
type: interaction
status: active
created: '2026-05-17'
updated: '2026-05-17'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - needs-repair
  - cadence
  - crm
title: Repescagem needs repair — Murilo Damasceno (11403)
event_date: '2026-05-17'
occurred_at: '2026-05-17T10:28:03.964Z'
channel: crm
participants:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.97
external_ids:
  client_id: '11403'
  note_id: '18169'
  flow: repescagem
  step: '1'
  decision: needs_repair
  next_run_at: '2026-05-17T14:20:00-03:00'
---
## Resumo
Repescagem step 1 do cliente 11403 (Murilo Damasceno) entrou em anti-catch-up por last_sent_at dentro de 18h da execução atual.

## Ação tomada
O próximo envio foi normalizado para 2026-05-17 14:20 BRT. Nenhum WhatsApp foi enviado nesta execução.

## Evidência operacional
- status CRM: Não Respondeu
- broker_id: 35
- step: 1
- last_sent_at: 2026-05-16T19:46:27-03:00
- next_run_at anterior: 2026-05-17T09:10:00-03:00
- next_run_at novo: 2026-05-17T14:20:00-03:00

## Próximo passo
Aguardar a janela oficial futura e retomar a repescagem sem duplicar envio.

## Links relacionados
[[reno-hub]]
