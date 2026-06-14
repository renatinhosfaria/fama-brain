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
  - whatsapp-inbound
  - first-contact-responded
  - crm-readback
title: Inbound WhatsApp reconciliado — cliente 11714
event_date: '2026-06-14'
occurred_at: '2026-06-14T12:53:03Z'
channel: whatsapp
participants:
  - reno
  - 'cliente:11714'
mentions_entity:
  - '[[reno-hub]]'
related:
  - 'client:11714'
  - 'first_contact:112'
confidence: 1
external_ids:
  client_id: '11714'
  first_contact_id: '112'
  session_id: 20260614_135059_6c669863
---
[[reno-hub]]

Inbound WhatsApp recebido e reconciliado com o CRM/FamaChat.

Resumo operacional curado:
- Cliente elegível do Reno: CRM confirmou broker_id=35 e status Em Atendimento.
- Primeiro contato já estava marcado como respondido; não houve nova métrica de primeira resposta nem avanço manual de status.
- Readback confirmou first_contact_id=112, responded_at=2026-06-14T08:50:59.902166-03:00, time_to_first_response_seconds=31 e opening_context_bucket=specific_property_named.
- Evento first_contact.responded existe uma vez no CRM e a repescagem segue encerrada com stopped_reason=client_replied; não há branch ativa de resgate.
- Conteúdo comercial do inbound: cliente está tentando antecipar/quitar pendências para finalizar mais rápido antes de investir/assumir compra imobiliária, indicando postura prudente de viabilidade.
- Sem envio de WhatsApp nesta rotina silenciosa.
