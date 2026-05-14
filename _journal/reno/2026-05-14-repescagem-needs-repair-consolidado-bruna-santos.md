---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - needs_repair
  - crm
title: 'Repescagem needs_repair consolidado: Bruna Santos'
event_date: '2026-05-14'
occurred_at: '2026-05-14T20:08:59-03:00'
channel: crm
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11300'
  crm_note_id: '17874'
---
## Resumo
Bruna Santos (client_id 11300, broker_id 35) permaneceu em Não Respondeu, mas a repescagem step 2 estava dentro da mesma janela do dia e abaixo da cadência mínima de 18h. Nenhum novo WhatsApp foi enviado.

## Ação tomada
- Branch repescagem normalizada sem alterar o status do cliente.
- next_run_at ajustado para 2026-05-15T19:10:00-03:00, abrindo a janela oficial do próximo step.
- CRM recebeu nota objetiva de needs_repair.

## Próximo passo
Aguardar a janela futura do step 3 antes de retomar a fila.
