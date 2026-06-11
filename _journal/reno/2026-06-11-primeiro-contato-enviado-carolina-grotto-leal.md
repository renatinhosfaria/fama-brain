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
  - whatsapp
  - famachat
  - facebook-ads
  - union-vereda
title: Primeiro contato enviado — Carolina Grotto Leal
event_date: '2026-06-11'
occurred_at: '2026-06-11T16:03:36.498Z'
channel: WhatsApp
participants:
  - Carolina Grotto Leal
  - Reno
mentions_entity:
  - Union Vereda
  - Fama Negócios Imobiliários
  - reno-hub
related:
  - reno-hub
  - 'client_id:11685'
  - 'first_contact_id:84'
  - 'source_webhook_event_id:3853'
confidence: 1
external_ids:
  client_id: '11685'
  delivery_id: '1781193682869'
  first_contact_id: '84'
  idempotency_key: '3853_1781193682823'
  source_webhook_event_id: '3853'
---
Relacionado ao hub operacional [[reno-hub]].

Primeiro contato live do Reno enviado com sucesso pelo WhatsApp para cliente elegível do FamaChat.

Resumo curado:
- Cliente CRM: Carolina Grotto Leal (client_id 11685), broker_id 35.
- Origem: Facebook Ads / evento cliente.created.
- Contexto usado na abertura: interesse no Union Vereda, no Jaraguá.
- Mensagem enviada em duas partes: apresentação contextual do Reno/Fama e pergunta simples sobre a região.
- Resultado operacional: envio validado pelo WhatsApp, ledger reno_first_contacts marcado como sent, status CRM atualizado de Sem Atendimento para Não Respondeu.
- Repescagem inicializada: step 0, enabled=true, next_run_at 2026-06-11T19:10:00-03:00.
- Situação atual: aguardando primeira resposta da cliente.

Referências operacionais: first_contact_id 84; source_webhook_event_id 3853; idempotency_key 3853_1781193682823.
