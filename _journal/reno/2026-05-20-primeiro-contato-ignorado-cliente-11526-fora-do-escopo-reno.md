---
schema_version: 1
type: interaction
status: active
created: '2026-05-20'
updated: '2026-05-20'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - webhook
  - ignored
  - out-of-scope
title: Primeiro contato ignorado — cliente 11526 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T14:21:58Z'
channel: webhook/famachat-created
participants:
  - Reno
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11526'
  crm_note_id: '18762'
  event_id: evt_3694
  idempotency_key: '3694_1779286887700'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para a cliente Brenda Souza (client_id 11526). O CRM/FamaChat foi consultado como fonte operacional e confirmou `broker_id=24`, fora do escopo mínimo do Reno (`broker_id=35`).

## Ação tomada
Reno não enviou WhatsApp, não alterou status e não inicializou Repescagem. Foi registrada nota objetiva no CRM com a decisão de ignorar o evento.

## Evidência operacional
- CRM/FamaChat: cliente 11526 existe, status `Sem Atendimento`, broker_id real `24`.
- Nota CRM registrada: 18762.
- Idempotency key do evento: 3694_1779286887700.

## Próximo passo
Nenhuma ação operacional do Reno neste cliente enquanto o broker real permanecer fora do escopo.

## Links relacionados
[[reno-hub]]
