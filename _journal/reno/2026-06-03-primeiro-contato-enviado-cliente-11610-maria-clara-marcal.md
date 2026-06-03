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
title: Primeiro contato enviado — cliente 11610 Maria Clara Marçal
event_date: '2026-06-03'
occurred_at: '2026-06-03T19:39:45-03:00'
channel: webhook/famachat-created
participants:
  - Reno
  - Maria Clara Marçal
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11610'
  crm_note_id: '19400'
  idempotency_key: '3778_1780526385447'
  property_id: '161'
  whatsapp_message_id: 3EB06A5CEFEC347573F316
---
Relacionado: [[reno-hub]].

Evento curado do primeiro contato Reno/FamaChat.

- Cliente CRM: 11610 — Maria Clara Marçal.
- Escopo validado no CRM: broker_id=35, status inicial `Sem Atendimento`.
- Origem: Facebook Ads / evento `cliente.created` / idempotency_key `3778_1780526385447`.
- Contexto validado: empreendimento 161, Union Vereda, bairro Jaraguá, zona Oeste.
- WhatsApp enviado com sucesso validado para `553484374207@s.whatsapp.net`; message_id `3EB06A5CEFEC347573F316`; validation_method `onWhatsApp`; mirror confirmado pela ferramenta.
- Mensagem usada: abertura `first_contact_opening_v2`, curta e contextual, perguntando se a cliente busca imóvel na região.
- CRM atualizado: nota id 19400 criada; status condicional aplicado para `Não Respondeu`.
- Repescagem inicializada em `meta_data.reno_followup.repescagem`: step 0, entry_shift `noite`, next_run_at `2026-06-04T09:10:00-03:00`.

Próximo passo: aguardar resposta da cliente. Se responder, migrar condução para qualificação WhatsApp e avançar `Não Respondeu -> Em Atendimento` se o status ainda estiver nesse estágio.
