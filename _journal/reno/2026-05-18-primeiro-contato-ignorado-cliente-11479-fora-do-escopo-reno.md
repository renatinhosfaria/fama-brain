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
  - first-contact
  - webhook
  - ignored
  - broker-out-of-scope
title: Primeiro contato ignorado — cliente 11479 fora do escopo Reno
event_date: '2026-05-18'
occurred_at: '2026-05-18T21:15:18.715Z'
channel: 'webhook:famachat-created'
participants:
  - Reno
  - Geovanna Ribeiro
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11479'
  delivery_id: evt_3647
  idempotency_key: '3647_1779138918715'
  crm_note_id: '18461'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` foi validado no CRM para o cliente 11479, Geovanna Ribeiro. O CRM confirmou `broker_id=24` (Maria Eduarda) e origem `SLA Cascata`, portanto o caso está fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
Nenhum WhatsApp foi enviado. Foi registrada nota objetiva no CRM e o status/meta_data foram preservados.

## Evidência operacional
- CRM `get_client` para client_id 11479 confirmou cliente existente com `broker_id=24`.
- Nota CRM registrada: 18461.
- Idempotência do evento: `3647_1779138918715` / `evt_3647`.

## Próximo passo
Sem ação operacional do Reno. O atendimento permanece com a corretora atribuída no CRM.

## Links relacionados
- [[reno-hub]]
