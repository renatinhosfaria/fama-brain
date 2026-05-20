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
  - resgate
  - whatsapp
  - duplicate-ownership
  - manual-review
title: Resgate step 5 bloqueado por duplicidade ativa
event_date: '2026-05-20'
occurred_at: '2026-05-20T20:17:41Z'
channel: whatsapp
participants:
  - Bruno Lira | Diretor Criativo
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11433'
  crm_note_id: '18826'
  duplicate_client_id: '11506'
  flow: resgate
  step: '5'
---
Bruno Lira | Diretor Criativo (client_id 11433) estava elegível para Resgate step 5, mas a revalidação encontrou o mesmo telefone/JID em outro cliente ativo da base (id 11506, broker_id 24, status Não Respondeu). A branch de resgate foi pausada com stopped_reason=manual_review_duplicate_active_broker e next_run_at limpo. Sem agendamento ou visita ativa. [[reno-hub]]
