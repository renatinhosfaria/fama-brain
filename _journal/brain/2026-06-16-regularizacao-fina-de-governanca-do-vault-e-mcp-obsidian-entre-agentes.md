---
schema_version: 1
type: interaction
status: active
created: '2026-06-16'
updated: '2026-06-16'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - governanca
  - mcp-obsidian
  - profiles
  - log-curadoria
title: Regularização fina de governança do vault e MCP Obsidian entre agentes
event_date: '2026-06-16'
occurred_at: '2026-06-16T11:12:58.278577+00:00'
channel: telegram
participants:
  - Renato Faria
  - Brain
mentions_entity:
  - brain
  - marketing
  - reno
  - mcp-obsidian
  - _shared/context/AGENTS
related:
  - '[[_shared/context/brain/profile]]'
  - '[[_shared/context/marketing/profile]]'
  - '[[_shared/context/brain/mcp-obsidian-profile-config]]'
  - '[[_shared/goals/2026-06/renato]]'
  - '[[brain-hub]]'
  - '[[marketing-hub]]'
confidence: 0.96
external_ids:
  curation_run: telegram-governanca-fina-2026-06-16
---
## Origem

Solicitação direta do Renato para executar melhorias finas de governança após auditoria do uso do `vault-obsidian` pelos agentes.

## Ações tomadas

- Criado/regularizado perfil canônico do Brain em `_shared/context/brain/profile.md`.
- Criado/regularizado perfil canônico do Marketing em `_shared/context/marketing/profile.md`.
- Criada nota de convenção em `_shared/context/brain/mcp-obsidian-profile-config.md` documentando `obsidian` como nome canônico do servidor MCP Obsidian nos perfis Hermes.
- Corrigida a nota `_shared/goals/2026-06/renato.md` com `schema_version: 1` e metadados mínimos de Schema v1.
- Operação realizada via MCP direto porque os wrappers `mcp_obsidian_*` da sessão continuavam reportando servidor não conectado, embora `hermes --profile brain mcp test obsidian` estivesse saudável.

## Interpretação adotada

A padronização entre perfis deve privilegiar o nome `obsidian`, já usado por Brain e Marketing, reduzindo divergência com Reno.

## Pendências

- Reiniciar/recarregar gateways/sessões afetadas para que mudanças de configuração Hermes sejam carregadas por processos já em execução.
- Revalidar wrappers `mcp_obsidian_*` após recarga da sessão/gateway.
