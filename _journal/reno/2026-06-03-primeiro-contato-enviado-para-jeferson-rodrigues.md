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
  - manual-reprocess
title: Primeiro contato enviado para Jeferson Rodrigues
event_date: '2026-06-03'
occurred_at: '2026-06-03T11:07:36-03:00'
channel: webhook/famachat-created
participants:
  - Reno
  - Jeferson Rodrigues
confidence: 1
external_ids:
  client_id: '11599'
  message_id: 3EB0F1ECF0E96E1EE38673
  route: famachat-created
  event_type: cliente.created
---
[[reno-hub]]

Evento curado de primeiro contato do Reno.

Cliente CRM: 11599 — Jeferson Rodrigues.
Fluxo: famachat-created / cliente.created, reprocessamento manual autorizado por Renato após habilitar messaging no platform webhook.
Escopo validado: broker_id=35.
Empreendimento usado no contexto: Union Vereda, Jaraguá, Oeste.
Resultado WhatsApp: enviado com validação onWhatsApp, mirrored=true, message_id=3EB0F1ECF0E96E1EE38673.
Mensagem cliente-facing enviada: "Olá Jeferson, tudo bem? Aqui é o Reno, da Fama. Estou retornando seu interesse no empreendimento Union Vereda, no Jaraguá, na Oeste.\n\nVocê está buscando um imóvel nessa região?"
CRM: nota de envio registrada, status atualizado condicionalmente para Não Respondeu e repescagem inicializada em step 0.
Repescagem: enabled=true, entry_shift=manha, next_run_at=2026-06-03T13:10:00-03:00, stopped_reason=null.
Próximo passo: aguardar primeira resposta do cliente; se responder, fluxo passa para qualificação WhatsApp.
