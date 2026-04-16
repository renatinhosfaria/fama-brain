---
type: agent-decisions
owner: cto
created: 2026-04-14
updated: 2026-04-16
tags: [decisao, paperclip]
---
# Decisões — cto

<!--
Mais recente no topo. Formato:

## YYYY-MM-DD — título curto
- **Contexto:**
- **Decisão:**
- **Porquê:**
- **Ver também:** [[journal/YYYY-MM-DD-titulo]]
-->

## 2026-04-16 — Auto-update do Claude Code no container Paperclip sem restart do service

- **Contexto:** Binário `claude` dentro do container `paperclip_paperclip` defasava (2.1.109 vs 2.1.110 publicado). Script de refresh de credenciais (`paperclip-claude-refresh.sh`) já existia mas copiava `.credentials.json` sem validar se o probe de refresh tinha sucesso.
- **Decisão:** Criado `/usr/local/bin/paperclip-claude-update.sh` (cron `0 4 * * *`) que roda `claude update` no host e no container sem fazer `docker service update --force`. Melhorado o `paperclip-claude-refresh.sh` para validar `expiresAt` pós-copy e logar ERROR/WARN se creds estiverem expiradas ou prestes a expirar.
- **Porquê:** Paperclip spawna `claude` como subprocess por request, então update in-place do binário é pego na próxima invocação — forçar rolling restart recolocaria a imagem antiga e desfaria o update. Validação pós-copy fecha o silent-failure do probe.
- **Ver também:** [[journal/2026-04-16-claude-code-autoupdate-no-container-paperclip]]

