---
type: shared-context
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
topic: vault
title: Inventário pré-migração vault FAM (2026-04-30)
tags:
  - meta
  - inventory
  - migration
  - fam-16
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
verified_by: null
verified_at: null
related:
  - '[[schema.md]]'
---

# Inventário pré-migração vault FAM (2026-04-30)

Snapshot tirado em 2026-04-30 antes da migração FAM-16 (schema legado → schema v1). Total: **175 notas**.

## Distribuição por type legado

| Type legado | Notas | Type v1 destino | Folder destino |
|-------------|-------|-----------------|----------------|
| `entity-profile` | 89 | `entity` (após dedup) ou `interaction` (~60 que são journal disfarçado em `_agents/reno/atendimentos/`) | `_entities/` ou `_journal/` |
| `journal` | 32 | `journal` ou `interaction` | `_journal/` |
| `context` | 30 | `concept` ou `reference` | `_curated/` |
| `shared-context` | 6 | `concept` ou `reference` | `_curated/` ou `_meta/` (já migrados) |
| `agent-decisions` | 4 | `decision` (decompor logs em N notas atômicas) | `_decisions/` |
| `agent-readme` | 3 | `hub` | `_hubs/` |
| `agent-profile` | 3 | `runbook` | `_runbooks/` |
| `project-readme` | 3 | `project` | `_projects/active/` ou `_projects/archived/` |
| `moc` | 3 | `hub` | `_hubs/` |
| `agents-map` | 1 | `hub` | `_hubs/agents-map.md` |
| (sem frontmatter) | 1 (`metodologia-negocio.md` raiz) | a inspecionar; provavelmente `concept` | `_curated/` |

## Distribuição por path atual

### `_agents/` (158 notas)

Grupo a ser dissolvido — `_agents/{agente}/` não existe no schema v1. Mapeamento:

| Path atual | Notas | Destino v1 |
|------------|-------|------------|
| `_agents/ceo/profile.md` | 1 | `_runbooks/agent-ceo.md` |
| `_agents/ceo/README.md` | 1 | `_hubs/hub-agent-ceo.md` |
| `_agents/ceo/decisions.md` | 1 | decompor em N notas em `_decisions/` |
| `_agents/reno/profile.md` | 1 | `_runbooks/agent-reno.md` |
| `_agents/reno/README.md` | 1 | `_hubs/hub-agent-reno.md` |
| `_agents/reno/decisions.md` | 1 | decompor em `_decisions/` |
| `_agents/reno/decisions/2026-04-30-followups-independentes.md` | 1 | `_decisions/2026-04-30-reno-followups-independentes.md` |
| `_agents/reno/atendimentos/*.md` | 99 | inspeção 1-a-1: entity-profile real → `_entities/` (com merge de duplicatas), journal → `_journal/reno/` |
| `_agents/reno/auditorias/*.md` | 16 | `_journal/reno/` (todos são auditorias diárias, type v1 = `journal`) |
| `_agents/reno/context/*.md` | 5 | `_curated/` (5 contextos institucionais: credito-imobiliario, fama-produtos, operacao-crm-webhook, playbook-atendimento, second-brain-governance) |
| `_agents/reno/journal/*.md` | 6 | `_journal/reno/` |
| `_agents/reno/planos/*.md` | 1 | `_journal/reno/` (é plano-estratégico, mas type=journal — autor decide se promove a `_decisions/`) |
| `_agents/reno/procedimentos/*.md` | 1 | `_runbooks/runbook-registro-vault-reno.md` |
| `_agents/vault-steward/profile.md` | 1 | `_runbooks/agent-vault-steward.md` |
| `_agents/vault-steward/README.md` | 1 | `_hubs/hub-agent-vault-steward.md` |
| `_agents/vault-steward/decisions.md` | 1 | decompor em `_decisions/` |
| `_agents/README.md` | 1 | `_hubs/hub-agentes.md` |

### `_infra/` (2 notas)

| Path atual | Notas | Destino v1 |
|------------|-------|------------|
| `_infra/mcp-obsidian.md` | 1 | `_runbooks/runbook-mcp-obsidian.md` |
| `_infra/README.md` | 1 | `_hubs/hub-infra.md` |

### `_projects/` (8 notas, fica)

