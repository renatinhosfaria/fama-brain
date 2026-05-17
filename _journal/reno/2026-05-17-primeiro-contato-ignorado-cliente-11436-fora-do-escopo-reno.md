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
  - famachat-created
  - primeiro-contato
  - ignorado
  - fora-escopo
title: Primeiro contato ignorado — cliente 11436 fora do escopo Reno
event_date: '2026-05-17'
occurred_at: '2026-05-17T14:43:36.054Z'
channel: webhook
participants:
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11436'
  delivery_id: evt_3604
  idempotency_key: '3604_1779029016054'
  crm_note_id: '18178'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11436, Kersleen Antunes. O CRM/FamaChat foi validado como fonte operacional: `broker_id=14`, status `Sem Atendimento`, origem `SLA Cascata`.

Como o escopo operacional do Reno exige `broker_id=35`, o primeiro contato foi ignorado.

## Ação tomada
- Nenhum WhatsApp enviado.
- Nota CRM registrada: 18178.
- Status e `meta_data` preservados.

## Evidência operacional
- CRM `get_client`: cliente 11436 existe e pertence ao broker 14.
- Nota CRM `add_client_note`: decisão de ignorar registrada com sucesso.

## Próximo passo
Sem ação operacional do Reno enquanto o cliente permanecer fora do escopo `broker_id=35`.

## Links relacionados
[[reno-hub]]
