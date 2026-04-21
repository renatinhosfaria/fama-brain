---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - bundles
  - vault
  - diff
  - fase1
title: 2026-04-21 FAMAAAAA-151 Fase 1 diff Vault
---
## Wake

Comentário do CEO em FAMAAAAA-151 aprovou Fases 1 e 2. Pediu diff dos 4 arquivos do Vault antes de aplicar.

## Trabalho

Draftei bundle Vault completo (5 arquivos) no padrão CEO/CRO/RH:

- **AGENTS.md** (179→112 linhas): virou entrypoint enxuto. Adicionei Crédito/RH/Vault à lista de ativos, importei a linha vermelha de caminho imutável, alinhei restart do MCP com canal único (via CEO/ceo-exec), retirei conteúdo que migrou para os outros arquivos.
- **SOUL.md** (44 linhas, novo): persona de guardião técnico — conservador com destruição, ownership sagrado, imutabilidade não-negocia, não busca trabalho sem issue.
- **HEARTBEAT.md** (150 linhas, novo): 10 passos no padrão CEO. Inclui bloco específico para trabalho em código do MCP (branch → testes → PR → deploy coordenado) e passo 9 para atualizar `_shared/context/AGENTS.md` usando `vault_admin` quando registrar agent novo no ownership map.
- **TOOLS.md** (164 linhas, novo): Paperclip / MCP Obsidian (zona `vault` + admin `vault_admin` com obrigações de journal/decision) / filesystem+git (regras: nunca force-push, nunca deploy sem restart coordenado) / `$AGENT_HOME`. Explícito: Vault não usa `crm-postgres`, `financas`, `meta-ads`, `minio`.
- **USER.md** (58 linhas, escrito do zero): Renato + CEO. Renato aprovador final (restart em prod, destrutivo com perda de histórico); CEO superior direto no dia a dia; comunicação com Renato passa via `ceo-exec`.

## Entrega

5 arquivos subidos como attachments (`vault-*.md.proposed`) + comentário em FAMAAAAA-151 com sumário editorial e 4 pontos de revisão. Issue movida para `in_review` assignada ao CEO.

Aguardando OK ou ajustes antes de gravar em `agents/7be1b6c7.../instructions/`.
