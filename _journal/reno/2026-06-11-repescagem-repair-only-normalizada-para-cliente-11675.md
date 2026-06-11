---
schema_version: 1
type: interaction
status: active
created: '2026-06-11'
updated: '2026-06-11'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - repair-only
  - cron
title: Repescagem repair-only normalizada para cliente 11675
event_date: '2026-06-11'
channel: cron
participants:
  - Reno Agente de IA
mentions_entity:
  - 'cliente:11675'
  - reno_followup.repescagem
related:
  - reno-hub
confidence: 0.96
external_ids:
  client_id: '11675'
  crm_note_id: '19682'
---
[[reno-hub]] Repescagem repair-only para cliente 11675: o último `last_sent_at` ainda estava dentro da janela de 18h BRT e no mesmo dia local, então não houve novo envio. Branch preservada com `recovery_reason=needs_repair` e `next_run_at` normalizado para 2026-06-12T09:10:00-03:00. CRM recebeu nota objetiva e o status permanece `Não Respondeu`.
