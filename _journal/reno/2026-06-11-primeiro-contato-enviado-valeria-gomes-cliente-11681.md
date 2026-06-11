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
  - fama-chat
  - union-vista
  - facebook-ads
title: Primeiro contato enviado — Valeria Gomes (cliente 11681)
event_date: '2026-06-11'
occurred_at: '2026-06-11T00:45:44.529Z'
channel: WhatsApp
participants:
  - Reno
  - Valeria Gomes
mentions_entity:
  - 'client:11681'
  - 'empreendimento:22'
related:
  - reno-hub
  - 'first_contact:72'
  - 'webhook_event:3849'
confidence: 1
external_ids:
  client_id: '11681'
  first_contact_id: '72'
  idempotency_key: '3849_1781138627394'
  payload_hash: 2ee87cef2f004831cf236fb6ee18c8edd8a20f1c6921a8b3c9ff6f157602c862
  source_webhook_event_id: '3849'
---
[[reno-hub]]

Primeiro contato live do Reno enviado com sucesso pelo WhatsApp para cliente elegível do FamaChat.

Resumo operacional:
- Cliente: Valeria Gomes (client_id 11681).
- Escopo confirmado no CRM: broker_id=35, status inicial Sem Atendimento.
- Origem: Facebook Ads.
- Contexto usado na abertura: interesse no empreendimento Union Vista, bairro Grand Ville.
- Mensagens enviadas: cumprimento/apresentação/contexto e pergunta curta sobre interesse na região.
- WhatsApp validado pelo caminho de envio: onWhatsApp, JID validado no CRM.
- Ledger de primeiro contato: first_contact_id 72, status sent, processing_mode live.
- CRM após envio: status Não Respondeu; nota criada no FamaChat; repescagem inicializada com step=0, enabled=true, entry_shift=noite, next_run_at=2026-06-11T09:10:00-03:00.

Próximo passo: aguardar primeira resposta. Se a cliente responder, mover de Não Respondeu para Em Atendimento apenas se o status ainda estiver exatamente nesse estado e seguir qualificação consultiva.
