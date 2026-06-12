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
  - whatsapp
  - garden-sul
title: Primeiro contato enviado — Larissa Prado (cliente 11692)
event_date: '2026-06-12'
occurred_at: '2026-06-12T01:40:29.680Z'
channel: WhatsApp
participants:
  - reno
  - Larissa Prado
mentions_entity:
  - 'client:11692'
  - 'empreendimento:Garden Sul'
  - reno-hub
related:
  - reno-hub
  - 'first_contact:91'
  - 'sistema_webhook_event:3858'
confidence: 1
external_ids:
  client_id: '11692'
  first_contact_id: '91'
  idempotency_key: '3858_1781228303465'
  webhook_event_id: evt_3858
---
[[reno-hub]]

Primeiro contato live enviado pelo Reno via WhatsApp para cliente elegível do broker_id=35.

Resumo operacional:
- Cliente: Larissa Prado (client_id 11692)
- Origem: Facebook Ads / cliente.created
- Empreendimento de contexto: Garden Sul, Jardim Sul
- Mensagem: abertura curta em duas mensagens, perguntando se a região faz sentido para a busca da cliente.
- Resultado CRM: primeiro contato marcado como sent no ledger, WhatsApp validado, status do cliente alterado de Sem Atendimento para Não Respondeu e repescagem inicializada.
- Próximo passo: aguardar primeira resposta; inbound deve registrar first_contact.responded e mover para Em Atendimento se ainda estiver em Não Respondeu.

Referências operacionais: first_contact_id=91; event_id=evt_3858; idempotency_key=3858_1781228303465; opening_context_bucket=specific_property_named.
