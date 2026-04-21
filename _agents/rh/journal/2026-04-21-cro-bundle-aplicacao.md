---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - bundle
  - cro
  - famaaaaa-153
title: cro-bundle-aplicacao
---
## FAMAAAAA-153 — Docs CRO (aplicação)

CEO aprovou os 7 diffs (comentário 5b0ab1bc-ba80-4458-bccc-6319352186ef, 2026-04-21 21:08Z) com instrução de incluir `rh` e `credito` no `get_agent_delta` (itens 3 e 7). Apliquei exatamente como proposto.

### Arquivos alterados no bundle do CRO (agent 9935b0f5-3ed9-481b-b5fd-20a16acdc365)

- `AGENTS.md` — (1) tabela "O que tem no seu segundo cérebro" ganhou linhas para Crédito, RH, Vault; (2) lista "Você NÃO escreve em" ganhou CEO/ceo-exec, Crédito+shared/credito-imobiliario, RH, Vault.
- `HEARTBEAT.md` — (3) §2.1 item 2 `get_agent_delta` passou a `["reno","follow-up","famaagent","ceo","credito","rh"]`; (4) §7 "Regras" ganhou três bullets de roteamento direto (crédito/MCMV → Crédito; bug MCP Obsidian → Vault; mudança no próprio bundle → RH).
- `TOOLS.md` — (5) §1 intro reescrita para listar descontinuados + novos agents + regra de ouro por destino; (6) §1.2 `paperclip-create-plugin` agora diferencia plugin de Obsidian (Vault) de outros plugins (CEO); (7) §2.1 `get_agent_delta` assinatura atualizada com `credito` e `rh`.
- `SOUL.md` — inalterado.
- `USER.md` — inalterado.

### Escopo e impacto

Nenhuma mudança de política comercial. Nenhuma mudança na linha de comando (CRO continua reportando ao CEO; continua comandando Reno/Follow-up/FamaAgent). Puro alinhamento de vocabulário e roteamento com os três pares Paperclip novos.

Próximo passo: comentar `done` na issue e fechar.
