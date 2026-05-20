---
schema_version: 1
type: interaction
status: active
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - webhook
  - ignorado
  - fora-escopo
title: Primeiro contato ignorado — cliente 11509 fora do escopo Reno
event_date: '2026-05-19'
occurred_at: '2026-05-20T00:01:28.476Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11509'
  crm_note_id: '18679'
  event_id: evt_3677
  idempotency_key: '3677_1779235288476'
---
## Resumo
Evento `cliente.created` validado no CRM para cliente 11509 (Fabiano Ngr). O CRM confirmou `broker_id=24`, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Reno ignorou o primeiro contato, não enviou WhatsApp e registrou nota CRM 18679.

## Evidência operacional
Cliente 11509 existe no CRM, status `Sem Atendimento`, broker real `24` (Maria Eduarda Moreira Rodrigues). Status e meta_data foram preservados.

## Próximo passo
Atendimento segue com a corretora responsável no CRM. Reno só atua se o cliente for atribuído ao broker_id 35.

## Links relacionados
[[reno-hub]]
