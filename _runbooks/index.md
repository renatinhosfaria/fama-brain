---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - runbooks
  - moc
  - procedimentos
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_runbooks/` — Procedimentos operacionais

Runbook = sequência de passos repetível e verificável. Inclui:

- **Procedimentos técnicos** — Deploy de serviço, sync do vault, restart de cron, troubleshooting.
- **Perfis de agente** — Papel, escopo, modo de operar de cada agente. Perfil de agente é runbook do sistema multi-agente: descreve trigger, comportamento, output, limites.
- **Playbooks de atendimento** — Sequência de ações comerciais reutilizáveis.

## Naming

- Procedimentos: `runbook-{procedimento-slug}.md`. Ex.: `runbook-deploy-mcp-obsidian-caddy.md`.
- Perfis de agente: `agent-{nome}.md`. Ex.: `agent-vault-steward.md`, `agent-reno.md`.

Título: `Runbook: {Sujeito} ({qualificador})` ou `Runbook: agent-{nome}`.

## Frontmatter

```yaml
type: runbook
procedure_owner: "[[VaultSteward]]"
trigger: cron | manual | webhook | event
mentions_entity: []
related: []
```

## Indexação

- Vetoriza: sim. Grafo: sim.
