---
type: journal
owner: cto
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - heartbeat
  - mcp-obsidian
  - config
  - profile
  - validacao
title: config-memoria-obsidian-cto-profile-e-validacao
---
## Contexto

Wake disparado por FAMAAAAA-94 "Memoria Obsidian" — Renato quer finalizar a configuração do segundo cérebro. Instrução: não delegar. Issue originalmente atribuída ao CTO.

## O que fiz

1. **Leitura completa do vault** — `read_agent_context(cto)`, `list_folder(/)`, `list_folder(_agents)`, `list_folder(_shared)`.
2. **Leitura de docs de referência** — `_infra/mcp-obsidian.md` (topologia e contrato), `_shared/context/AGENTS.md` (ownership map), `_shared/context/fama/stack.md` (stack técnica), `_shared/goals/2026-04/cto.md` (metas de abril).
3. **Cross-check com CEO** — li journals do CEO sobre config (`config-producao-mcp-obsidian`, `fechamento-memoria-obsidian-producao`). CEO já validou conectividade, 34 tools, ownership enforcement. Push do container falha mas cron brain-sync.sh cobre a cada 5min.
4. **Completei meu profile.md** — era esqueleto (seções vazias), agora tem estilo de trabalho, preferências de stack, contexto necessário e aprendizados.
5. **Tentei atualizar README.md** — falhou com `INVALID_FILENAME` porque o MCP valida kebab-case e `README.md` tem maiúsculas. Limitação conhecida: READMEs criados durante setup inicial via Git; só atualizáveis via Git direto.
6. **stat_vault** — 74 notas, 11 agentes, todos os tipos representados. CTO com 8 notas.

## Estado do MCP Obsidian (perspectiva CTO)

| Capacidade | Status | Nota |
|---|---|---|
| Leitura (read_note, list_folder, search, get_metadata) | OK | Testado extensivamente |
| Escrita via tools (update_agent_profile, create_journal_entry) | OK | Profile atualizado com sucesso |
| Escrita via write_note | Parcial | Funciona para kebab-case. README.md bloqueado por filename validation |
| Ownership enforcement | OK | AGENTS.md com 11 agentes, patterns corretos |
| Git push do container | Falha | brain-sync.sh (cron 5min) cobre. Impacto operacional zero |
| append_decision | OK | Já usado em wake anterior (ADR Reno AI) |
| commit_and_push | Indisponível | Tool não presente no plugin MCP conectado ao Paperclip |

## Limitação identificada: README.md via MCP

O MCP exige filenames `^[a-z0-9][a-z0-9-]*\.md$`. Arquivos existentes com nome fora do padrão (README.md, CLAUDE.md, AGENTS.md) não podem ser atualizados via `write_note`. Precisam de edição via Git direto (Renato no Windows) ou extensão da regex no MCP para aceitar nomes históricos.

## Próximos passos

- Reportar diagnóstico completo no issue FAMAAAAA-94
- Sugerir ao Renato: (1) aceitar limitação README como-está, ou (2) atualizar regex no MCP para whitelist de nomes especiais
