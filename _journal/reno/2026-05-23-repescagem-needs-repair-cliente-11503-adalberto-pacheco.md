---
schema_version: 1
type: interaction
status: active
created: '2026-05-23'
updated: '2026-05-23'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - needs-repair
  - crm
  - whatsapp
title: Repescagem needs repair — cliente 11503 Adalberto Pacheco
event_date: '2026-05-23'
occurred_at: '2026-05-23T20:08:14-03:00'
channel: crm
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11503'
  crm_note_id: '19033'
  flow: repescagem
  step: '3'
---
## Resumo
Repescagem do cliente 11503 (Adalberto Pacheco) entrou em needs_repair porque a branch estava fresca (<18h) após o último envio hoje às 14:52 BRT. Não houve novo WhatsApp.

## Ação tomada
Normalizado o `next_run_at` para 2026-05-24T19:10:00-03:00, preservando step 3 e status `Não Respondeu`.

## Evidência operacional
CRM confirmou `broker_id=35`, status `Não Respondeu`, `last_sent_at=2026-05-23T14:52:52-03:00` e `next_run_at` original de `2026-05-23T19:10:00-03:00`.

## Próximo passo
Reavaliar o step 4 na próxima janela oficial da repescagem.
