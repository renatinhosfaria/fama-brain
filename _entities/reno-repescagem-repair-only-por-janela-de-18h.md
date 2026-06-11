---
schema_version: 1
type: entity
status: active
created: '2026-06-11'
updated: '2026-06-11'
source: agent-generated
tags:
  - reno
  - repescagem
  - operational-pattern
  - needs-repair
  - repair-only
  - cadence-normalization
  - curado-brain
author_agent: brain
name: Reno - repescagem repair-only por janela de 18h
entity_type: operational-pattern
aliases:
  - needs_repair_repescagem_18h
  - repair-only repescagem janela 18h
  - freshness gate 18h BRT
external_ids:
  reno_recovery_reason: needs_repair
  cadence_gate: 18h BRT
mentions_entity:
  - reno-hub
  - reno-whatsapp-alvo-nao-resolvido
related:
  - '[[reno-hub]]'
  - '[[reno-whatsapp-alvo-nao-resolvido]]'
  - '[[2026-06-11-repescagem-needs-repair-cleudiane-victor-11628]]'
  - '[[2026-06-11-repescagem-repair-only-para-luana-maria-silva]]'
confidence: 0.92
verified_by: null
---
# Reno — repescagem repair-only por janela de 18h

## Resumo curado
Em 2026-06-11 apareceram vários journals Reno marcados como `needs_repair` / `repair-only` na repescagem. A leitura curada é que esses eventos representam normalização de cadência: havia candidato strict-due, mas o último outbound ainda estava dentro da janela mínima de 18h em BRT. Por isso, nenhum novo WhatsApp deveria ser enviado; a branch foi preservada, `recovery_reason=needs_repair` foi registrado e `next_run_at` foi normalizado para a próxima janela.

## Classificação
- Tipo: padrão operacional.
- Tema: Reno / repescagem / anti-catch-up / cadência WhatsApp.
- Estado: ativo como padrão de auditoria; não é falha terminal por si só.
- Prioridade: média para observabilidade, baixa para ação imediata quando CRM confirma `next_run_at` normalizado.

## Sinais observados nesta rodada
- [[2026-06-11-repescagem-needs-repair-cleudiane-victor-11628]]
- [[2026-06-11-repescagem-needs-repair-cliente-11615]]
- [[2026-06-11-repescagem-needs-repair-rosangela-torrent-e-silva-cliente-11630]]
- [[2026-06-11-repescagem-needs-repair-vera-pinheiro-cliente-11621]]
- [[2026-06-11-repescagem-repair-only-jocassia-leitao]]
- [[2026-06-11-repescagem-repair-only-para-luana-maria-silva]]
- [[2026-06-11-repescagem-repair-only-victor-rocha-client-11636]]
- [[2026-06-11-maria-isabel-petrone-repescagem-repair-only]]

## Interpretação adotada
Assumi que `needs_repair` aqui significa reparo/normalização de agenda após recuperação de cadência, não erro de entrega. Essa interpretação foi baseada nos journals lidos e nos textos que indicam explicitamente: “sem novo WhatsApp”, “janela de 18h BRT” e `next_run_at` normalizado.

## Relações
- Hub operacional: [[reno-hub]].
- Comparar com falhas reais de WhatsApp: [[reno-whatsapp-alvo-nao-resolvido]].
