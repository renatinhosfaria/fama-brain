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
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11545 Helio Borges
event_date: '2026-05-20'
occurred_at: '2026-05-20T20:11:27.903Z'
channel: webhook
participants:
  - Reno
  - Helio Borges
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11545'
  delivery_event_id: evt_3713
  idempotency_key: '3713_1779307887903'
  crm_note_id: '18825'
  cliente_original_id: '11455'
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` para o cliente 11545 (Helio Borges). O CRM foi validado e o cliente está atribuído ao broker_id 24, não ao Reno (broker_id 35).

## Ação tomada
Primeiro contato suprimido por hard stop de escopo: `broker_id != 35`. Nenhum WhatsApp foi enviado. Status CRM e `meta_data` foram preservados.

## Evidência operacional
- CRM/FamaChat confirmou cliente existente, status `Sem Atendimento`, source `SLA Cascata`, broker_id 24.
- Nota CRM registrada com a decisão de ignorar o evento.

## Próximo passo
Caso permanece com a corretora responsável no CRM. O Reno não assume atendimento deste clone de SLA Cascata.

## Links relacionados
- [[reno-hub]]
