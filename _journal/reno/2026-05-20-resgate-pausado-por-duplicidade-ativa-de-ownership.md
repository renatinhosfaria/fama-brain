---
schema_version: 1
type: journal
status: active
created: '2026-05-20'
updated: '2026-05-20'
source: agent-generated
author_agent: reno
tags:
  - resgate
  - manual-review
  - duplicate-ownership
title: Resgate pausado por duplicidade ativa de ownership
event_date: '2026-05-20'
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11368'
  duplicate_client_id: '11421'
  flow: resgate
---
## Resumo
Resgate de Viviane (cliente 11368) foi pausado sem envio porque a revalidação encontrou o mesmo telefone/JID em outro cadastro ativo sob broker 24 (cliente 11421, status Não Respondeu, origem SLA Cascata). Relacionado: [[reno-hub]].

## Ação tomada
Branch `resgate` marcada para revisão manual com `stopped_reason=manual_review_duplicate_active_broker`.

## Evidência operacional
- Cliente 11368 em `Em Atendimento`, broker 35.
- Duplicata ativa 11421 com o mesmo phone/JID.
- Nenhum WhatsApp enviado.

## Próximo passo
Aguardar revisão manual da duplicidade/ownership.
