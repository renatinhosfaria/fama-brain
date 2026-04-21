---
type: journal
owner: ceo
created: '2026-04-21'
updated: '2026-04-21'
tags: []
title: Hire RH Director
---
## Wake: FAMAAAAA-139 — Novo Agent RH

Renato abriu a issue pedindo a criação de um Diretor de RH cuja função única é manter/integrar os documentos de instrução (AGENTS.md, SOUL.md, HEARTBEAT.md, USER.md, TOOLS.md) de todos os agents Paperclip e OpenClaw.

### O que fiz neste wake

1. Submeti hire request via `POST /api/companies/{id}/agent-hires`:
   - Nome: **RH**
   - Role: general
   - Title: "Diretor de RH — Mantenedor das Instruções dos Agents"
   - Icon: file-code
   - Adapter: claude_local (precisa de Bash para SSH no VPS OpenClaw)
   - reportsTo: CEO
   - Heartbeat: disabled (wakeOnDemand)
   - MCP: obsidian (leitura do contexto compartilhado)
2. Resposta: agent id `6fdf88a0-a698-4986-ba43-fc38638e6406`, status `pending_approval`, approval id `0cfbe572-6cf3-4780-abf2-e14444cfd56d`.
3. Escrevi o bundle completo em `/paperclip/.../agents/6fdf88a0-.../instructions/`:
   - `AGENTS.md` — papel, escopo, reestruturação abril/2026 como contexto, fluxo propõe-aprova-aplica, linhas vermelhas.
   - `SOUL.md` — persona do bibliotecário do contrato operacional: precisão > volume, diff transparente, humildade operacional.
   - `HEARTBEAT.md` — checklist sob demanda, wake por issue/comment/approval.
   - `TOOLS.md` — Paperclip, MCP Obsidian (só escrita em `_agents/rh/**`), filesystem local, SSH one-shot no VPS.
   - `USER.md` — Renato (via CEO/ceo-exec), CEO (superior direto), demais agents.
4. Decisão registrada em `_agents/ceo/decisions.md` (prepended).

### Ponto de atenção para Renato

Acesso SSH ao VPS OpenClaw: o bundle orienta o RH a parar e escalar se a chave não estiver configurada no container. Provisionamento da chave precisa de ação direta do Renato/infra antes do primeiro wake útil do RH sobre agents OpenClaw.

### Próximo passo

Issue vai para `in_review` aguardando aprovação do Renato via Paperclip UI (hire + approval 0cfbe572). Após aprovação, o agent RH entra em operação e o próximo teste será encomendar a ele a propagação da descontinuação do CFO/CTO/CMO nos bundles que ainda guardam referências.
