---
type: agents-map
owner: renato
created: '2026-04-14'
updated: '2026-05-08'
tags:
  - agents
---
Vínculos: [[reno]], [[fama-overview]], [[schema]].

**Legenda de escopos:**
- **(primary)** — dono primário; edita qualquer conteúdo nesse território.

## Imutabilidade de `decisions.md`

`_agents/*/decisions.md` é **append-only via `append_decision`** (MCP `mcp-fama_obsidian`). Ninguém — nem o próprio agente dono — deve usar `write_note` nele. O ownership do arquivo permanece com o agente dono (cobertura via patterns territoriais abaixo); a imutabilidade é enforçada pelo tool, não pelo mapa.

> Nota histórica: até 2026-05-02 havia uma regra `_agents/*/decisions.md => owner-only` que sobrepunha o ownership territorial e quebrava `append_decision(agent='<dono>')` (FAM-24). A regra foi removida — `append_decision` continua sendo a única forma legítima de escrever em `decisions.md`.

```
# Ownership map — vault Obsidian

# Governança e meta
_shared/context/AGENTS.md                => renato
_agents/README.md                        => renato

# Territórios primários — Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary)
_shared/context/modelo-negocio/**        => renato (primary)
_shared/context/credito-imobiliario/**   => renato (primary)

# Territórios primários — Reno (corretor, OpenClaw)
_agents/reno/**                          => reno (primary)
_shared/context/*/reno/**                => reno (primary)
_agents/Reno/**                          => reno (primary)
_shared/context/*/Reno/**                => reno (primary)

# Catch-all — paths sem dono explícito
**/*                                     => renato
```

## Idioma oficial — pt-BR

Todos os agentes da Fama pensam, conversam e escrevem em **português do Brasil** por padrão (raciocínio, comentários, decisões, commits, títulos e descrições de tarefas).
