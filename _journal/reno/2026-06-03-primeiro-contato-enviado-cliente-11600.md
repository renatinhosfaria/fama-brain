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
  - famachat-created
  - whatsapp
  - crm
title: Primeiro contato enviado — cliente 11600
event_date: '2026-06-03'
occurred_at: '2026-06-03T11:11:23-03:00'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11600'
  message_id: 3EB03BBEDC0B51372AA57F
  route: famachat-created
  event_type: cliente.created
---
Evento curado do primeiro contato Reno.

Cliente CRM: 11600 — Noroel Alcantara da Silval0.
Fluxo: famachat-created / cliente.created, reprocessamento manual autorizado por Renato após correção do messaging no platform webhook.
Escopo validado: cliente existente no CRM, broker_id=35, status inicial Sem Atendimento.
Contexto validado: empreendimento Union Vereda, bairro Jaraguá, zona Oeste.
WhatsApp: primeiro contato enviado com template first_contact_opening_v2 para 553496410870@s.whatsapp.net; validação onWhatsApp; mirror=true; message_id=3EB03BBEDC0B51372AA57F.
CRM: status atualizado condicionalmente para Não Respondeu; nota CRM registrada; meta_data.reno_followup.repescagem inicializada com step=0, entry_shift=manha e next_run_at=2026-06-03T14:10:00-03:00.
Próximo passo: aguardar resposta do cliente; se responder, condução passa para qualificação WhatsApp e interrompe repescagem conforme regra operacional.

Hub: [[reno-hub]]
