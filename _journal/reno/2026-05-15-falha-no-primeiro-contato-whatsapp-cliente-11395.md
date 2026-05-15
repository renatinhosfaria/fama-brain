---
schema_version: 1
type: interaction
status: active
created: '2026-05-15'
updated: '2026-05-15'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - whatsapp-falha
  - famachat-created
title: Falha no primeiro contato WhatsApp — cliente 11395
event_date: '2026-05-15'
occurred_at: '2026-05-15T18:27:44.739Z'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11395'
  event_id: evt_3563
  idempotency_key: '3563_1778869664739'
  property_id: '67'
---
Contexto: [[reno-hub]]

Evento cliente.created na rota famachat-created para cliente CRM 11395 (Antônio Vidal), broker_id=35, origem Facebook Ads, empreendimento Place+Arbi.

Decisão operacional: primeiro contato não enviado. O WhatsApp retornou destinatário indisponível/não encontrado nas tentativas para o JID do CRM e para a variação com nono dígito.

Efeitos: status CRM preservado em Sem Atendimento; meta_data.reno_followup.repescagem não inicializada; nota objetiva registrada no CRM. Próximo passo: depende de contato válido ou ação manual no FamaChat.
