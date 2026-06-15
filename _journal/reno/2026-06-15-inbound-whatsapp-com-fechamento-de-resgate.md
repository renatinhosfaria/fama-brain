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
  - resgate
  - first-contact-handoff
title: Inbound WhatsApp com fechamento de Resgate
event_date: '2026-06-15'
occurred_at: '2026-06-15T17:37:53Z'
channel: whatsapp
participants:
  - reno
  - 'client:11237'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11237'
  crm_note_id: '20142'
  session_id: 20260615_193752_4764e7a0
  resgate_sent_ledger_id: '82'
  resgate_scheduled_ledger_id: '200'
  source_event_key: >-
    reno_whatsapp_inbound_qualification:20260615_193752_4764e7a0:136180712607747_lid
---
[[reno-hub]]

Evento operacional silencioso: inbound WhatsApp recebido e cliente localizado no CRM com broker_id=35.

Resultado do handoff de primeiro contato: a funcao estruturada retornou no_sent_first_contact, entao nao foi criada metrica de primeira resposta nem avanco manual de status por inferencia.

Persistencia executada: status CRM preservado em Em Atendimento; Resgate estruturado fechado por resposta do cliente; branch meta_data.reno_followup.resgate alinhada para enabled=false, next_run_at=null e stopped_reason=client_replied; Repescagem ja estava encerrada por client_replied.

Nenhuma mensagem foi enviada ao cliente nesta rotina.
