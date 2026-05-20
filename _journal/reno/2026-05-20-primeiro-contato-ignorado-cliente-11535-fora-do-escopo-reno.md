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
  - ignored
  - broker-out-of-scope
  - sla-cascata
title: Primeiro contato ignorado — cliente 11535 fora do escopo Reno
event_date: '2026-05-20'
occurred_at: '2026-05-20T19:01:28.511Z'
channel: webhook/famachat-created
participants:
  - Reno
  - Jose Lucas
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11535'
  webhook_event_id: evt_3705
  idempotency_key: '3705_1779303688511'
  crm_note_id: '18808'
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11535 (Jose Lucas). O CRM/FamaChat foi validado como fonte operacional da verdade e confirmou `broker_id=24` (Maria Eduarda), source `SLA Cascata`.

## Ação tomada
Reno não enviou WhatsApp porque o primeiro contato operacional só é assumido quando o cliente existe no CRM e está atribuído ao `broker_id=35`.

## Evidência operacional
- CRM consultado via `mcp-postgres/get_client`.
- Nota CRM registrada via `mcp-postgres/add_client_note` com id `18808`.
- Status preservado em `Sem Atendimento`.
- Nenhum WhatsApp enviado e nenhuma branch de repescagem inicializada.

## Próximo passo
Sem ação do Reno neste evento. O atendimento permanece com a corretora responsável no CRM.

## Links relacionados
[[reno-hub]]
