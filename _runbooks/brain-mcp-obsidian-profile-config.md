---
schema_version: 1
type: runbook
status: active
created: '2026-06-16'
updated: '2026-06-17'
source: human-curated
tags:
  - brain
  - hermes
  - mcp-obsidian
  - governanca
  - config
author_agent: brain
title: 'Runbook: Convenção do MCP Obsidian nos perfis Hermes'
procedure_owner: brain
trigger: 'configuração, auditoria ou troubleshooting de MCP Obsidian em perfis Hermes'
mentions_entity:
  - brain
  - marketing
  - reno
  - hermes
  - mcp-obsidian
related:
  - '[[_shared/context/brain/profile]]'
  - '[[_shared/context/marketing/profile]]'
  - '[[_shared/context/AGENTS]]'
  - '[[brain-hub]]'
  - '[[marketing-hub]]'
  - '[[reno-hub]]'
  - >-
    [[_journal/brain/2026-06-16-regularizacao-fina-de-governanca-do-vault-e-mcp-obsidian-entre-agentes]]
  - >-
    [[_journal/brain/2026-06-16-fechamento-da-regularizacao-de-governanca-fina-dos-agentes-e-mcp-obsidian]]
owner: brain
---
# Runbook: Convenção do MCP Obsidian nos perfis Hermes

## Decisão operacional
A partir desta curadoria, o nome canônico do servidor MCP Obsidian nos perfis Hermes deve ser `obsidian`.

## Estado esperado
- Perfil `brain`: servidor `obsidian` apontando para `https://mcp-obsidian.famachat.com.br/mcp`.
- Perfil `marketing`: servidor `obsidian` apontando para `https://mcp-obsidian.famachat.com.br/mcp`.
- Perfil `reno`: servidor `obsidian` apontando para `https://mcp-obsidian.famachat.com.br/mcp`.

## Motivo
Antes desta regularização, Brain/Marketing usavam o nome `obsidian` e Reno usava `mcp-obsidian`. A conexão funcionava, mas a diferença aumentava risco de prompts, runbooks e automações assumirem toolsets ou nomes de servidor divergentes.

## Classificação de curadoria
- Tipo: runbook de governança operacional.
- Tema: Hermes, MCP Obsidian, perfis de agentes e continuidade multiagent.
- Estado: ativo.
- Prioridade: alta para troubleshooting e auditoria de perfis; não é tarefa recorrente por si só.

## Regra futura
- Novos perfis devem usar `obsidian` como chave do servidor MCP Obsidian.
- Runbooks devem se referir conceitualmente a MCP Obsidian; quando precisarem citar comando Hermes, usar `hermes --profile <perfil> mcp test obsidian`.
- Se um wrapper `mcp_obsidian_*` falhar na sessão mas `hermes --profile <perfil> mcp test obsidian` passar, tratar como falha de runtime/wrapper e usar chamada direta MCP apenas como contingência rastreada.

## Relações úteis
- Perfil do Brain: [[_shared/context/brain/profile]]
- Perfil do Marketing: [[_shared/context/marketing/profile]]
- Mapa de ownership e governança multiagente: [[_shared/context/AGENTS]]
- Hubs operacionais: [[brain-hub]], [[marketing-hub]], [[reno-hub]]
- Logs de origem da regularização:
  - [[_journal/brain/2026-06-16-regularizacao-fina-de-governanca-do-vault-e-mcp-obsidian-entre-agentes]]
  - [[_journal/brain/2026-06-16-fechamento-da-regularizacao-de-governanca-fina-dos-agentes-e-mcp-obsidian]]

## Verificação
```bash
hermes --profile brain mcp test obsidian
hermes --profile reno mcp test obsidian
hermes --profile marketing mcp test obsidian
```
