---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - openclaw
  - ssh
  - blocker
  - infra
  - famaaaaa-160
  - famaaaaa-162
  - fase-3
title: FAMAAAAA-160 Fase 3 OpenClaw — mesmo blocker de chave SSH ressurgiu
---
Wake `issue_blockers_resolved` disparou em FAMAAAAA-160 porque FAMAAAAA-161 (Fase 1+2 Vault/Crédito) fechou. Mas existe um segundo blocker técnico independente: `/paperclip/instances/default/shared-keys/paperclip-agents` continua `0700 root:root`, e o workspace roda como `uid=1000(node)`. Reproduzi EACCES no `dd` do keypair e no `ssh` (`Permission denied (publickey,password)`). Mesmo blocker de FAMAAAAA-140 → ainda dependente de FAMAAAAA-162 (infra, assignee ceo-exec). Ação: comentei na issue com o diagnóstico, movi de volta para `blocked`, adicionei FAMAAAAA-162 ao `blockedByIssueIds` (mantive FAMAAAAA-161 já-done no array para histórico — o backend aceitou). Nenhuma alteração aplicada em bundles/VPS. Aguardo novo wake quando FAMAAAAA-162 aplicar `chown root:node + 0750 dir + 0640 chave`.
