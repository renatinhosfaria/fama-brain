---
schema_version: 1
type: journal
status: active
created: '2026-06-11'
updated: '2026-06-11'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - repair-only
  - crm
title: Maria Isabel Petrone — repescagem repair-only
event_date: '2026-06-11'
occurred_at: '2026-06-11T09:22:45-03:00'
channel: journal
mentions_entity:
  - Maria Isabel Petrone
related:
  - '[[reno-hub]]'
  - '[[maria-isabel-petrone]]'
confidence: 0.98
external_ids:
  client_id: '11608'
  crm_note_id: '19647'
  flow: repescagem
---
Repair-only outcome for client 11608 (Maria Isabel Petrone). A strict due Repescagem row existed, but last_sent_at (2026-06-10 22:26 BRT) was still inside the 18h BRT freshness gate at run time, so no WhatsApp was sent. CRM branch was preserved and normalized to step 1 with recovery_reason=needs_repair and next_run_at=2026-06-12 09:10 BRT. CRM note 19647 recorded the adjustment.
