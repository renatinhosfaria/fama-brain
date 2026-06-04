---
schema_version: 1
type: interaction
status: active
created: '2026-06-04'
updated: '2026-06-04'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - repair
  - cadence-normalization
title: Repescagem repair-only - Jose Galvao (11602)
event_date: '2026-06-04'
channel: cron
participants:
  - Reno
mentions_entity:
  - 'client:11602'
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11602'
  flow: repescagem
  crm_note_id: '19462'
  client_name: Jose Galvao
---
[[reno-hub]] Repair-only repescagem run for client 11602 (Jose Galvao). Strict-due row was due, but `last_sent_at=2026-06-04T09:46:04-03:00` was still within the 18h BRT freshness gate, so no WhatsApp was sent. Branch was normalized to `next_run_at=2026-06-05T09:10:00-03:00` and CRM note 19462 was added. Status remained `Não Respondeu`.
