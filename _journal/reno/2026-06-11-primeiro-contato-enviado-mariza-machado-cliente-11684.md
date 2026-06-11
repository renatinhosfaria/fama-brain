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
  - webhook
  - famachat-created
  - whatsapp
  - nao-respondeu
title: Primeiro contato enviado — Mariza Machado (cliente 11684)
event_date: '2026-06-11'
occurred_at: '2026-06-11T11:41:37.578Z'
channel: WhatsApp
participants:
  - Reno
  - Mariza Machado
mentions_entity:
  - 'cliente:11684'
  - 'empreendimento:22'
  - 'first_contact:75'
related:
  - FamaChat
  - Union Vista
  - Grand Ville
  - reno-hub
confidence: 1
external_ids:
  case_id: '67'
  client_id: '11684'
  delivery_id: '1781177955092'
  first_contact_id: '75'
  idempotency_key: '3852_1781177955063'
  payload_hash: 9537c7ca528a693e8f1f0fbe16688f80a5af0547b4e98edd218e2e3712e464d9
  source_webhook_event_id: '3852'
---
Relacionado a [[reno-hub]].

Primeiro contato live do Reno enviado via WhatsApp para cliente elegível do FamaChat.

Resumo operacional:
- Cliente CRM: Mariza Machado (client_id 11684), broker_id=35.
- Origem: Facebook Ads.
- Contexto usado: interesse no empreendimento Union Vista, bairro Grand Ville.
- Mensagens enviadas: abertura curta contextual e pergunta de baixa fricção sobre a região.
- Resultado WhatsApp: envio validado pelo provider com validação onWhatsApp.
- Ledger de primeiro contato: first_contact_id 75, status sent, processing_mode live.
- CRM após envio: status atualizado de Sem Atendimento para Não Respondeu.
- Repescagem inicializada: step 0, enabled=true, próxima execução prevista para 2026-06-11T19:10:00-03:00.
- Próximo passo: aguardar primeira resposta; se responder, mover para Em Atendimento e iniciar qualificação consultiva.
