---
schema_version: 1
type: interaction
status: active
created: '2026-06-07'
updated: '2026-06-07'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - cron
  - schema
  - ownership
  - blocked-fix
  - log-curadoria
title: >-
  Curadoria recorrente — tentativa bloqueada de correção Schema v1 em meta
  compartilhada
event_date: '2026-06-07'
occurred_at: '2026-06-07T06:46:00Z'
channel: cron-curadoria
participants:
  - Brain
mentions_entity:
  - brain
  - renato
related:
  - '[[2026-06/renato]]'
confidence: 0.9
external_ids:
  curation_run: cron-brain-2026-06-07T06-39Z
  blocked_fix: shared-goal-schema-version
---
## Escopo

Durante a validação pós-curadoria da rodada `cron-brain-2026-06-07T06-39Z`, o validador apontou um schema gap em `_shared/goals/2026-06/renato.md`: falta `schema_version: 1` em destino roteado Schema v1.

## Ações tomadas

- Li `_shared/goals/2026-06/renato.md` via MCP Obsidian.
- Tentei correção não destrutiva com `mcp_obsidian_upsert_goal(agent='renato', period='2026-06', ...)`, preservando o conteúdo existente. O helper atualizou `updated`, mas não inseriu `schema_version`, então a validação continuou acusando o mesmo erro.
- Tentei correção explícita via `mcp_obsidian_write_note` com frontmatter Schema v1 completo, mas a escrita foi bloqueada por ownership: o arquivo é de `renato`, não de `brain`.

## Resultado

A pendência foi preservada em vez de burlar ownership. A correção segura requer uma das opções:

1. autorização explícita para o Brain escrever como/para o owner `renato` nesse caminho; ou
2. ajuste no helper `mcp_obsidian_upsert_goal` para incluir os campos Schema v1 obrigatórios em `_shared/goals/`; ou
3. execução da correção pelo proprietário `renato`.

## Verificação

- `mcp_obsidian_validate_vault` continuou retornando 1 finding: `schema_error` em `_shared/goals/2026-06/renato.md` por ausência de `schema_version: 1`.

## Observação

Não houve alteração intencional no conteúdo da meta; o helper `upsert_goal` apenas tocou o campo `updated` antes de se constatar que não resolvia o schema gap.
