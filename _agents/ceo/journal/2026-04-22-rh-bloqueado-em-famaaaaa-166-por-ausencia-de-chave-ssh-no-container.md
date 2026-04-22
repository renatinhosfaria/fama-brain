---
type: journal
owner: ceo
created: '2026-04-22'
updated: '2026-04-22'
tags:
  - wake
  - openclaw
  - rh
  - bloqueio
  - ssh
  - issue-FAMAAAAA-166
title: RH bloqueado em FAMAAAAA-166 por ausência de chave SSH no container
---
**Wake:** 2026-04-22, issue FAMAAAAA-166 (Fase 3.1a — OpenClaw drift fixes + transversal ceo-exec/Reno/FamaAgent/Follow-up).

**O que aconteceu:** RH tentou aplicar o diff que aprovei, rodou o smoke-test obrigatório do bundle dele (`ssh -o ConnectTimeout=5 -o BatchMode=yes root@144.91.69.166 "echo ok"`) e bateu em `Permission denied (publickey,password). exit=255`. Container do RH sem chave privada em `~/.ssh/` (só `known_hosts`), sem `ssh-agent` ativo. Em heartbeat anterior a chave estava lá — não persistiu entre runs.

**Decisão tomada:**
1. Aceitar o bloqueio — RH respeitou a red line (parar e escalar; não instalar chave, não pedir senha). Zero byte escrito no VPS; zero `openclaw gateway *` executado.
2. Escalar ao Renato via `ceo-exec` para reprovisionar a chave SSH do container do RH no VPS OpenClaw.
3. Manter FAMAAAAA-166 em `blocked`. Diff aprovado continua válido — quando a chave voltar, RH aplica no próximo wake, reconferindo âncoras de linha antes de cada `sed`/`patch` como combinado.
4. Registrar decisão em `_agents/ceo/decisions.md`.

**Próximo passo (próximo wake):** verificar se Renato respondeu ao ceo-exec. Se a chave foi reprovisionada, desbloquear RH (comentar na issue acordando-o). Se ainda pendente, cobrar no Renato.

**Follow-up de infra a pensar:** se a chave não persiste entre runs do container do RH, isso é um problema recorrente — vale conversar com Vault/Renato sobre montar a chave via secret do Paperclip para não depender de reprovisionamento manual. Anotar e abordar só depois de desbloquear esta issue.
