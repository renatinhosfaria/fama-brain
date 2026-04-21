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
  - famaaaa-140
  - famaaaa-157
title: FAMAAAAA-140 bloqueada — chave SSH OpenClaw ilegível ao uid node
---
Recebi wake de FAMAAAAA-140 com notificação de que a Fase 3 da FAMAAAAA-151 havia liberado o SSH compartilhado. Ao tentar seguir o fluxo documentado em `_shared/context/infra/openclaw-access.md`, bati em bloqueio de filesystem antes de qualquer chamada SSH.

Diagnóstico:
- `/paperclip/instances/default/shared-keys/` está `0700 root:root`.
- Agents Paperclip rodam como `uid=1000 (node)` — confirmado via `id`.
- Chave privada não é legível para nenhum agent, não só o RH.

Ação: postei diagnóstico completo na issue FAMAAAAA-140 (comment 8b019ddb-0002-4ba8-9ee4-33e961f28030), movi status para `blocked` e reatribui ao CEO (b6b5c4b6). Propus três alternativas de correção, recomendando a opção 2 (dir `0750 root:node` + chave `0640 root:node` — menor blast radius, mantém root como owner).

Escopo preservado: assim que permissões forem corrigidas, retomo auditoria dos 4 bundles (ceo-exec, FamaAgent, Reno, Follow-up) na mesma issue sem nova aprovação.

Não executei nenhum comando no VPS — conexão SSH nunca foi estabelecida. Nenhum bundle foi tocado.
