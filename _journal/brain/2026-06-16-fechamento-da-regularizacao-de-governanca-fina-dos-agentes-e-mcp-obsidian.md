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
  - config
  - log-curadoria
title: Fechamento da regularização de governança fina dos agentes e MCP Obsidian
event_date: '2026-06-16'
occurred_at: '2026-06-16T11:30:12.925739+00:00'
channel: telegram
participants:
  - Renato Faria
  - Brain
mentions_entity:
  - brain
  - marketing
  - reno
  - mcp-obsidian
  - hermes
related:
  - '[[_shared/context/brain/profile]]'
  - '[[_shared/context/marketing/profile]]'
  - '[[brain-mcp-obsidian-profile-config]]'
  - '[[_shared/goals/2026-06/renato]]'
confidence: 0.98
---
## Resultado

- `brain`, `marketing` e `reno` foram validados com `hermes --profile <perfil> mcp test obsidian`, todos conectando ao MCP Obsidian e descobrindo 47 ferramentas.
- O perfil Reno foi padronizado no `config.yaml`: servidor `mcp-obsidian` renomeado para `obsidian` e toolset/plataforma correspondente ajustado. Backup local criado em `/root/.hermes/profiles/reno/config.yaml.bak-governance-2026-06-16`.
- O vault foi validado com zero achados em `validate_vault` após correção de links e ownership dos documentos criados.
- Os wrappers `mcp_obsidian_*` desta sessão continuaram retornando `MCP server 'obsidian' is not connected`, apesar da conexão CLI e MCP direta estarem saudáveis. Interpretação: estado runtime da sessão/gateway, não falha do servidor MCP.

## Pendência operacional

A tentativa de reiniciar serviços `hermes-gateway-brain`, `hermes-gateway-marketing` e `hermes-gateway-reno` foi bloqueada pelo mecanismo de aprovação de comandos do Hermes. Portanto, a recarga dos gateways ficou pendente de aprovação explícita/manual.
