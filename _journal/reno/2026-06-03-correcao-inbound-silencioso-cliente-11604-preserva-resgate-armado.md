---
schema_version: 1
type: interaction
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: agent-generated
author_agent: reno
tags:
  - interaction
  - atendimento
  - whatsapp
  - inbound
  - idempotency
  - resgate
title: Correção inbound silencioso — cliente 11604 preserva resgate armado
event_date: '2026-06-03'
occurred_at: '2026-06-03T11:50:03.384Z'
channel: whatsapp
participants:
  - '[[reno-hub]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  crm_client_id: '11604'
  crm_note_id: '19326'
  corrects_crm_note_id: '19325'
  related_journal: _journal/reno/2026-06-03-inbound-whatsapp-cliente-11604-informou-moradia.md
  session_id: 20260603_162909_416c9ac7
  whatsapp_message_id: ACF4BBB91B7DCAA3BD8540FB4021E0AC
---
## Resumo
Correção operacional da rotina silenciosa do inbound WhatsApp do cliente CRM 11604.

## Evidência de idempotência
Após a primeira persistência silenciosa, o read-back do CRM mostrou que o handler cliente-facing já havia processado o mesmo inbound, enviado resposta comercial e rearmado `reno_followup.resgate` em `step=0` para o outbound normal.

## Correção aplicada
- Status permaneceu `Em Atendimento`.
- Repescagem continuou interrompida por resposta do cliente.
- `reno_followup.resgate` foi restaurado/preservado como ciclo ativo do outbound cliente-facing: `enabled=true`, `next_run_at` original preservado e `stopped_reason=null`.
- Nota CRM de retificação criada para registrar a correção e evitar perda de acompanhamento.

## Próximo passo
Não enviar mensagem por esta rotina. Manter o acompanhamento pelo ciclo de Resgate armado após a resposta comercial do Reno, caso não haja nova resposta do cliente.

## Links relacionados
- [[reno-hub]]
