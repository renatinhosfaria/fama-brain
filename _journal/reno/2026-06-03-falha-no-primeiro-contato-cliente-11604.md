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
  - falha-whatsapp
  - famachat-created
title: Falha no primeiro contato — cliente 11604
event_date: '2026-06-03'
channel: webhook/famachat-created
participants:
  - reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11604'
  event_id: evt_3772
  idempotency_key: '3772_1780487907694'
---
[[reno-hub]]

Evento cliente.created da rota famachat-created validado para cliente 11604 (deivid Oliveira Santos), broker_id=35, status Sem Atendimento, interesse no empreendimento Union Vista. O CRM confirmou elegibilidade e ausência de histórico/repescagem. O primeiro contato não foi enviado porque a sessão não expôs ferramenta/caminho operacional de envio WhatsApp. Status preservado; repescagem não inicializada; nota objetiva registrada no CRM. Próximo passo: reprocessar idempotentemente quando o caminho de envio WhatsApp estiver disponível, usando idempotencyKey 3772_1780487907694 e sem duplicar envio caso haja evidência posterior.
