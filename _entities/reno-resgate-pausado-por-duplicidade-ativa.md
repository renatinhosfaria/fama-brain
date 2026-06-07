---
schema_version: 1
type: entity
status: active
created: '2026-06-06'
updated: '2026-06-06'
source: agent-generated
tags:
  - reno
  - resgate
  - duplicidade-operacional
  - sla-cascata
  - ownership
  - manual-review
  - curado-brain
author_agent: brain
name: Reno - Resgate pausado por duplicidade ativa
entity_type: operational-pattern
aliases:
  - manual_review_duplicate_active_broker
  - resgate pausado por duplicidade ativa
  - duplicidade ownership Reno SLA Cascata
external_ids:
  reno_stopped_reason: manual_review_duplicate_active_broker
mentions_entity:
  - reno-hub
related:
  - '[[reno-hub]]'
  - '[[2026-06-06-resgate-pausado-por-duplicidade-ativa]]'
  - '[[2026-05-21-resgate-pausado-por-duplicidade-ativa-de-ownership]]'
  - '[[2026-05-24-resgate-pausado-por-duplicidade-ativa-lucas-lobato]]'
  - '[[2026-05-20-resgate-pausado-por-ownership-ativo-duplicado]]'
confidence: 0.9
verified_by: null
---
# Padrão operacional — Reno Resgate pausado por duplicidade ativa

## Resumo curado

Padrão recorrente nos journals do Reno: antes de enviar novo follow-up de Resgate, a revalidação no CRM identifica outro cadastro ativo para o mesmo contato, frequentemente gerado por SLA Cascata e associado a outro broker. Nesses casos, o fluxo automático deve ser pausado para revisão manual de ownership/duplicidade, sem novo WhatsApp automático.

## Classificação

- Tipo: entidade/padrão operacional consolidado.
- Tema: Reno / Resgate / WhatsApp / CRM / SLA Cascata / ownership duplicado.
- Estado: ativo como contexto curado; não substitui runbooks do Reno nem o CRM/FamaChat como fonte operacional.
- Prioridade: alta para navegação e continuidade, porque há múltiplos eventos semelhantes em `_journal/reno/`.

## Critério operacional observado

Quando a branch é pausada por `manual_review_duplicate_active_broker`, a leitura curada é:

1. não enviar novo Resgate automático enquanto a duplicidade estiver ativa;
2. preservar o status comercial do cliente original, salvo decisão explícita no CRM;
3. encaminhar para revisão manual de ownership/duplicidade;
4. verificar CRM antes de inferir estado atual ou reativar automação.

## Casos relacionados

- [[2026-06-06-resgate-pausado-por-duplicidade-ativa]] — cliente 11604 com duplicidade SLA Cascata no cliente 11627.
- [[2026-05-21-resgate-pausado-por-duplicidade-ativa-de-ownership]]
- [[2026-05-24-resgate-pausado-por-duplicidade-ativa-lucas-lobato]]
- [[2026-05-20-resgate-pausado-por-ownership-ativo-duplicado]]

## Interpretação adotada

Esta nota consolida um padrão de curadoria e navegação, não uma autorização para agir no CRM. Qualquer reativação, cancelamento ou reassignment deve ser validado no FamaChat/CRM e registrado pela automação responsável.
