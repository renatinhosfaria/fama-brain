---
aliases:
  - needs_repair_repescagem_18h
  - repair-only repescagem janela 18h
  - freshness gate 18h BRT
author_agent: brain
confidence: 0.94
created: '2026-06-11'
entity_type: operational-pattern
external_ids:
  cadence_gate: 18h BRT
  reno_recovery_reason: needs_repair
mentions_entity:
  - reno-hub
  - reno-whatsapp-alvo-nao-resolvido
  - cleudiane-victor
name: Reno - repescagem repair-only por janela de 18h
related:
  - '[[reno-hub]]'
  - '[[reno-whatsapp-alvo-nao-resolvido]]'
  - '[[cleudiane-victor]]'
  - '[[2026-06-11-repescagem-needs-repair-cleudiane-victor-11628]]'
  - '[[2026-06-11-repescagem-repair-only-para-luana-maria-silva]]'
  - '[[2026-06-12-repescagem-repair-only-cliente-11628]]'
schema_version: 1
source: agent-generated
status: active
tags:
  - reno
  - repescagem
  - operational-pattern
  - needs-repair
  - repair-only
  - cadence-normalization
  - curado-brain
type: entity
updated: '2026-06-13'
verified_by: null
owner: brain
---
# Reno — repescagem repair-only por janela de 18h

## Resumo curado
Em 2026-06-11 apareceram vários journals Reno marcados como `needs_repair` / `repair-only` na repescagem. Em 2026-06-12 o mesmo padrão reapareceu em pelo menos um caso verificado no CRM/FamaChat após envio de step 2 no mesmo dia.

A leitura curada é que esses eventos representam normalização de cadência: havia candidato strict-due, mas o último outbound ainda estava dentro da janela mínima de 18h em BRT ou no mesmo dia operacional. Por isso, nenhum novo WhatsApp deveria ser enviado; a branch foi preservada, `recovery_reason=needs_repair` foi registrado e `next_run_at` foi normalizado para a próxima janela.

## Classificação
- Tipo: padrão operacional.
- Tema: Reno / repescagem / anti-catch-up / cadência WhatsApp.
- Estado: ativo como padrão de auditoria; não é falha terminal por si só.
- Prioridade: média para observabilidade, baixa para ação imediata quando CRM confirma `next_run_at` normalizado.

## Sinais observados
### Rodada 2026-06-11
- [[2026-06-11-repescagem-needs-repair-cleudiane-victor-11628]]
- [[2026-06-11-repescagem-needs-repair-cliente-11615]]
- [[2026-06-11-repescagem-needs-repair-rosangela-torrent-e-silva-cliente-11630]]
- [[2026-06-11-repescagem-needs-repair-vera-pinheiro-cliente-11621]]
- [[2026-06-11-repescagem-repair-only-jocassia-leitao]]
- [[2026-06-11-repescagem-repair-only-para-luana-maria-silva]]
- [[2026-06-11-repescagem-repair-only-victor-rocha-client-11636]]
- [[2026-06-11-maria-isabel-petrone-repescagem-repair-only]]

### Rodada 2026-06-12 verificada em 2026-06-13
- [[2026-06-12-repescagem-repair-only-cliente-11628]] — depois de step 2 enviado no mesmo dia, o step 3 foi bloqueado pelo gate de 18h/mesmo dia BRT; entidade canônica criada em [[cleudiane-victor]].

## Interpretação adotada
Assumi que `needs_repair` aqui significa reparo/normalização de agenda após recuperação de cadência, não erro de entrega. Essa interpretação foi baseada nos journals lidos e nos textos que indicam explicitamente: “sem novo WhatsApp”, “janela de 18h BRT”, “mesmo dia BRT” e `next_run_at` normalizado.

## Guardrail de leitura
Não confundir este padrão com [[reno-whatsapp-alvo-nao-resolvido]]. Se a nota mencionar falha de resolução de alvo, ausência de canal, erro de bridge/conector ou `stopped_reason` terminal, deve ser classificada como falha operacional de entrega. Se mencionar apenas bloqueio por janela de 18h/mesmo dia com branch preservada, é cadência normalizada.

## Relações
- Hub operacional: [[reno-hub]].
- Comparar com falhas reais de WhatsApp: [[reno-whatsapp-alvo-nao-resolvido]].
- Caso recente consolidado: [[cleudiane-victor]].
