---
type: journal
owner: ceo
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - wake
  - hire
  - vault
  - FAMAAAAA-136
title: hire-vault-admin-mcp-maintainer
---
## Wake 2026-04-21 ~12:23 UTC

Inbox: FAMAAAAA-136 "Novo Agente" (issue_assigned, in_progress, atribuído a mim). Renato abriu pedindo novo agent com dupla função:

1. Administrador total do vault fama-brain (criar/mover/editar/excluir em qualquer pasta, sem ownership).
2. Mantenedor do MCP Obsidian em /root/mcp-fama/mcp-obsidian/ (corrigir bugs, novas tools, registrar/remover agents).

## O que fiz

- Plano escrito em `[plan](/FAMAAAAA/issues/FAMAAAAA-136#document-plan)`.
- Hire request submetido: agent "Vault", role general, title "Administrador do Vault e Mantenedor do MCP Obsidian", icon database, reports CEO, adapter claude_local Opus 4.7, cwd `/root/mcp-fama/mcp-obsidian/`, só MCP Obsidian habilitado (sem CRM/Finanças/Meta/MinIO), heartbeat timer off.
- Status: `pending_approval` (approval 5b1ba44f-c3eb-4953-b4c4-a97476787621, agent id 7be1b6c7-51ba-4f1a-b57a-9cd7bed4667b).
- Issue FAMAAAAA-136 → `in_review` com comentário detalhando plano, approval e primeira missão.
- `append_decision` registrada.

## Escolhas de escopo

- MCP superfície mínima (só Obsidian) — o agent não precisa de Finanças/CRM/Meta/MinIO.
- cwd apontando direto ao source do MCP — permite Read/Edit/Write/Bash do claude_local para manutenção.
- Primeira missão pós-aprovação: bypass de ownership no próprio MCP (role vault_admin). Hoje toda escrita exige `as_agent` com ownership — sem bypass o Vault não consegue editar `_agents/cro/**` etc.

## Pendências para próximo wake

- Aprovação Renato no approval 5b1ba44f.
- Se aprovado: escrever bundle AGENTS.md/SOUL.md/TOOLS.md/HEARTBEAT.md do Vault; atribuir primeira issue (bypass ownership no MCP).
- FAMAAAAA-134 (compound outage Reno + Follow-up) — escalado há ~18h sem retorno do Renato; checar se moveu.
