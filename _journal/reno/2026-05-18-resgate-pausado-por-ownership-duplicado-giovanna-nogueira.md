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
  - resgate
  - crm
  - manual-review
  - duplicate-ownership
  - whatsapp
title: Resgate pausado por ownership duplicado - Giovanna Nogueira
event_date: '2026-05-18'
occurred_at: '2026-05-18T12:20:29.639Z'
channel: whatsapp
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.96
external_ids:
  client_id: '11366'
  duplicate_client_id: '11422'
  crm_note_id: '18365'
  duplicate_sla_id: '10811'
  flow: resgate
---
## Resumo
Resgate da cliente Giovanna Nogueira foi pausado sem envio após revalidação do CRM indicar duplicidade/ownership ativo fora do Reno no mesmo telefone/JID.

## Ação tomada
- Branch `meta_data.reno_followup.resgate` desativada com `stopped_reason=manual_review_duplicate_active_broker`.
- Nota objetiva registrada no CRM.
- Nenhum WhatsApp foi enviado.

## Evidência operacional
- Cliente original: `11366` em `broker_id=35`, status `Em Atendimento`.
- Cadastro cascata relacionado: `11422` em `broker_id=24`, origem `SLA Cascata`, com SLA ativo sequencia 2.
- Caminho confirmado como risco de ownership fora do Reno durante a revalidação.

## Próximo passo
Aguardar revisão manual antes de reativar o Resgate ou decidir o fluxo responsável.

## Links relacionados
- [[reno-hub]]
- Giovanna Nogueira
