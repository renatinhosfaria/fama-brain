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
  - fora-do-escopo
  - sla-cascata
title: Webhook famachat-created ignorado — cliente 11529 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T17:31:27.536Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Antônio Vidal
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11529'
  event_id: evt_3697
  idempotency_key: '3697_1779298287536'
  crm_note_id: '18788'
  broker_id: '24'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11529 (Antônio Vidal). O CRM foi consultado e confirmou `broker_id=24` (Maria Eduarda), portanto fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado em `Sem Atendimento`.
- `meta_data` preservado sem inicializar Repescagem.
- Nota objetiva registrada no CRM: note_id 18788.

## Evidência operacional
- CRM/FamaChat via `mcp-postgres_get_client`: cliente existente, `broker_id=24`, source `SLA Cascata`, status `Sem Atendimento`.
- Read-back CRM após nota confirmou a nota 18788 e preservação de status/meta.

## Próximo passo
Sem ação pelo Reno neste evento. Caso permaneça com broker diferente de 35, o atendimento pertence ao responsável no CRM.

## Links relacionados
[[reno-hub]]
