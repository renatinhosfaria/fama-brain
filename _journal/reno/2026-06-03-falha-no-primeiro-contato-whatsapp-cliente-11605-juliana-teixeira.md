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
  - primeiro-contato
  - falha-whatsapp
  - famachat-created
title: Falha no primeiro contato WhatsApp — cliente 11605 Juliana Teixeira
event_date: '2026-06-03'
occurred_at: '2026-06-03T10:10:24-03:00'
channel: webhook/famachat-created
participants:
  - reno
  - 'cliente:11605'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11605'
  event_id: evt_3773
  idempotency_key: '3773_1780492095778'
  crm_note_id: '19291'
---
Relacionado: [[reno-hub]]

Evento `cliente.created` da rota `famachat-created` recebido para o cliente 11605 (Juliana Teixeira). CRM validou cliente existente, `broker_id=35`, status `Sem Atendimento`, origem Facebook Ads e empreendimento Union Vereda (Jaraguá, Oeste).

Idempotência do evento: `evt_3773` / `3773_1780492095778`.

Decisão operacional: WhatsApp não enviado porque nesta execução não havia ferramenta/caminho de envio WhatsApp disponível para realizar as tentativas previstas. Nota CRM registrada (`clientes_notas.id=19291`). Status preservado e `meta_data.reno_followup.repescagem` não inicializada.
