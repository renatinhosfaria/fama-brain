---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - curated
  - moc
  - ground-truth
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_curated/` — Ground truth

Pasta para conteúdo **verificado** que o vault trata como ground truth: conceitos institucionais, references a fontes externas, contexto curado pelo CEO/Renato, política de comissão, modelo de negócio, regulamentação.

## Indexação

- Vetoriza: sim. Grafo: sim.
- Override: notas com `status: draft` ou `status: superseded` não vetorizam.

## Tipos canônicos aqui

- `concept` — ideias/conceitos reutilizáveis (políticas, modelos mentais).
- `reference` — citações a fontes externas (artigos, libs, papers).
- `goal` (extensão) — em `_curated/goals/{periodo}/`.
- `result` (extensão) — em `_curated/results/{periodo}/`.
- Subpastas temáticas permitidas: `_curated/credito-imobiliario/`, `_curated/fama/`, `_curated/financials/`.

## Promoção

Conteúdo só vai para `_curated/` quando:

1. `verified_by` está preenchido (por humano OU por VaultSteward em revisão estrutural cruzada com fonte).
2. `confidence` declarada se relevante (0..1).
3. Self-contained chunk (§6 do schema) respeitado.

Rascunhos vão para `_inbox/`. Histórico operacional vai para `_journal/`. Decisões formais vão para `_decisions/`.
