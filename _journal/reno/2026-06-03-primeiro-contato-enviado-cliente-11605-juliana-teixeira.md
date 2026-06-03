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
title: Primeiro contato enviado — cliente 11605 Juliana Teixeira
event_date: '2026-06-03'
channel: webhook/famachat-created
participants:
  - reno
  - Juliana Teixeira
confidence: 1
external_ids:
  client_id: '11605'
  message_id: 3EB03E47F2C831EAFB2383
  event_type: cliente.created
---
[[reno-hub]]

Evento curado de primeiro contato Reno.

- Cliente CRM: 11605 — Juliana Teixeira.
- Origem: Facebook Ads / cliente.created, reprocessamento manual autorizado por Renato Faria após habilitar messaging no platform webhook em 2026-06-03.
- Escopo validado: broker_id=35, status inicial Sem Atendimento, telefone/JID tentável.
- Empreendimento validado: Union Vereda, bairro Jaraguá, zona Oeste.
- WhatsApp enviado com sucesso validado para 553493058450@s.whatsapp.net.
- Template: first_contact_opening_v2.
- Message ID técnico: 3EB03E47F2C831EAFB2383.
- Persistência CRM: nota de envio registrada; status atualizado condicionalmente para Não Respondeu; branch reno_followup.repescagem inicializada step=0.
- Próximo passo: aguardar primeira resposta da cliente; se responder, condução passa para qualificação WhatsApp e status deve avançar para Em Atendimento somente se ainda estiver em Não Respondeu.
