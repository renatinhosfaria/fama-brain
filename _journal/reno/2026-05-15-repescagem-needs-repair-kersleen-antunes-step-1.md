---
schema_version: 1
type: interaction
status: active
created: '2026-05-15'
updated: '2026-05-15'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - needs-repair
  - cadence
title: Repescagem needs_repair — Kersleen Antunes (step 1)
event_date: '2026-05-15'
occurred_at: '2026-05-15T12:22:51-03:00'
channel: crm
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.98
external_ids:
  client_id: '11378'
  client_name: Kersleen Antunes
  crm_note_id: '17898'
---
## Resumo
Cliente 11378, Kersleen Antunes, entrou em repescagem step 1 com janela vencida, mas o envio foi bloqueado por regra anti-catch-up: o último WhatsApp da repescagem ocorreu em 14/05 23:25 BRT, abaixo da janela mínima de 18h.

## Ação tomada
Cadência normalizada para o próximo envio em 16/05 09:10 BRT. Nenhum novo WhatsApp foi enviado nesta execução.

## Evidência operacional
- CRM confirmando broker_id=35 e status 'Não Respondeu'.
- Branch repescagem preservada com step=1, enabled=true e last_sent_at mantido.
- Nota CRM registrada com a normalização de cadência.

## Próximo passo
Aguardar a nova janela oficial do step 2.

## Links relacionados
[[reno-hub]]
