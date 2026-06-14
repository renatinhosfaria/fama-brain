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
  - persistencia-operacional
title: Inbound WhatsApp - pedido de tabela de valores
event_date: '2026-06-14'
occurred_at: '2026-06-14T15:54:05.144039Z'
channel: whatsapp
participants:
  - reno
  - cliente-crm
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11716'
  crm_note_id: '19973'
  first_contact_id: '114'
  session_id: 20260614_163058_b31ec57a
  source_event_key: >-
    reno_whatsapp_inbound_qualification:20260614_163058_b31ec57a:108461161492665_lid
---
[[reno-hub]]

Cliente elegivel do Reno respondeu no WhatsApp perguntando se era possivel obter a tabela de valores.

Persistencia operacional:
- CRM identificado com broker_id=35 e status Em Atendimento.
- Primeiro contato ja constava respondido; funcao canonica retornou already_responded e readback confirmou responded_at, time_to_first_response_seconds=126 e opening_context_bucket=specific_property_named.
- Repescagem verificada como desabilitada com stopped_reason=client_replied; Resgate ausente.
- Nota CRM adicional registrada para o inbound atual. Nenhum WhatsApp enviado nesta rotina.