| Path atual | Notas | Destino v1 |
|------------|-------|------------|
| `_projects/famachat/*.md` (7 notas) | 7 | `_projects/active/famachat/{slug}.md` (mover subpasta) |
| `_projects/portalcef/README.md` | 1 | inspecionar — se ativo, `_projects/active/portalcef.md`; se arquivado, `_projects/archived/portalcef.md` |

### `_shared/` (16 notas)

| Path atual | Notas | Destino v1 |
|------------|-------|------------|
| `_shared/context/AGENTS.md` | 1 | `_hubs/hub-agents-map.md` |
| `_shared/context/FAMA.md` | 1 | `_curated/fama/index.md` ou `_hubs/hub-fama.md` |
| `_shared/context/credito-imobiliario/*.md` | 8 | `_curated/credito-imobiliario/{slug}.md` |
| `_shared/context/fama/*.md` | 7 | `_curated/fama/{slug}.md` |
| `_shared/context/modelo-negocio/ceo/segundo-cerebro.md` | 1 | `_curated/modelo-negocio/segundo-cerebro.md` |
| `_shared/context/modelo-negocio/metodologia-negocio.md` | 1 | `_curated/modelo-negocio/metodologia-negocio.md` |
| `_shared/context/organograma/ceo/diretoria-proposta-2026q2.md` | 1 | `_curated/organograma/diretoria-proposta-2026q2.md` |
| `_shared/context/vault/ceo/schema.md` | 1 | manter onde está + `status: superseded` (substituído por `_meta/schema.md`) |
| `_shared/context/vault/vault-steward/audit-2026-04-30.md` | 1 | `_journal/vault-steward/2026-04-30-audit.md` |
| `_shared/context/vault/vault-steward/audit-conexoes-2026-04-30.md` | 1 | `_journal/vault-steward/2026-04-30-audit-conexoes.md` |

### Raiz (2 notas)

| Path atual | Notas | Destino v1 |
|------------|-------|------------|
| `metodologia-negocio.md` | 1 | inspecionar (sem frontmatter); provável duplicata de `_shared/context/modelo-negocio/metodologia-negocio.md` — merge ou apagar |
| `README.md` | 1 | `_hubs/hub-vault-fama.md` (índice raiz do segundo cérebro) |

## Issues estruturais detectadas (FAM-5 follow-ups)

Issues residuais do cleanup big-bang anterior (FAM-5/FAM-9), parcialmente resolvidas:

1. **~60 entity-profiles em `_agents/reno/atendimentos/`** — ainda misturados com journals. Precisam classificação 1-a-1: virou `entity` (vai pra `_entities/`) ou era atendimento avulso (vira `interaction` em `_journal/`). FAM-9 fechado mas separação não foi feita por completo.
2. **`metodologia-negocio.md` na raiz sem frontmatter.**
3. **Duplicatas de entidade** (ex.: `bruno-savio` aparece em 1 lugar mas pode ter aliases sem perfil) — checagem manual em FAM-16.4 (dedup).
4. **`agent-decisions` é log compilado** (4 arquivos) — schema v1 exige 1 nota por decisão. Decompor preserva timestamps das entradas existentes.

## Próximos passos (em ordem de execução)

1. **[BLOQUEADO em MCP]** Atualizar MCP `obsidian` para aceitar types v1 + datas ISO + filename README + campos extras. Sem isso, mass migration falha.
2. **Inventário detalhado por nota** (próximo heartbeat) — ler 1-a-1 os 99 arquivos de `_agents/reno/atendimentos/` e classificar entity vs journal.
3. **Dedup de entidades** (heartbeat seguinte) — gerar lista de duplicatas, propor merges, executar.
4. **Backfill de frontmatter v1** — adicionar `schema_version`, `status`, `source`, `author_agent`, `verified_by` em todas as 175 notas (pode ser feito ANTES do MCP suportar novos types, porque são campos extras).
5. **Mass rename** — aplicar convenção `{Tipo}: {Sujeito}` nos títulos. Bloqueado pelo MCP filename regex (não aceita maiúsculas/dois-pontos no filename, só nos títulos).
6. **Migração física de pastas** — mover notas para nova estrutura. Bloqueado em MCP type validation.
7. **Commit final** — vault em estado v1.
