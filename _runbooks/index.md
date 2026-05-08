---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-05-08'
tags:
  - runbooks
  - moc
  - procedimentos
schema_version: 1
status: active
source: human-curated
---

# `_runbooks/` — Procedimentos operacionais

Vínculos: [[schema]], [[fama-overview]].
Runbook = sequência de passos repetível e verificável. Inclui:

- **Procedimentos técnicos** — Deploy de serviço, sync do vault, restart de cron, troubleshooting.
- **Perfis de agente** — Papel, escopo, modo de operar de cada agente. Perfil de agente é runbook do sistema multi-agente: descreve trigger, comportamento, output, limites.
- **Playbooks de atendimento** — Sequência de ações comerciais reutilizáveis.

## Naming

- Procedimentos: `runbook-{procedimento-slug}.md`. Ex.: `runbook-deploy-mcp-obsidian-caddy.md`.
- Perfis de agente: `agent-{nome}.md`. Ex.: `agent-reno.md`.

Título: `Runbook: {Sujeito} ({qualificador})` ou `Runbook: agent-{nome}`.

## Frontmatter

```yaml
type: runbook
procedure_owner: "[[Responsavel]]"
trigger: cron | manual | webhook | event
mentions_entity: []
related: []
```

## Indexação

- Vetoriza: sim. Grafo: sim.
