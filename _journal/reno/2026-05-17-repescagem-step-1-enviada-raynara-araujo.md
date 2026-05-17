---
schema_version: 1
type: interaction
status: active
created: '2026-05-17'
updated: '2026-05-17'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - whatsapp
  - follow-up
  - union-vereda
title: Repescagem step 1 enviada — Raynara Araújo
event_date: '2026-05-17'
occurred_at: '2026-05-17T20:17:46-03:00'
channel: whatsapp
participants:
  - Raynara Araújo
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.98
external_ids:
  client_id: '11444'
  crm_note_id: '18297'
---
## Resumo
Repescagem step 1 enviada para Raynara Araújo (client_id=11444) no contexto do Union Vereda.

## Ação tomada
Mensagem curta e consultiva enviada via WhatsApp às 20:17 BRT: "Oi, Raynara, tudo bem? Passei só pra retomar seu atendimento no Union Vereda. Hoje o que pesa mais pra você: valor ou localização?"

## Evidência operacional
- CRM validado: broker_id=35, status "Não Respondeu".
- Branch `meta_data.reno_followup.repescagem` estava em `step=0`, `enabled=true` e com `next_run_at` vencido.
- Envio WhatsApp validado com `whatsapp_validated=true` e `validated_jid=553497631140@s.whatsapp.net`.
- Follow-up persistido no CRM com `step=1` e próximo envio previsto para 2026-05-18 09:10 BRT.

## Próximo passo
Aguardar resposta do cliente. Se não houver inbound, o próximo follow-up seguirá a cadência oficial.

[[reno-hub]]
