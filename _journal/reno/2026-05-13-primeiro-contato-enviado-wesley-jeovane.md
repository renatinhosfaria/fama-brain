---
schema_version: 1
type: interaction
status: active
created: '2026-05-13'
updated: '2026-05-13'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - whatsapp
  - famachat-created
title: Primeiro contato enviado — Wesley Jeovane
event_date: '2026-05-13'
occurred_at: '2026-05-13T17:38:16-03:00'
channel: whatsapp
participants:
  - Wesley Jeovane
  - Reno
mentions_entity:
  - Wesley Jeovane
  - Union Vereda
  - Reno
related:
  - 'client_id:11361'
  - 'empreendimento_id:161'
confidence: 1
external_ids:
  client_id: '11361'
  event_id: evt_3529
  idempotency_key: '3529_1778704696124'
  message_id: 3EB0D1F00CA6FB33049089
  empreendimento_id: '161'
---
## Resumo
Primeiro contato do Reno enviado para o cliente Wesley Jeovane (client_id 11361), validado no CRM como broker_id 35 e status inicial Sem Atendimento.

## Ação tomada
Mensagem curta e contextual enviada via WhatsApp sobre o empreendimento Union Vereda, no Jaraguá, perguntando se o cliente procura imóvel na região.

## Evidência operacional
- CRM/FamaChat consultado: cliente existente, broker_id=35, status Sem Atendimento, WhatsApp tentável.
- Empreendimento validado no CRM: Union Vereda, bairro Jaraguá.
- WhatsApp enviado para 5511948652272@s.whatsapp.net com validação onWhatsApp, message_id 3EB0D1F00CA6FB33049089 e espelhamento confirmado.
- idempotencyKey do evento: 3529_1778704696124.

## Próximo passo
Aguardar primeira resposta do cliente. Repescagem deve ficar preparada somente enquanto o status permanecer Não Respondeu.
