---
schema_version: 1
type: interaction
status: active
created: '2026-05-16'
updated: '2026-05-16'
source: agent-generated
author_agent: reno
tags:
  - reno
  - famachat
  - cliente-created
  - primeiro-contato
  - ignorado
  - fora-escopo
title: Webhook cliente.created ignorado — cliente 11421 fora do escopo Reno
event_date: '2026-05-16'
occurred_at: '2026-05-16T20:03:39.466Z'
channel: webhook
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11421'
  event_id: evt_3589
  idempotency_key: '3589_1778961819466'
  crm_note_id: '18127'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` foi validado no CRM para o cliente 11421 (Viviane), mas o broker real do CRM é 24 (Maria Eduarda), fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado em `Sem Atendimento`.
- `meta_data.reno_followup.repescagem` não foi inicializada.
- Nota objetiva registrada no CRM com o motivo do ignorado.

## Evidência operacional
- CRM/FamaChat validou cliente existente, telefone/JID e `broker_id=24`.
- Nota CRM criada: 18127.
- Evento/idempotência: `evt_3589` / `3589_1778961819466`.

## Próximo passo
Sem ação do Reno neste atendimento enquanto o cliente permanecer atribuído a broker diferente de 35.

## Links relacionados
- [[reno-hub]]
