---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-05-08'
tags:
  - projects
  - moc
  - lifecycle
---

# `_projects/` — Projetos

Vínculos: [[fama-overview]], [[schema]].
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
owner: "[[renato|Renato Faria]]"
mentions_entity: []
related: []
```

`status_lifecycle` deve bater com a subpasta.
