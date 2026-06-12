---
schema_version: 1
type: interaction
status: active
created: '2026-06-12'
updated: '2026-06-12'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - cron
  - schema
  - ownership
  - blocked-fix
  - validation
title: Validação pós-curadoria — finding persistente em meta compartilhada de Renato
event_date: '2026-06-12'
occurred_at: '2026-06-12T14:20:00Z'
channel: cron-curadoria
participants:
  - Brain
mentions_entity:
  - brain
  - renato
related:
  - _entities/jonatas-batista-de-oliveira.md
  - _shared/context/AGENTS.md
  - _shared/goals/2026-06/renato.md
confidence: 0.9
external_ids:
  curation_run: cron-brain-2026-06-12T14-12Z
  validation_finding_path: _shared/goals/2026-06/renato.md
---
## Contexto

Após a curadoria da entidade `_entities/jonatas-batista-de-oliveira.md`, executei `mcp_obsidian_validate_note` na entidade alterada e `mcp_obsidian_validate_vault` no vault.

## Resultado

- A nota alterada `_entities/jonatas-batista-de-oliveira.md` validou sem erros.
- A validação global do vault retornou 1 finding persistente fora do escopo alterado nesta rodada: `_shared/goals/2026-06/renato.md` sem `schema_version: 1` em destino roteado Schema v1.

## Governança aplicada

- Consultei `_shared/context/AGENTS.md`: `_shared/goals/2026-06/renato.md` está em território de Renato / shared goals, não em território primário do Brain.
- Não tentei reparo por helper nem escrita direta nessa nota, para não contornar ownership nem produzir frontmatter inválido em território alheio.

## Pendência

- Reparo requer autorização explícita do Renato ou ajuste no helper/servidor MCP apropriado para produzir Schema v1 válido nesse tipo de nota, conforme governança já documentada em logs anteriores.

## Verificação

- `mcp_obsidian_validate_note` em `_entities/jonatas-batista-de-oliveira.md`: válido.
- `mcp_obsidian_validate_vault`: 1 finding global, o mesmo tipo de pendência externa à curadoria de entidade.
