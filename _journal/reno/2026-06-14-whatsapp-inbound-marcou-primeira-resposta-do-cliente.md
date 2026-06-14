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
  - first-contact-responded
  - persistencia-operacional
title: WhatsApp inbound marcou primeira resposta do cliente
event_date: '2026-06-14'
occurred_at: '2026-06-14T13:55:50Z'
channel: whatsapp
participants:
  - Reno
  - Guilherme Fernandes
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11715'
  first_contact_id: '113'
  reno_event_id: '415'
  crm_note_id: '19928'
  session_id: 20260614_155533_19108c96
---
[[reno-hub]]

Inbound WhatsApp de voz recebido. Cliente pediu lembrete, foto ou caracteristicas do imovel para recordar.

Persistencia no CRM: `public.reno_mark_first_contact_responded` registrou `first_contact.responded`; `time_to_first_response_seconds=602`; `opening_context_bucket=specific_property_named`; status permaneceu `Em Atendimento`; branch `reno_followup.repescagem` encerrado com `stopped_reason=client_replied`. Nenhuma mensagem foi enviada ao cliente nesta rotina silenciosa.
