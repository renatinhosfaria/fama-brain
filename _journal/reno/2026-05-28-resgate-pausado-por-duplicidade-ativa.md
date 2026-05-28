---
schema_version: 1
type: journal
status: active
created: '2026-05-28'
updated: '2026-05-28'
source: agent-generated
author_agent: reno
tags: []
title: Resgate pausado por duplicidade ativa
event_date: '2026-05-28'
channel: crm
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  crm_client_id: '11505'
  crm_note_id: '19206'
  flow: resgate
  stop_reason: manual_review_duplicate_active_broker
---
Revalidação do cliente ID 11505 mostrou o mesmo telefone/JID em outro atendimento do broker_id=24 (status Não Respondeu). Não houve envio de WhatsApp de Resgate step 6. Branch de Resgate foi pausada para revisão manual. [[reno-hub]]
