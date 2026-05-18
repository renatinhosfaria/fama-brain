---
schema_version: 1
type: interaction
status: active
created: '2026-05-18'
updated: '2026-05-18'
source: agent-generated
author_agent: reno
tags:
  - interaction
  - atendimento
  - whatsapp
  - inbound
  - ruido-sistemico
  - reno
title: Inbound WhatsApp suprimido por ruído sistêmico — Giovanna Nogueira 11366
event_date: '2026-05-18'
occurred_at: '2026-05-18T11:46:44-03:00'
channel: whatsapp
participants:
  - Giovanna Nogueira
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.96
external_ids:
  client_id: '11366'
  crm_note_id: '18351'
  message_id: 3EB00EF67882B72EC19AF0
  session_id: 20260518_164255_d3e31dd6
  flow: whatsapp_inbound_silent_persistence
---
## Resumo
Evento inbound do WhatsApp associado à cliente Giovanna Nogueira (client_id 11366) foi classificado como conteúdo operacional/sistêmico auto-carregado, sem resposta comercial útil identificável da cliente.

## Ação tomada
- Cliente validada no CRM/FamaChat: client_id 11366, broker_id 35, status atual Em Atendimento.
- Nenhuma mensagem foi enviada ao cliente por esta rotina silenciosa.
- Nenhuma alteração de status ou meta_data foi aplicada por este hook.
- Nota CRM registrada: 18351.

## Evidência operacional
- CRM já registrava resposta real processada anteriormente nesta manhã, com status Em Atendimento.
- Repescagem já estava interrompida com stopped_reason=client_replied.
- Resgate step 0 permaneceu ativo porque este evento não foi tratado como resposta real da cliente.

## Próximo passo
Manter continuidade comercial normal a partir do último outbound do Reno; não usar este conteúdo sistêmico como fala da cliente.

## Links relacionados
[[reno-hub]]
