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
title: Falha de primeiro contato — cliente 11597 Ale Villar
event_date: '2026-06-02'
occurred_at: '2026-06-02T20:37:00.867Z'
channel: webhook/famachat-created
participants:
  - reno
confidence: 1
external_ids:
  client_id: '11597'
  delivery_event_id: evt_3765
  idempotency_key: '3765_1780432620867'
  property_id: '161'
---
[[reno-hub]]

Evento cliente.created da rota famachat-created validou cliente 11597 no CRM como elegível para o Reno (broker_id=35), status Sem Atendimento, origem Facebook Ads e interesse no empreendimento Union Vereda (Jaraguá, zona Oeste). O primeiro WhatsApp não foi enviado porque a sessão do webhook não expôs ferramenta/caminho operacional de envio WhatsApp. Status preservado; repescagem não inicializada; nota objetiva registrada no CRM. Próximo passo: reprocessar de forma idempotente quando o envio WhatsApp estiver disponível, antes de qualquer avanço de status/meta_data.
