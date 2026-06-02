---
schema_version: 1
type: interaction
status: active
created: '2026-06-02'
updated: '2026-06-02'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - webhook
  - falha-whatsapp
title: Falha de primeiro contato — cliente 11600
event_date: '2026-06-02'
occurred_at: '2026-06-02T20:08:26.388Z'
channel: webhook/famachat-created
participants:
  - Reno
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11600'
  delivery_event_id: evt_3768
  idempotency_key: '3768_1780441671095'
  crm_note_id: '19286'
---
Evento `cliente.created` da rota `famachat-created` processado para o cliente 11600. CRM validou cliente existente, `broker_id=35`, status `Sem Atendimento`, origem Facebook Ads e interesse no empreendimento Union Vereda. Não houve envio de WhatsApp porque o caminho/ferramenta autorizada de envio WhatsApp não estava disponível nesta sessão do webhook. Nota CRM registrada (id 19286). Status preservado e repescagem não inicializada.
