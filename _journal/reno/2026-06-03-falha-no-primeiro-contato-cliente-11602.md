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
  - first-contact
  - webhook
  - whatsapp-failure
  - crm-note
title: Falha no primeiro contato - cliente 11602
event_date: '2026-06-03'
occurred_at: '2026-06-03T06:42:28.536Z'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11602'
  idempotency_key: '3770_1780479708776'
  route: famachat-created
  crm_note_id: '19288'
---
[[reno-hub]]

Evento curado de primeiro contato via rota famachat-created.

Cliente CRM 11602 (Jose Galvao) validado como elegível do Reno: broker_id=35, status inicial Sem Atendimento, origem Facebook Ads, empreendimento validado Place+Arbi no Shopping Park, Zona Sul.

O WhatsApp não foi enviado porque a sessão do webhook não expôs ferramenta/caminho autorizado de envio WhatsApp. Nota CRM registrada (id 19288). Status preservado em Sem Atendimento e repescagem não inicializada.

Próximo passo operacional: reconciliar quando o canal/ferramenta de envio estiver disponível; não reenviar sem nova validação de idempotência e histórico CRM.
