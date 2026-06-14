---
schema_version: 1
type: interaction
status: active
created: '2026-06-14'
updated: '2026-06-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp-inbound
  - first-contact
  - repescagem
  - crm-readback
title: Inbound WhatsApp silencioso - handoff operacional
event_date: '2026-06-14'
occurred_at: '2026-06-14T14:30:58Z'
channel: whatsapp
participants:
  - reno
  - cliente
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.98
external_ids:
  client_id: '11716'
  session_id: 20260614_163058_b31ec57a
  first_contact_id: '114'
  crm_note_id: '19932'
  first_contact_responded_event_id: '419'
  hook: reno_whatsapp_inbound_qualification
---
[[reno-hub]]

Evento curado de atendimento inbound WhatsApp.

Resumo operacional:
- Cliente CRM elegivel no escopo Reno (broker_id=35).
- Mensagem sanitizada deste payload: [image received].
- A chamada canonica de primeiro contato para este payload retornou responded_before_sent_at; portanto este payload nao gerou metrica de primeira resposta.
- Readback posterior no CRM confirmou first_contact.responded registrado por inbound subsequente na mesma sessao, com opening_context_bucket=specific_property_named e status atual Em Atendimento.
- Branch repescagem ficou encerrada com stopped_reason=client_replied; nao havia branch resgate ativa.
- Nota CRM de auditoria adicionada para este payload; sem envio WhatsApp nesta rotina silenciosa.
