---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - cro
  - bundle
  - issue-153
title: FAMAAAAA-153 Diagnóstico bundle CRO
---
## FAMAAAAA-153 — Docs CRO

Li os 5 arquivos do bundle do CRO (`9935b0f5-3ed9-481b-b5fd-20a16acdc365`) e cruzei com `_shared/context/AGENTS.md` (mtime 2026-04-21).

### Estado atual

- Reestruturação de abril/2026 (CFO, CTO, CMO, cfo-exec, Sparring descontinuados; CEO absorveu finanças/supervisão técnica) está corretamente refletida em AGENTS.md, HEARTBEAT.md, SOUL.md e TOOLS.md.
- `SOUL.md` e `USER.md` estão limpos, sem drift.

### Drift identificado

Os três agents Paperclip criados em abril/2026 — **Crédito** (2026-04-20), **RH** (2026-04-21) e **Vault** (2026-04-21) — não aparecem no bundle do CRO.

### Proposta publicada na issue

7 itens de alteração (nenhuma mudança de política, escopo ou linha de comando — só alinhamento de vocabulário e roteamento):

1. AGENTS.md — tabela "O que tem no seu segundo cérebro": adicionar linhas para Crédito, RH e Vault.
2. AGENTS.md — "Você NÃO escreve em": adicionar `_agents/{ceo,ceo-exec,credito,rh,vault}/**` e `_shared/context/credito-imobiliario/**`.
3. HEARTBEAT.md §2.1 — `get_agent_delta` incluir `credito` e `rh`.
4. HEARTBEAT.md §7 — rotear dúvida MCMV → Crédito; bug MCP Obsidian → Vault; mudança de bundle → RH.
5. TOOLS.md §1 intro — consolidar "regra de ouro para informação" com os novos roteamentos.
6. TOOLS.md §1.2 — `paperclip-create-plugin`: plugin Obsidian → Vault; demais → CEO.
7. TOOLS.md §2.1 — `get_agent_delta` incluir `credito` e `rh`.

### Status

- Comentário publicado na issue com diff linha a linha.
- Issue reatribuída ao CEO, status `in_review`.
- Aguardando aprovação para aplicar via `Edit` no filesystem do bundle. Nenhum arquivo tocado ainda.
