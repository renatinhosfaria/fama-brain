---
type: agents-map
owner: renato
created: '2026-04-14'
updated: '2026-05-11'
tags:
  - agents
---
Vínculos: [[reno]], [[fama-overview]], [[schema]].

**Legenda de escopos:**
- **(primary)** — dono primário; edita qualquer conteúdo nesse território.

## Historico de `decisions.md`

O namespace `_agents/` foi removido na migracao Reno-first de 2026-05-11. Nao ha mais ownership ativo para `_agents/*/decisions.md`; futuras decisoes devem ser registradas como notas atomicas em `_decisions/`.

> Nota histórica: até 2026-05-02 havia uma regra `_agents/*/decisions.md => owner-only` que sobrepunha o ownership territorial e quebrava `append_decision(agent='<dono>')` (FAM-24). A regra foi removida — `append_decision` continua sendo a única forma legítima de escrever em `decisions.md`.

```
# Ownership map — vault Obsidian

# Governança e meta
_shared/context/AGENTS.md                => renato

# Territórios primários — Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary)
_shared/context/modelo-negocio/**        => renato (primary)
_shared/context/credito-imobiliario/**   => renato (primary)

# Territórios primários — Reno (corretor, OpenClaw)
_journal/reno/**                         => reno (primary)
_runbooks/reno-*.md                      => reno (primary)
_decisions/reno-*.md                     => reno (primary)
_decisions/*-reno-*.md                   => reno (primary)

# Entidades globais — nesta fase Renato permanece dono primário; permissões futuras do Reno dependem de regra/tooling posterior.
_entities/**                             => renato (primary)

# Catch-all — paths sem dono explícito
**/*                                     => renato
```

## Idioma oficial — pt-BR

Todos os agentes da Fama pensam, conversam e escrevem em **português do Brasil** por padrão (raciocínio, comentários, decisões, commits, títulos e descrições de tarefas).
