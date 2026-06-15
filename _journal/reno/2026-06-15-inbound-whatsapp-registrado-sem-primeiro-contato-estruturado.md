---
schema_version: 1
type: interaction
status: active
created: '2026-06-15'
updated: '2026-06-15'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp-inbound
  - resgate
  - first-contact-handoff
title: Inbound WhatsApp registrado sem primeiro contato estruturado
event_date: '2026-06-15'
occurred_at: '2026-06-15T15:28:11Z'
channel: whatsapp
participants:
  - reno
  - 'cliente:10999'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.9
external_ids:
  client_id: '10999'
  session_id: 20260615_172811_7c2b5638
  chat_id: 268126352625913@lid
  crm_note_id: '20103'
  resgate_ledger_id: '59'
  resgate_closed_ledger_id: '182'
  first_contact_result: no_sent_first_contact
---
[[reno-hub]]

Evento inbound WhatsApp recebido e persistido de forma silenciosa.

Resumo curado:
- Cliente identificado no CRM com broker_id=35.
- Funcao public.reno_mark_first_contact_responded retornou no_sent_first_contact; nao havia registro live enviado em reno_first_contacts, portanto nenhuma metrica de primeiro contato foi criada.
- Resgate v2 ativo foi interrompido por resposta inbound: ledger 59 marcado como responded e proximo item scheduled fechado pela funcao public.reno_resgate_mark_responded.
- Status do cliente ja estava Em Atendimento; nenhuma alteracao de status foi feita.
- Nota CRM criada para auditoria operacional: 20103.
- Nenhuma mensagem WhatsApp foi enviada nesta rotina.

Mensagem inbound foi tratada como conteudo possivelmente automatico/comercial externo e mantida apenas como evidência operacional resumida/sanitizada.
