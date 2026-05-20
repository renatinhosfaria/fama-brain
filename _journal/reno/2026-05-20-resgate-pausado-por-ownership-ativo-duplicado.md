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
  - duplicate-ownership
  - manual-review
title: Resgate pausado por ownership ativo duplicado
event_date: '2026-05-20'
occurred_at: '2026-05-20T23:35:43.076Z'
channel: cron
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11450'
  duplicate_client_id: '11543'
  broker_id: '35'
  duplicate_broker_id: '24'
---
Reno identificou candidato de Resgate para Bruna Oliveira (client_id 11450), mas revalidação encontrou o mesmo telefone/JID em outro cadastro (client_id 11543, broker_id 24) com SLA cascata ativa. A branch resgate foi pausada com stopped_reason=manual_review_duplicate_active_broker e nenhuma mensagem foi enviada.

## Próximo passo
Aguardar revisão manual de ownership antes de reativar o fluxo.

## Links relacionados
[[reno-hub]]
