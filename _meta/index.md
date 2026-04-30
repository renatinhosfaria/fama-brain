---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - meta
  - moc
  - governance
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_meta/` — Documentação do próprio vault

Pasta para o que **não** é conteúdo do segundo cérebro mas governa-o.

## Conteúdo

- [[schema.md]] — Schema v1 canônico (types, frontmatter, paths, regras).
- `embedding-state.md` *(pendente)* — Registro de qual modelo embedou qual fatia.
- `golden-queries.md` *(pendente — FAM-17)* — 30 queries reais com respostas esperadas, baseline de recall@5.
- `inventory-2026-04-30.md` *(em construção neste FAM-16)* — Inventário das notas pré-migração.

## Regras

- `_meta/` **não vetoriza** nem entra no grafo. Apenas humanos e o VaultSteward leem.
- Mudanças em `schema.md` requerem decisão registrada em `_decisions/` e aprovação do CEO.
- Arquivos aqui não seguem a convenção de título `{Tipo}: {Sujeito}` — são docs internos do vault.
