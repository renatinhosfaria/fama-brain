---
schema_version: 1
type: interaction
status: active
created: '2026-06-11'
updated: '2026-06-11'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - famachat-created
  - whatsapp
  - first-contact
title: Primeiro contato enviado — cliente 11693 Jonatas Batista de Oliveira
event_date: '2026-06-11'
occurred_at: '2026-06-11T23:07:18-03:00'
channel: WhatsApp
participants:
  - reno
  - 'cliente:11693'
mentions_entity:
  - 'cliente:11693'
  - 'empreendimento:22'
  - Union Vista
  - reno-hub
related:
  - 'reno_first_contacts:92'
  - 'reno_events:155'
  - 'clientes_id_anotacoes:19762'
  - reno-hub
confidence: 1
external_ids:
  case_id: '74'
  client_id: '11693'
  crm_note_id: '19762'
  delivery_id: '1781229929579'
  first_contact_id: '92'
  idempotency_key: '3859_1781229929547'
  reno_event_id: '155'
---
Registro vinculado a [[reno-hub]].

Primeiro contato live do Reno enviado com sucesso via WhatsApp para cliente elegível do FamaChat.

Resumo operacional:
- Cliente: 11693 — Jonatas Batista de Oliveira.
- CRM validado: broker_id=35; status inicial Sem Atendimento.
- Origem: Facebook Ads.
- Contexto usado na abertura: interesse no Union Vista, bairro Grand Ville.
- Mensagens enviadas em dois turnos curtos: apresentação/contexto e pergunta se procura imóvel nessa região.
- Persistência canônica: reno_first_contacts id 92 marcado como sent; whatsapp_validated=true; opening_context_bucket=specific_property_named.
- Status CRM: atualizado condicionalmente para Não Respondeu.
- Repescagem: branch inicializada com step=0 e next_run_at=2026-06-12T19:10:00-03:00.
- Nota CRM criada: clientes_id_anotacoes id 19762.

Próximo passo: aguardar primeira resposta do cliente; inbound confirmado deve acionar handoff para Em Atendimento via função canônica de resposta.
