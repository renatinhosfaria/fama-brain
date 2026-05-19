---
schema_version: 1
type: interaction
status: active
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
author_agent: reno
tags:
  - repescagem
  - needs-repair
  - cadence
  - crm
title: Repescagem needs_repair — Francieudes Veloso
event_date: '2026-05-19'
occurred_at: '2026-05-19T11:54:50-03:00'
channel: cron
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11453'
  note_id: '18553'
  broker_id: '35'
---
Cliente 11453 estava em repescagem step 1 e ficou dentro da janela anti-catch-up (<18h desde o último outbound). A branch foi normalizada para next_run_at em 2026-05-20 09:10 BRT, sem envio de WhatsApp nesta execução. CRM recebeu nota objetiva de repair; contexto preservado para o próximo follow-up.
