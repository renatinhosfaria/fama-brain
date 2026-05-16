---
schema_version: 1
type: interaction
status: active
created: '2026-05-16'
updated: '2026-05-16'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - whatsapp
  - famachat
  - cliente-created
title: Primeiro contato enviado — cliente 11410 Moisés Ferreira
event_date: '2026-05-16'
occurred_at: '2026-05-16T13:46:43-03:00'
channel: whatsapp
participants:
  - Moisés Ferreira
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11410'
  event_id: evt_3578
  idempotency_key: '3578_1778949932174'
  message_id: 3EB0F78C4AFAA282EA6A69
  crm_note_id: '18051'
  property_id: '25'
---
## Resumo
Primeiro contato do Reno enviado via WhatsApp para Moisés Ferreira, cliente 11410, após validação no CRM/FamaChat.

## Ação tomada
Mensagem inicial enviada com a versão `first_contact_opening_v2`, contextualizando o interesse no empreendimento Garden Sul, no Jardim Sul, Zona Sul.

## Evidência operacional
- CRM validou cliente existente, `broker_id=35` e status inicial `Sem Atendimento`.
- WhatsApp validado para `553499768603@s.whatsapp.net`, message_id `3EB0F78C4AFAA282EA6A69`, com espelhamento confirmado.
- Nota CRM registrada: 18051.
- Status atualizado para `Não Respondeu`.
- Branch `meta_data.reno_followup.repescagem` inicializada com step 0 e próximo horário em 2026-05-16 19:10 BRT.

## Próximo passo
Aguardar primeira resposta do cliente. Se não responder, a régua de Repescagem poderá atuar no próximo horário configurado.

## Links relacionados
[[reno-hub]]
