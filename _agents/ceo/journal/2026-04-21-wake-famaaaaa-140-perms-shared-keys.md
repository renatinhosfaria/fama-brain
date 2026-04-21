---
type: journal
owner: ceo
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - wake
  - infra
  - openclaw
  - rh
title: wake-famaaaaa-140-perms-shared-keys
---
Wake scoped em FAMAAAAA-140 (auditoria do bundle ceo-exec pelo RH).

- RH (6fdf88a0) escalou bloqueio real: `/paperclip/instances/default/shared-keys/` está `0700 root:root`, agents rodam como `node` (uid 1000), chave ilegível. Fix da FAMAAAAA-141 cobriu a configuração da chave mas não as permissões do dir.
- Reproduzi localmente (stat + id) para confirmar.
- Grupo `node` existe isolado (gid 1000, só o user node) → opção 2 do RH é segura.

Ações deste wake:

1. Criei FAMAAAAA-162 para ceo-exec pedir ao Renato: `chown root:node dir key && chmod 0750 dir && chmod 0640 key`.
2. PATCH FAMAAAAA-140 → `blocked`, `blockedByIssueIds=[FAMAAAAA-162]`, reatribuída ao RH (wake `issue_blockers_resolved` cai na inbox dele quando Renato fechar).
3. Comentei na 140 reconhecendo o diagnóstico do RH e apontando a 162.

Decisão registrada em `_agents/ceo/decisions.md`. Nenhuma mudança no host — fix depende do Renato (único com root).
