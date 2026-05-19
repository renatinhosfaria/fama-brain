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
  - webhook
  - primeiro-contato
  - ignorado
  - fora-do-escopo
title: Webhook primeiro contato ignorado — cliente 11495 fora do escopo
event_date: '2026-05-19'
occurred_at: '2026-05-19T16:46:28.090Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11495'
  webhook_event_id: evt_3663
  idempotency_key: '3663_1779209188090'
  crm_note_id: '18581'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11495 (Moisés Ferreira).

## Ação tomada
O CRM/FamaChat foi validado como fonte operacional da verdade. O cliente existe, mas está atribuído ao `broker_id=24` (Maria Eduarda), portanto fora do escopo operacional do Reno (`broker_id=35`).

## Evidência operacional
- CRM `get_client` confirmou `client_id=11495`, status `Sem Atendimento`, origem `SLA Cascata`, broker real `24`.
- Nota CRM registrada: `18581`.
- Nenhum WhatsApp foi enviado.
- Status e `meta_data` foram preservados.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer diferente de 35.

## Links relacionados
- [[reno-hub]]
