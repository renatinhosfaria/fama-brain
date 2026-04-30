---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - inbox
  - moc
  - rascunhos
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_inbox/` — Pré-curadoria

Rascunhos antes de promover. Notas aqui têm `status: draft` por padrão.

## Indexação

- **Não vetoriza** nem entra no grafo. Conteúdo só fica recuperável depois de promovido.

## Naming

Sem convenção rígida — é rascunho. Quando promover, renomear para a convenção do destino (`{Tipo}: ...`).

## Promoção

Rotina diária do VaultSteward (FAM-18) varre `_inbox/`, valida frontmatter, regras de self-contained chunk, decide destino (`_curated/`, `_journal/`, `_decisions/`, `_entities/`, `_runbooks/`, `_projects/`) e move com wikilinks atualizados.
