---
schema_version: 1
type: interaction
status: active
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp
  - inbound
  - idempotencia
  - resgate
title: >-
  Rotina silenciosa preservou Resgate após inbound já processado — Bruna
  Oliveira
event_date: '2026-05-19'
channel: whatsapp
participants:
  - Bruna Oliveira
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11450'
  message_id: AC5B3D07B975125DF839EB15B349C481
  crm_note_initial: '18632'
  crm_note_correction: '18633'
  session_id: 20260519_205820_22485fa2
---
## Resumo
Rotina silenciosa de WhatsApp inbound associou o evento ao cliente Bruna Oliveira (client_id 11450, broker_id=35). O conteúdo recebido foi "Faz sim!!".

## Ação operacional
O CRM já continha evidência de que o mesmo inbound havia sido processado pelo handler cliente-facing e gerado outbound normal de convite à visita. A primeira atualização silenciosa interrompeu o Resgate, mas a rotina corrigiu a idempotência restaurando o Resgate step 0 armado pelo outbound posterior.

## Evidência operacional
- CRM cliente 11450: status Em Atendimento.
- Nota CRM 18630: inbound útil já processado pelo handler cliente-facing.
- Nota CRM 18631: outbound normal de convite à visita enviado e Resgate rearmado.
- Nota CRM 18633: correção de idempotência e restauração do Resgate.
- Branch resgate final: enabled=true, step=0, next_run_at=2026-05-19T16:31:40-03:00, stopped_reason=null.

## Próximo passo
Aguardar resposta ao convite de visita; a rotina silenciosa não enviou mensagem ao cliente.

## Links relacionados
- [[reno-hub]]
