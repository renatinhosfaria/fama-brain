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
  - needs_repair
  - repair-only
title: Repescagem needs_repair — Igor (cliente 11649)
event_date: '2026-06-11'
channel: cron
participants:
  - Reno
mentions_entity:
  - reno-hub
related:
  - 'cliente:11649'
confidence: 0.99
external_ids:
  client_id: '11649'
  client_name: Igor
  flow: repescagem
  note_id: '19663'
---
Em [[reno-hub]], o cliente 11649 (Igor) ficou em repair-only na repescagem: last_sent_at ainda estava dentro da janela de 18h BRT, então não houve novo WhatsApp. O branch foi preservado, recovery_reason=needs_repair e next_run_at foi normalizado para 2026-06-12T09:10:00-03:00. CRM note registrada; status permaneceu "Não Respondeu".
