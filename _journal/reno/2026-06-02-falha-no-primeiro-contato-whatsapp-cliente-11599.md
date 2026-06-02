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
  - primeiro-contato
  - cliente-created
  - falha-whatsapp
title: Falha no primeiro contato WhatsApp — cliente 11599
event_date: '2026-06-02'
occurred_at: '2026-06-02T22:29:59.998Z'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11599'
  crm_note_id: '19285'
  idempotency_key: '3767_1780439363329'
  property_id: '161'
  webhook_event_id: evt_3767
---
Relacionado a [[reno-hub]].

Evento cliente.created evt_3767 / idempotency_key=3767_1780439363329 validado no CRM para o cliente 11599 (Jeferson Rodrigues), broker_id=35, status Sem Atendimento. Empreendimento validado: Union Vereda, Jaraguá, zona Oeste. A mensagem de primeiro contato foi preparada com first_contact_opening_v2, mas não foi enviada porque não há caminho/ferramenta de envio WhatsApp disponível nesta execução. CRM recebeu nota objetiva de falha (nota 19285); status preservado em Sem Atendimento; meta_data/repescagem não inicializados. Próximo passo operacional: reprocessar idempotentemente quando o caminho de envio WhatsApp estiver disponível, checando antes a nota CRM e idempotency_key para evitar duplicidade.
