---
schema_version: 1
type: interaction
status: active
created: '2026-06-14'
updated: '2026-06-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp
  - inbound
  - qualification
  - crm-readback
title: Inbound WhatsApp recebido - cliente 11718
event_date: '2026-06-14'
occurred_at: '2026-06-14T18:55:41Z'
channel: whatsapp
participants:
  - reno
  - 'cliente:11718'
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11718'
  first_contact_id: '116'
  crm_note_id: '20018'
  session_id: 20260614_182923_78dc9fd9
  hook_name: reno_whatsapp_inbound_qualification
---
Contexto canonico: [[reno-hub]]

Evento inbound silencioso do WhatsApp processado para cliente elegivel do Reno.

Resumo curado:
- Mensagem curta sanitizada recebida: "Ate 250".
- Interpretacao operacional: cliente informou faixa/orcamento ate 250.
- CRM confirmou broker_id=35 e status atual Em Atendimento.
- Funcao public.reno_mark_first_contact_responded retornou idempotencia: primeira resposta ja registrada anteriormente; metrica de primeiro contato preservada.
- Readback confirmou first_contact.responded, opening_context_bucket=specific_property_named, time_to_first_response_seconds=181 e repescagem encerrada por client_replied.
- Nota CRM adicional registrada para o fato novo de qualificacao; nenhum WhatsApp foi enviado nesta execucao.
