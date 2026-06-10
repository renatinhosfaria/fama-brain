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
  - famachat
  - live
  - cliente-11676
  - empreendimento-161
title: Primeiro contato enviado — cliente 11676 Ueberson Castro Coelho
event_date: '2026-06-10'
occurred_at: '2026-06-10T20:21:07.663Z'
channel: webhook/famachat-created
participants:
  - reno
  - 'cliente:11676'
mentions_entity:
  - 'cliente:11676'
  - 'empreendimento:161'
related:
  - 'reno_first_contacts:67'
  - 'sistema_webhook_events:3844'
confidence: 1
external_ids:
  client_id: '11676'
  crm_note_id: '19590'
  first_contact_id: '67'
  idempotency_key: '3844_1781122752577'
  payload_hash: 6a02d7598524bca8a00e296d3335ec6a720d521200969256e5470b2e95c51188
  provider_message_id: 3EB0DE308D17B5974FB773;3EB0C29316E15D3374EA28
  source_webhook_event_id: '3844'
---
[[reno-hub]]

Primeiro contato live do Reno enviado com sucesso via WhatsApp validado.

Resumo operacional:
- Cliente CRM: 11676 — Ueberson Castro Coelho.
- Escopo validado: broker_id=35, status inicial Sem Atendimento.
- Origem: Facebook Ads.
- Contexto usado na abertura: Union Vereda, bairro Jaraguá.
- Mensagens enviadas: saudação/contexto + pergunta se procura imóvel na região.
- Ledger: reno_first_contacts.id=67, status=sent, processing_mode=live, whatsapp_validated=true.
- CRM após persistência: status Não Respondeu; nota CRM id 19590 criada.
- Repescagem inicializada: enabled=true, step=0, entry_shift=tarde, next_run_at=2026-06-10T19:10:00-03:00.
- Próximo passo: aguardar primeira resposta; se responder, mover para Em Atendimento somente se ainda estiver em Não Respondeu.
