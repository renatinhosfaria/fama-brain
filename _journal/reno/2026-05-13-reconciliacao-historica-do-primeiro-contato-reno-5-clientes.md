---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - reconciliacao
  - repescagem
  - crm
title: Reconciliação histórica do Primeiro Contato Reno — 5 clientes
event_date: '2026-05-13'
occurred_at: '2026-05-13T14:10:16-03:00'
channel: crm
participants:
  - Reno Agente de IA
  - '[[reno]]'
mentions_entity:
  - '[[reno]]'
  - Suely Rodrigues OGrady de Paiva
  - Bruna Santos
  - Geisy Souza
  - Japão Pereira
  - Joaneci pereira dos santos
related:
  - fama-reno-webhook-first-contact
  - repescagem-follow-up
  - reno-follow-up-recovery
  - '[[reno-hub]]'
confidence: 1
external_ids:
  batch: first-contact-reconciliation-2026-05-13
  client_ids: '11299,11300,11308,11312,11313'
  crm_note_ids: '17672,17673,17674,17675,17676'
  source_note_ids: '17392,17395,17420,17424,17425'
  migration: wikilinks-2026-05-14
  original_path: >-
    _journal/reno/2026-05-13-reconciliacao-historica-do-primeiro-contato-reno-5-clientes.md
  original_sha256: 025c83cfe7b96ce7235c24f2f546947d56d33ba85e1507927235fa96bec10254
---
## Resumo
Reconciliação operacional histórica do Primeiro Contato Reno após correção do runtime `famachat-created`.

## Escopo
Clientes reconciliados: 11299, 11300, 11308, 11312 e 11313.

## Evidência operacional
Todos tinham WhatsApp de primeiro contato já enviado e registrado em nota CRM, com `broker_id=35`, status ainda `Sem Atendimento` e branch `meta_data.reno_followup.repescagem` ausente.

- 11299 — nota fonte #17392; evento evt_3467; idempotência 3467_1778283870031; nota de reconciliação #17672.
- 11300 — nota fonte #17395; evento evt_3468; idempotência 3468_1778291173474; nota de reconciliação #17673.
- 11308 — nota fonte #17420; evento evt_3476; idempotência 3476_1778351358854; nota de reconciliação #17674.
- 11312 — nota fonte #17424; evento evt_3480; idempotência 3480_1778361179085; nota de reconciliação #17675.
- 11313 — nota fonte #17425; evento evt_3481; idempotência 3481_1778362917044; nota de reconciliação #17676.

## Ação tomada no CRM
Nenhum novo WhatsApp foi enviado.

Para cada cliente elegível, foi aplicada correção idempotente:
- status `Sem Atendimento` -> `Não Respondeu`;
- inicialização de `meta_data.reno_followup.repescagem` com `enabled=true`, `step=0`, `last_sent_at=null`, `stopped_reason=null`;
- `next_run_at` calculado pela matriz oficial de Repescagem a partir do turno de entrada original;
- registro de nota CRM individual com evidência e efeito aplicado.

## Próximo passo
Os cinco casos estão aptos a seguir pela Repescagem normal do Reno. CRM/FamaChat permanece fonte operacional da verdade.

## Links relacionados
- [[reno]]
- [[reno-hub]]
