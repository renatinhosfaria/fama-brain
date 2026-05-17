---
schema_version: 1
type: interaction
status: active
created: '2026-05-17'
updated: '2026-05-17'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - famachat-created
  - ignorado
  - fora-do-escopo
title: Primeiro contato ignorado — cliente 11443 fora do escopo Reno
event_date: '2026-05-17'
occurred_at: '2026-05-17T19:33:36.067Z'
channel: webhook/famachat-created
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11443'
  delivery_event_id: evt_3611
  idempotency_key: '3611_1779046416067'
  crm_note_id: '18254'
  original_client_id: '11384'
---
## Resumo
Webhook `famachat-created` / `cliente.created` recebido para o cliente 11443 (Roberta Alvess). O CRM foi consultado e confirmou `broker_id=14`, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. Foi registrada nota objetiva no CRM informando que o primeiro contato Reno foi ignorado por broker fora do escopo.

## Evidência operacional
- CRM/FamaChat: cliente 11443 existente.
- Broker real no CRM: 14 (Michel Henrique Teixeira da Silva).
- Status preservado: Sem Atendimento.
- Origem: SLA Cascata.
- Nota CRM registrada: 18254.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer fora do escopo. CRM/FamaChat segue como fonte operacional da verdade.

## Links relacionados
- [[reno-hub]]
