---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - famachat
  - webhook
  - primeiro-contato
  - ignorado
  - fora-do-escopo
title: Webhook cliente.created ignorado — cliente 11379 fora do escopo Reno
event_date: '2026-05-14'
channel: webhook/famachat-created
participants:
  - reno
  - cliente-11379
mentions_entity:
  - cliente-11379
  - reno
related:
  - famachat-created
  - primeiro-contato
confidence: 1
external_ids:
  client_id: '11379'
  event_id: evt_3547
  idempotency_key: '3547_1778770714797'
  crm_note_id: '17788'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11379. O payload foi tratado apenas como sinal; o CRM/FamaChat foi validado via MCP fallback JSON-RPC porque o wrapper integrado estava degradado.

## Decisão operacional
Cliente encontrado no CRM com `broker_id=24`, diferente do escopo operacional do Reno (`broker_id=35`). Nenhum WhatsApp foi enviado e o status CRM foi preservado em `Sem Atendimento`.

## Evidência operacional
- Cliente 11379 encontrado no CRM.
- Broker real no CRM: 24.
- Status real no CRM: Sem Atendimento.
- Nota CRM registrada: 17788.
- Idempotency key do evento: `3547_1778770714797`.

## Próximo passo
Sem ação do Reno. O atendimento permanece fora do escopo operacional do Reno enquanto o cliente não estiver atribuído ao broker 35.
