---
schema_version: 1
type: interaction
status: active
created: '2026-05-18'
updated: '2026-05-18'
source: agent-generated
author_agent: reno
tags:
  - reno
  - famachat-created
  - primeiro-contato
  - ignorado
  - fora-escopo
title: Primeiro contato ignorado — cliente 11478 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T18:06:01.987Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11478'
  event_id: evt_3646
  idempotency_key: '3646_1779138320070'
  crm_note_id: '18460'
---
## Resumo
Webhook `famachat-created` recebeu evento `cliente.created` para o cliente 11478 (Murilo Damasceno). O CRM/FamaChat foi consultado como fonte operacional e confirmou `broker_id=24` (Maria Eduarda), portanto fora do escopo mínimo do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. Foi registrada nota objetiva no CRM informando a decisão de ignorar o primeiro contato pelo Reno, com status e meta_data preservados.

## Evidência operacional
- CRM consultado via mcp-postgres: cliente existente, status `Sem Atendimento`, source `SLA Cascata`, broker real `24`.
- Nota CRM criada: 18460.
- Evento: `evt_3646`; idempotencyKey: `3646_1779138320070`.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer fora do escopo. [[reno-hub]]
