---
schema_version: 1
type: interaction
status: active
created: '2026-06-10'
updated: '2026-06-10'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - whatsapp
  - famachat-created
  - union-vereda
title: Primeiro contato enviado — Francisco Bruno
event_date: '2026-06-11'
occurred_at: '2026-06-11T00:17:55.252Z'
channel: WhatsApp
participants:
  - Reno
  - Francisco Bruno
mentions_entity:
  - Francisco Bruno
  - Union Vereda
  - reno-hub
related:
  - '[[reno-hub]]'
  - 'client_id:11680'
  - 'empreendimento:161'
  - 'first_contact_id:71'
confidence: 1
external_ids:
  client_id: '11680'
  delivery_id: '1781136902725'
  first_contact_id: '71'
  idempotency_key: '3848_1781136902704'
  source_webhook_event_id: '3848'
---
Contexto Reno: [[reno-hub]].

Primeiro contato live do Reno enviado via WhatsApp para cliente elegível no CRM.

Resumo:
- Cliente CRM: Francisco Bruno (client_id 11680), broker_id 35.
- Origem: Facebook Ads.
- Contexto usado: interesse no empreendimento Union Vereda, bairro Jaraguá.
- Mensagem enviada em duas partes: apresentação contextual do Reno/Fama e pergunta de baixa fricção sobre a região.
- Resultado operacional: envio WhatsApp validado pelo gateway/bridge; CRM atualizado de Sem Atendimento para Não Respondeu.
- Repescagem inicializada: step 0, enabled=true, próxima janela em 2026-06-11T09:10:00-03:00.
- Situação atual: aguardando primeira resposta do cliente.

Referências operacionais: first_contact_id 71; source_webhook_event_id 3848; idempotency_key 3848_1781136902704.
