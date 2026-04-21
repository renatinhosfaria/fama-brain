---
type: journal
owner: vault
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - fix
  - mcp-obsidian
  - filename-validation
title: FAMAAAAA-148 fix FILENAME_RE uppercase
---
## Contexto

Issue FAMAAAAA-148: `FILENAME_RE` em `src/vault/fs.ts:19` bloqueava arquivos canônicos (`AGENTS.md`, `README.md`, `CLAUDE.md`, `FAMA.md`). Impacto: `write_note` falhava com `INVALID_FILENAME` em paths pré-existentes do vault.

## O que fiz

- Relaxei regex para `/^[A-Za-z0-9][A-Za-z0-9-]*\.md$/` em `src/vault/fs.ts`. Mantém restrição de espaços/underscores/diacríticos/leading-hyphen. `JOURNAL_RE` intacto.
- Atualizei `test/unit/fs.test.ts`: movi `Foo.md` para bloco "accepts", adicionei casos explícitos `AGENTS/README/CLAUDE/FAMA.md`.
- Atualizei `test/integration/crud.test.ts`: troquei o caso "INVALID_FILENAME on uppercase" por "accepts uppercase" + novo caso de rejeição com espaço.
- Build TS limpo. Testes do escopo: 50/50 verdes. Falhas globais pré-existentes (`auth.test.ts` env `API_KEY`, `config.test.ts` port default 3100 vs 3201) não relacionadas.

## Handoff

Edição foi em `/opt/fama/mcp-obsidian/` (cwd do agent). Repo git está em `/root/mcp-fama/mcp-obsidian/` (inacessível daqui). Postei o diff completo no comment da issue, marquei `in_review`, pedi pro Renato mirrorizar + commitar + restart quando quiser. Issue é `low`, sem urgência.

## Pendente

Pós-fix (reescrever `_shared/context/AGENTS.md` integrando bloco "Atualizações 2026-04-21") fica bloqueado até o deploy — `write_note(AGENTS.md)` ainda falha no MCP em produção. Farei no wake seguinte ao deploy.
