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
  - manual-reprocess
title: Primeiro contato enviado — cliente 11597
event_date: '2026-06-03'
occurred_at: '2026-06-03T10:59:24-03:00'
channel: webhook/famachat-created
participants:
  - reno
  - 'cliente:11597'
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11597'
  message_id: 3EB0EAF0C590BFA9F77A08
  route: famachat-created
---
[[reno-hub]]

Evento curado do primeiro contato Reno.

Cliente CRM: 11597 — Ale Villar.
Escopo confirmado no CRM: broker_id=35, status inicial Sem Atendimento, origem Facebook Ads.
Contexto validado: empreendimento Union Vereda, bairro Jaraguá, zona Oeste.
Ação: primeiro WhatsApp enviado com mensagem first_contact_opening_v2 para abrir diagnóstico inicial.
Evidência de envio: WhatsApp validado onWhatsApp, message_id técnico 3EB0EAF0C590BFA9F77A08, outbound espelhado na sessão.
Persistência CRM: notas registradas; status alterado condicionalmente para Não Respondeu; repescagem inicializada em meta_data com step 0, entry_shift manha e next_run_at 2026-06-03T13:10:00-03:00.
Próximo passo: aguardar resposta do cliente e, quando responder, conduzir por qualificação WhatsApp.
