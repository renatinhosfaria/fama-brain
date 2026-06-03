---
author_agent: brain
created: '2026-06-03'
maintainer: brain
related:
  - '[[brain-vault-curadoria]]'
  - '[[_shared/context/AGENTS]]'
  - '[[schema]]'
  - '[[retrieval-policy]]'
  - '[[pii-redaction-policy]]'
  - '[[2026-06-03-brain-como-curador-central-do-vault-obsidian]]'
schema_version: 1
scope: brain
source: human-curated
status: active
summary: >-
  Hub canônico do Brain, curador central do vault Obsidian. Centraliza decisões,
  runbooks, logs de curadoria e trilhas incrementais de PII, hubs, consolidações
  e retrieval.
tags:
  - brain
  - curadoria
  - vault
  - mcp-obsidian
title: 'Hub: Brain'
type: hub
updated: '2026-06-03'
owner: brain
---
# Hub: Brain

## Summary

Hub canônico do Brain, curador central do vault Obsidian. Centraliza decisões, runbooks, logs de curadoria e trilhas incrementais de PII, hubs, consolidações e retrieval.

## Mapa principal

- [[2026-06-03-brain-como-curador-central-do-vault-obsidian]] — decisão que formaliza o Brain como curador central do vault.
- [[brain-vault-curadoria]] — runbook operacional do Brain para curadoria via `mcp-obsidian`.
- [[_shared/context/AGENTS]] — mapa de agentes, ownership e guardrails.
- [[schema]] — schema v1 do vault.
- [[retrieval-policy]] — política de recuperação e confiança.
- [[pii-redaction-policy]] — política de minimização/redaction de dados sensíveis.
- [[golden-queries]] — conjunto de validação de retrieval.

## Trilhas de curadoria incremental

- **PII:** scan, priorização e saneamento progressivo sem exposição de valores brutos.
- **Hubs:** manutenção de hubs canônicos e redução de busca repetida.
- **Consolidações:** deduplicação e fusão apenas quando houver identidade clara e preservação de proveniência.
- **Retrieval:** avaliação com golden queries, filtros por tipo/fonte e read-back canônico.
