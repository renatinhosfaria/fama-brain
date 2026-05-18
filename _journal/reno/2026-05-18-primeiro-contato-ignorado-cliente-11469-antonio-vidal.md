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
  - ignorado
  - fora-do-escopo
title: Primeiro contato ignorado — cliente 11469 Antônio Vidal
event_date: '2026-05-18'
occurred_at: '2026-05-18T18:30:18.468Z'
channel: 'webhook:famachat-created'
participants:
  - '[[reno-hub]]'
  - Antônio Vidal
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11469'
  event_id: evt_3637
  idempotency_key: '3637_1779129018468'
  crm_note_id: '18435'
  broker_id: '14'
  route: famachat-created
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` foi validado no CRM para o cliente 11469 (Antônio Vidal), com fonte `SLA Cascata` e broker real `14` (Michel). Como o escopo operacional do Reno exige `broker_id=35`, o primeiro contato foi ignorado.

## Ação tomada
- WhatsApp não enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data` preservado.
- Nota CRM objetiva registrada: `clientes_notas.id=18435`.

## Evidência operacional
- CRM/FamaChat validado via `mcp-postgres_get_client`.
- Nota CRM registrada via `mcp-postgres_add_client_note`.

## Próximo passo
Sem ação do Reno neste cliente enquanto permanecer fora do `broker_id=35`.

## Links relacionados
- [[reno-hub]]
