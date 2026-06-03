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
  - famachat-created
  - whatsapp
  - crm
  - repescagem
title: Primeiro contato enviado — cliente 11604 Deivid Oliveira Santos
event_date: '2026-06-03'
occurred_at: '2026-06-03T11:27:50-03:00'
channel: webhook/famachat-created
participants:
  - reno
  - 'cliente:11604'
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11604'
  message_id: 3EB0E6928377F27761E3D6
  route: famachat-created
  event_type: cliente.created
---
[[reno-hub]]

Evento curado de primeiro contato do Reno no fluxo `famachat-created`.

- Cliente CRM: 11604 — Deivid Oliveira Santos.
- Escopo validado no CRM: broker_id=35, status inicial `Sem Atendimento`.
- Origem: Facebook Ads.
- Empreendimento validado: Union Vista, Grand Ville, Zona Leste.
- WhatsApp enviado com sucesso validado para JID CRM; message_id técnico `3EB0E6928377F27761E3D6`; mirror da sessão confirmado.
- Mensagem cliente-facing usada: abertura única `first_contact_opening_v2`, contextual ao Union Vista.
- Persistência CRM: nota de envio registrada, status atualizado para `Não Respondeu` e repescagem inicializada em `meta_data.reno_followup.repescagem` step=0.
- Próximo follow-up automático previsto: `2026-06-03T15:10:00-03:00`, salvo resposta real do cliente.

Próximo passo: aguardar primeira resposta do cliente e, se responder, conduzir pela qualificação WhatsApp; se não responder, a régua de Repescagem assume conforme branch CRM.
