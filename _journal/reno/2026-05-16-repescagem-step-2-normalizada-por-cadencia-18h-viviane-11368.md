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
  - repescagem
  - needs-repair
  - cadencia
  - cron
title: Repescagem step 2 normalizada por cadência <18h — Viviane (11368)
event_date: '2026-05-16'
channel: cron
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.98
external_ids:
  client_id: '11368'
  flow: repescagem
  decision: needs_repair
  note_id: '18076'
  branch: repescagem
---
Repescagem do Reno para Viviane (cliente 11368) não avançou para novo WhatsApp nesta execução. A branch estava em step 2 com last_sent_at em 2026-05-16T09:57:37-03:00; next_run_at foi normalizado para 2026-05-17T14:20:00-03:00 para respeitar a janela oficial do próximo step e a regra anti-catch-up (<18h). CRM recebeu nota objetiva. [[reno-hub]]
