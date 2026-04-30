---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - projects
  - moc
  - lifecycle
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_projects/` — Projetos

## Subpastas

- `_projects/active/` — projetos em andamento. Vetoriza + grafo.
- `_projects/archived/` — concluídos ou abandonados. Não vetoriza, mantém grafo.

## Naming

- 1 nota por projeto: `_projects/active/{nome-projeto}.md`.
- Múltiplas notas por projeto: subpasta `_projects/active/{nome}/{slug}.md`. Ex.: `_projects/active/famachat/arquitetura.md`.

Título: `Project: {Nome do projeto} ({active|archived})`.

## Frontmatter

```yaml
type: project
goal: "..."
status_lifecycle: active | archived
owner: "[[Renato Faria]]"
mentions_entity: []
related: []
```

`status_lifecycle` deve bater com a subpasta. VaultSteward enforça.
