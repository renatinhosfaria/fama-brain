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
  - primeiro-contato
  - webhook
  - ignorado
  - broker-fora-escopo
title: Primeiro contato ignorado por broker fora do Reno — cliente 11540
event_date: '2026-05-20'
occurred_at: '2026-05-20T20:01:29.123Z'
channel: webhook
participants:
  - Reno Agente de IA
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11540'
  event_id: evt_3711
  idempotency_key: '3711_1779307289123'
  crm_note_id: '18821'
---
## Resumo
Webhook `cliente.created` recebido na rota `famachat-created` para o cliente 11540. O CRM/FamaChat foi consultado como fonte operacional e confirmou `broker_id=24`, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. Foi registrada nota objetiva no CRM informando o motivo do ignorado.

## Evidência operacional
- Cliente existente no CRM: 11540, Igor Vieira.
- Broker real no CRM: 24, Maria Eduarda Moreira Rodrigues.
- Nota CRM registrada: 18821.
- Status preservado: Sem Atendimento.
- `meta_data` preservado: sem alteração.

## Próximo passo
Sem ação do Reno neste cliente enquanto o broker real permanecer fora do escopo.

## Links relacionados
[[reno-hub]]
