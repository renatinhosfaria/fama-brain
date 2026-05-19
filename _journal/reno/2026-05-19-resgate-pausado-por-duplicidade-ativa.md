---
schema_version: 1
type: interaction
status: active
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
author_agent: reno
tags:
  - resgate
  - duplicidade
  - crm
  - whatsapp
title: Resgate pausado por duplicidade ativa
event_date: '2026-05-19'
occurred_at: '2026-05-19T22:18:58Z'
channel: crm
participants:
  - Geovanna Ribeiro
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11404'
  duplicate_client_id: '11479'
  crm_note_id: '18649'
  resgate_step: '0'
  duplicate_broker_id: '24'
---
## Resumo
Resgate do cliente 11404 (Geovanna Ribeiro) foi bloqueado após revalidação: o mesmo telefone/JID aparece em cadastro duplicado ativo sob broker_id=24, com SLA cascata em andamento (sequencia 2, ativo). Nenhum WhatsApp foi enviado.

## Ação tomada
- Branch resgate desativada com stopped_reason=manual_review_duplicate_active_broker
- Nota objetiva registrada no CRM

## Evidência operacional
- Cliente atual: id 11404, broker_id=35, status Em Atendimento
- Duplicidade ativa: id 11479, broker_id=24
- Não há agendamento ativo

## Próximo passo
Aguardar revisão manual de ownership antes de qualquer nova tentativa.

[[reno-hub]]
