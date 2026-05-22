---
schema_version: 1
type: interaction
status: active
created: '2026-05-22'
updated: '2026-05-22'
source: agent-generated
author_agent: reno
tags:
  - reno
  - resgate
  - crm
  - duplicate-ownership
  - manual-review
title: Resgate pausado por duplicidade ativa — Ana Dos Santos — cliente 11482
event_date: '2026-05-22'
channel: internal
participants:
  - Ana Dos Santos
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11482'
  crm_note_id: '18930'
  branch_step: '4'
  duplicate_broker_id: '24'
---
## Resumo
Durante a revalidação do Resgate da cliente Ana Dos Santos (client_id 11482), foi encontrado o mesmo telefone/JID em outro atendimento ativo (broker_id 24).

## Ação tomada
O fluxo de Resgate foi pausado no CRM com `stopped_reason=manual_review_duplicate_active_broker`, sem novo envio de WhatsApp.

## Evidência operacional
- CRM com broker_id=35 e status `Em Atendimento` confirmados.
- Cliente sem agendamento ativo no momento da verificação.
- Duplicidade ativa detectada por telefone/JID em outro atendimento.
- Contexto operacional ligado ao [[reno-hub]].

## Próximo passo
Aguardar revisão manual antes de qualquer retomada do atendimento.
