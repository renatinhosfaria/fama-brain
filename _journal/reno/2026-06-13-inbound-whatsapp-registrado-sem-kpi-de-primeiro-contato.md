---
schema_version: 1
type: interaction
status: active
created: '2026-06-13'
updated: '2026-06-13'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp-inbound
  - first-contact
  - repescagem
  - crm
title: Inbound WhatsApp registrado sem KPI de primeiro contato
event_date: '2026-06-13'
occurred_at: '2026-06-13T18:17:42.301901Z'
channel: whatsapp
participants:
  - reno
  - cliente
related:
  - '[[reno-hub]]'
confidence: 0.95
external_ids:
  client_id: '11702'
  crm_note_id: '19845'
  session_id: 20260613_201741_373a3462
  source_event_key: >-
    reno_whatsapp_inbound_qualification:20260613_201741_373a3462:121740948725864@lid
  first_contact_id: '100'
---
[[reno-hub]]

Evento operacional silencioso do Reno para inbound WhatsApp.

Resumo curado:
- Cliente identificado no CRM como elegível do Reno (`broker_id=35`).
- A função canônica `reno_mark_first_contact_responded` foi chamada, mas retornou `responded_before_sent_at`; por isso não foi criada métrica `first_contact.responded`, não houve `time_to_first_response_seconds` e o status não foi avançado por inferência.
- Readback confirmou `reno_first_contacts.responded_at=null` e ausência de evento `first_contact.responded` para este inbound.
- Branch `reno_followup.repescagem` estava ativa e foi interrompida como `client_replied`, com `enabled=false` e `next_run_at=null`, para evitar follow-up automático depois de resposta inbound.
- Nota CRM objetiva registrada para auditoria operacional.

Sem envio de WhatsApp nesta execução.
