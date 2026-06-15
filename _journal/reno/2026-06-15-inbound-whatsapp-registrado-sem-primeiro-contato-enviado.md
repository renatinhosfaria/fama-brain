---
schema_version: 1
type: interaction
status: active
created: '2026-06-15'
updated: '2026-06-15'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp-inbound
  - operational-persistence
  - first-contact-handoff
title: Inbound WhatsApp registrado sem primeiro contato enviado
event_date: '2026-06-15'
occurred_at: '2026-06-15T17:29:29.241943Z'
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
  client_id: '11232'
  session_id: 20260615_192928_33740f2e
  source_event_key: >-
    reno_whatsapp_inbound_qualification:20260615_192928_33740f2e:96774505148456@lid
  crm_note_id: '20133'
---
[[reno-hub]]

Inbound WhatsApp recebido pelo hook reno_whatsapp_inbound_qualification e identificado no CRM como cliente elegivel do Reno (broker_id=35).

Mensagem sanitizada: "Que ta falado".

Persistencia operacional: chamada canonica reno_mark_first_contact_responded retornou no_sent_first_contact, portanto nao foi criado KPI de primeira resposta nem houve avanco de status por inferencia. Readback confirmou status Em Atendimento, nenhum first_contact.responded e nenhum ledger de primeiro contato para este cliente. Branches de repescagem e resgate estavam inativas. Nota CRM adicional registrada para continuidade operacional.

Sem envio de WhatsApp nesta execucao.
