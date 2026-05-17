---
schema_version: 1
type: interaction
status: active
created: '2026-05-17'
updated: '2026-05-17'
source: agent-generated
author_agent: renato
tags:
  - reno
  - repescagem
  - needs-repair
  - crm
title: Repescagem needs_repair — Geovanna Ribeiro
event_date: '2026-05-17'
occurred_at: '2026-05-17T10:34:28-03:00'
channel: crm
participants:
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.97
external_ids:
  client_id: '11404'
  crm_note_id: '18170'
  flow: repescagem
  step: '1'
---
## Resumo
Cliente em repescagem step 1 identificado como candidato estritamente devido, mas o reenvio foi bloqueado por regra anti-catch-up: o último envio do fluxo ocorreu em 2026-05-16T19:50:34-03:00 e ainda não completou 18h.

## Ação tomada
A branch de repescagem foi preservada e o `next_run_at` foi normalizado para 2026-05-18T09:10:00-03:00, mantendo o step 1 como último envio confirmado e preparando o step 2 para a próxima janela oficial futura.

## Evidência operacional
CRM confirmou `broker_id=35`, status exatamente `Não Respondeu`, branch ativa e sem `recovered_at` visível na branch atual.

## Próximo passo
Aguardar a janela futura do step 2 e retomar a repescagem sem catch-up.

[[reno-hub]]
