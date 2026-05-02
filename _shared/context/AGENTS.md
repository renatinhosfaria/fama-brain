---
type: agents-map
owner: renato
created: '2026-04-14'
updated: '2026-05-02'
tags:
  - agents
---
## Permissão estrutural cross-território do vault-steward

O vault-steward tem permissão de escrita **estrutural** em todo o vault — decisão CEO 2026-04-30 (`_agents/ceo/decisions.md`) e `_shared/context/vault/ceo/schema.md` seção 4.

Operações permitidas ao vault-steward em qualquer território: corrigir/adicionar frontmatter, mover paths, deduplicar, atualizar wikilinks. Conteúdo substantivo (narrativa, julgamento, interpretação) permanece exclusivo do dono primário. Quando em dúvida se uma correção é estrutural ou substantiva, o steward escala ao CEO antes de editar.

**Legenda de escopos:**
- **(primary)** — dono primário; edita qualquer conteúdo nesse território.
- **(structural-only)** — vault-steward pode editar frontmatter, mover paths, dedup e atualizar wikilinks; nunca toca conteúdo substantivo.

`cleanup-only` é sinônimo de `structural-only` (termo legado mantido por compatibilidade).

## Imutabilidade de `decisions.md`

`_agents/*/decisions.md` é **append-only via `append_decision`** (MCP `mcp-fama_obsidian`). Ninguém — nem o próprio agente dono — deve usar `write_note` nele. O ownership do arquivo permanece com o agente dono (cobertura via patterns territoriais abaixo); a imutabilidade é enforçada pelo tool, não pelo mapa.

> Nota histórica: até 2026-05-02 havia uma regra `_agents/*/decisions.md => owner-only` que sobrepunha o ownership territorial e quebrava `append_decision(agent='<dono>')` (FAM-24). A regra foi removida — `append_decision` continua sendo a única forma legítima de escrever em `decisions.md`.

```
# Ownership map — vault Obsidian

# Governança e meta
_shared/context/AGENTS.md                => renato
_agents/README.md                        => renato (vault-steward propõe via issue)

# Territórios primários — Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary) | vault-steward (structural-only)
_shared/context/modelo-negocio/**        => renato (primary) | vault-steward (structural-only)
_shared/context/credito-imobiliario/**   => renato (primary) | vault-steward (structural-only)
_infra/**                                => renato (primary) | vault-steward (structural-only)

# Territórios primários — Reno (corretor, OpenClaw)
_agents/reno/**                          => reno (primary) | vault-steward (structural-only)
_shared/context/*/reno/**                => reno (primary) | vault-steward (structural-only)
_agents/Reno/**                          => reno (primary) | vault-steward (structural-only)
_shared/context/*/Reno/**                => reno (primary) | vault-steward (structural-only)

# Territórios primários — CEO
_agents/ceo/**                           => ceo (primary) | vault-steward (structural-only)
_shared/context/*/ceo/**                 => ceo (primary) | vault-steward (structural-only)
_shared/goals/*/ceo.md                   => ceo (primary) | vault-steward (structural-only)
_shared/results/*/ceo.md                 => ceo (primary) | vault-steward (structural-only)

# Território primário — VaultSteward
_agents/vault-steward/**                 => vault-steward
_shared/context/*/vault-steward/**       => vault-steward
_shared/goals/*/vault-steward.md         => vault-steward
_shared/results/*/vault-steward.md       => vault-steward

# Catch-all — paths sem dono explícito
**/*                                     => vault-steward
_agents/cmo/**                => cmo
_shared/context/*/cmo/**      => cmo
```
