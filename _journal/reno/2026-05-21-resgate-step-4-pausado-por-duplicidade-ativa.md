---
schema_version: 1
type: journal
status: active
created: '2026-05-21'
updated: '2026-05-21'
source: agent-generated
author_agent: reno
tags:
  - reno
  - resgate
  - crm
  - duplicate-ownership
  - manual-review
title: Resgate step 4 pausado por duplicidade ativa
event_date: '2026-05-21'
occurred_at: '2026-05-21T20:43:49.131Z'
channel: crm
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  block_reason: manual_review_duplicate_active_broker
  client_id: '11466'
  crm_note_id: '18927'
  duplicate_client_id: '11555'
  flow: resgate
  step: '4'
---
Resgate step 4 da cliente Joyce (client_id 11466) não foi enviado. Na revalidação do CRM, o mesmo telefone/JID apareceu em outro cliente ativo do broker 24 com status Não Respondeu e origem SLA Cascata, então o ciclo de resgate foi pausado para revisão manual com stopped_reason=manual_review_duplicate_active_broker. O status do cliente permanece Em Atendimento; nenhuma mensagem foi enviada.
