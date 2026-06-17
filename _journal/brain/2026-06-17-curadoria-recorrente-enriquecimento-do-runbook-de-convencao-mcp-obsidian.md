---
schema_version: 1
type: interaction
status: active
created: '2026-06-17'
updated: '2026-06-17'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - cron
  - governanca
  - mcp-obsidian
  - runbook
  - log-curadoria
title: Curadoria recorrente — enriquecimento do runbook de convenção MCP Obsidian
event_date: '2026-06-17'
occurred_at: '2026-06-17T10:20:00Z'
channel: cron-curadoria
participants:
  - Brain
mentions_entity:
  - brain
  - marketing
  - reno
  - hermes
  - mcp-obsidian
related:
  - '[[_runbooks/brain-mcp-obsidian-profile-config]]'
  - '[[_shared/context/brain/profile]]'
  - '[[_shared/context/marketing/profile]]'
  - '[[_shared/context/AGENTS]]'
  - '[[brain-hub]]'
  - '[[marketing-hub]]'
  - '[[reno-hub]]'
confidence: 0.97
external_ids:
  curation_run: cron-brain-2026-06-17T10-16Z
  changed_note: _runbooks/brain-mcp-obsidian-profile-config.md
---
## Escopo revisado

Rotina recorrente executada em 2026-06-17T10:16Z, cobrindo deltas recentes do Brain, journals recentes em `_journal/**`, entidades alteradas em `_entities/**`, runbooks alterados em `_runbooks/**` e buscas por sinais de curadoria pendente/proveniência incerta.

## Documentos de origem

- `_runbooks/brain-mcp-obsidian-profile-config.md`
- `_shared/context/brain/profile.md`
- `_shared/context/marketing/profile.md`
- `_shared/context/AGENTS.md`
- `_entities/keila.md`
- `_entities/renato-faria.md`
- Journals recentes de Brain/Reno/Marketing listados por delta MCP desde 2026-06-16T10:16Z.

## Ações tomadas

- Classifiquei o runbook `brain-mcp-obsidian-profile-config` como runbook de governança operacional de alta prioridade para troubleshooting/auditoria de perfis Hermes.
- Reescrevi/enriqueci o documento com seção de classificação de curadoria, mantendo a intenção original e a regra canônica do servidor `obsidian`.
- Adicionei relações úteis em frontmatter e corpo para perfis canônicos, mapa de ownership, hubs operacionais e logs de origem da regularização.
- Preservei a separação territorial: não editei journals write-once de Reno/Marketing nem transformei sinais recentes de campanha/agendamento em tarefas imediatas.

## Documentos alterados

- Atualizado: `_runbooks/brain-mcp-obsidian-profile-config.md`.

## Documentos relacionados

- `[[_shared/context/brain/profile]]`
- `[[_shared/context/marketing/profile]]`
- `[[_shared/context/AGENTS]]`
- `[[brain-hub]]`, `[[marketing-hub]]`, `[[reno-hub]]`
- `[[_journal/brain/2026-06-16-regularizacao-fina-de-governanca-do-vault-e-mcp-obsidian-entre-agentes]]`
- `[[_journal/brain/2026-06-16-fechamento-da-regularizacao-de-governanca-fina-dos-agentes-e-mcp-obsidian]]`

## Motivo

O runbook era válido, mas ainda tinha baixa navegabilidade: nenhum wikilink no corpo e ausência de `related`/`mentions_entity` para os perfis e logs que explicam a decisão. O enriquecimento melhora recuperação futura sem alterar decisão material nem criar nova obrigação operacional.

## Pendências e incertezas

- Não encontrei sinal explícito de nota órfã, provenance incerta ou documento novo não curado no escopo recente.
- Os journals de Marketing e Reno recentes foram tratados como territórios primários dos respectivos agentes; eventuais consolidações operacionais nesses territórios continuam dependentes de ownership/autorização ou execução pelo agente dono.

## Verificação

- Read-back do runbook atualizado executado via `mcp_obsidian_read_note`.
- `mcp_obsidian_validate_note` do runbook atualizado retornou válido.
- `mcp_obsidian_validate_note` também retornou válido para `_entities/keila.md` e `_entities/renato-faria.md` após inspeção de continuidade recente.
- `mcp_obsidian_validate_vault` retornou 0 achados nas categorias de schema, ownership, namespace legado, links quebrados, wikilink obrigatório, trust gap, index policy, routing e frontmatter.
