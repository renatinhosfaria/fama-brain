---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - decisions
  - moc
  - decision-log
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_decisions/` — Decision log

**1 decisão = 1 nota.** O log compilado por agente (`_agents/{agente}/decisions.md`) será dissolvido em N notas atômicas durante a migração FAM-16, preservando timestamps e rationale.

## Naming

Filename: `YYYY-MM-DD-{slug}.md` em kebab-case. Ex.: `2026-04-30-adotar-schema-vault-v1.md`.

Título: `Decision: {Sujeito} ({YYYY-MM})`. Ex.: `Decision: Adotar schema vault v1 (2026-04)`.

## Frontmatter mínimo

```yaml
type: decision
status: active | superseded | archived
decided_by: ["[[Renato Faria]]"]
supersedes: []
superseded_by: null
implements: []
mentions_entity: []
related: []
valid_until: null
```

## Bidirecional

Quando decisão A é substituída por B:

- A: `status: superseded`, `superseded_by: ["[[B]]"]`.
- B: `supersedes: ["[[A]]"]`.

VaultSteward enforça ambos os lados quando o autor só preenche um.

## Indexação

- Vetoriza: sim. Grafo: sim.
- `status: superseded` ou `archived` → não vetoriza, mantém grafo.

## Imutabilidade

Decisões nunca são editadas materialmente. Erro factual → criar decisão nova com `supersedes`. VaultSteward NÃO altera conteúdo de decisão de outro agente.
