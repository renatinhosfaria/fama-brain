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
  - primeiro-contato
  - famachat-created
  - ignorado
  - fora-do-escopo
  - sla-cascata
title: Primeiro contato ignorado — cliente 11462 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T15:00:19.123Z'
channel: webhook/famachat-created
participants:
  - Reno
  - FamaChat
related:
  - reno-hub
confidence: 1
external_ids:
  broker_id: '14'
  client_id: '11462'
  delivery_event_id: evt_3630
  idempotency_key: '3630_1779116419123'
  required_broker_id: '35'
---
[[reno-hub]]

Evento `cliente.created` recebido pela rota `famachat-created` para o cliente CRM 11462.

Resumo operacional: CRM/FamaChat confirmou cliente existente, status `Sem Atendimento`, origem `SLA Cascata`, telefone/JID presentes, porém `broker_id` real = 14 (Michel). Como o escopo operacional do Reno para primeiro contato exige `broker_id=35`, o caso foi ignorado sem envio de WhatsApp.

Persistência CRM: nota registrada no cliente informando a decisão; status e `meta_data` preservados.

Idempotência: `idempotencyKey=3630_1779116419123`; evento externo `evt_3630` tratado como ID de entrega, não como `client_id`.

Próximo passo: nenhum pelo Reno neste fluxo; atendimento segue fora do escopo Reno enquanto o cliente permanecer com broker diferente de 35.
