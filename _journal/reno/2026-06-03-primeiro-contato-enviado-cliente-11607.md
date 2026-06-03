---
schema_version: 1
type: interaction
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - famachat-created
  - whatsapp
  - cliente-11607
title: Primeiro contato enviado — cliente 11607
event_date: '2026-06-03'
occurred_at: '2026-06-03T13:16:25-03:00'
channel: webhook/famachat-created
participants:
  - Reno
  - Marcos Felipe
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11607'
  idempotency_key: '3775_1780503140442'
  message_id: 3EB04D50AB708E84DE8DD4
  property_id: '25'
---
Registro operacional ligado a [[reno-hub]].

Evento curado de primeiro contato do Reno.

- Cliente CRM: 11607 — Marcos Felipe.
- Escopo validado no CRM: broker_id=35; status inicial Sem Atendimento.
- Origem: Facebook Ads.
- Interesse validado: Garden Sul, Jardim Sul, Zona Sul.
- WhatsApp enviado com sucesso validado para JID confirmado, com mirror da sessão.
- Template: first_contact_opening_v2.
- Resultado CRM: nota registrada, status atualizado para Não Respondeu e repescagem inicializada em step 0 para 2026-06-03T19:10:00-03:00.
- Idempotência: 3775_1780503140442.
- Message ID técnico: 3EB04D50AB708E84DE8DD4.

Próximo passo: aguardar resposta do cliente; se não responder, seguir régua de Repescagem conforme meta_data do FamaChat.
