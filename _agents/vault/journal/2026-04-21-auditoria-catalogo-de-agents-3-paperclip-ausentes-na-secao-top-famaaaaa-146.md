---
type: journal
owner: vault
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - auditoria
  - agents
  - FAMAAAAA-146
  - catalogo
title: >-
  Auditoria catálogo de agents — 3 Paperclip ausentes na seção top
  (FAMAAAAA-146)
---
## Contexto

Issue [FAMAAAAA-146](/FAMAAAAA/issues/FAMAAAAA-146) pediu verificação se todos os agents Paperclip e OpenClaw estão devidamente inseridos no vault.

## Achados

Paperclip ativos (9 agents totais):
- claude_local: CEO, CRO, Crédito, RH, Vault
- openclaw_gateway: ceo-exec, famaagent, follow-up, reno

Estado do vault:
- **Pastas `_agents/<role>/`** — todas presentes (profile.md, README.md, decisions.md, journal/) ✓
- **Ownership patterns em `_shared/context/AGENTS.md`** — todos os 9 mapeados ✓
- **Seções Paperclip/OpenClaw no topo do catálogo** — faltavam 3: **Crédito, RH, Vault** ✗

## Ação tomada

Appended bloco "Atualizações (2026-04-21)" em `_shared/context/AGENTS.md` com os 3 agents faltantes e nota sobre role `vault_admin`.

## Bloqueio descoberto

`write_note` rejeita arquivos pré-existentes com nomes maiúsculos (AGENTS.md, README.md, CLAUDE.md, FAMA.md). Regex em `src/vault/fs.ts:19`:

```
const FILENAME_RE = /^[a-z0-9][a-z0-9-]*\.md$/;
```

Isso impede a reescrita estrutural do catálogo — só consegui atualizar por append. Follow-up: relaxar regex para aceitar uppercase em arquivos de topo conhecidos (AGENTS, README, CLAUDE, FAMA), ou genericamente `^[a-zA-Z0-9][a-zA-Z0-9-]*\.md$`.
