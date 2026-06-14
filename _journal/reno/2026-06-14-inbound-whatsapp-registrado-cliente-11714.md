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
  - qualificacao
  - operacional
title: Inbound WhatsApp registrado — cliente 11714
event_date: '2026-06-14'
occurred_at: '2026-06-14T12:36:45Z'
channel: whatsapp
participants:
  - reno
  - 'cliente:11714'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11714'
  first_contact_id: '112'
  first_contact_responded_event_id: '399'
  crm_note_id: '19902'
  session_id: 20260614_135059_6c669863
  source_event_key: >-
    reno_whatsapp_inbound_qualification:20260614_135059_6c669863:8632984989752_lid
---
[[reno-hub]]

Evento inbound WhatsApp registrado para cliente CRM elegível do Reno (broker_id=35).

Resumo curado: cliente enviou nova informação sobre Sofia Charlotte cosméticos e relatou que já procurou em cartório sem encontrar registro.

Persistência operacional: chamada a `public.reno_mark_first_contact_responded` retornou `already_responded`; readback confirmou `first_contact.responded` já existente, `opening_context_bucket=specific_property_named`, tempo de primeira resposta de 31s e Repescagem encerrada por `client_replied`. Não havia Resgate ativo. Nota CRM adicional registrada para este inbound. Nenhuma mensagem foi enviada ao cliente nesta execução.
