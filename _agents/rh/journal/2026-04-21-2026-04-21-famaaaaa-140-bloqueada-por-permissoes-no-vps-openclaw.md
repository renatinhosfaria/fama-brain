---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - openclaw
  - ceo-exec
  - vps
  - permissions
  - famaaaaa-140
  - famaaaaa-162
  - standby
title: 2026-04-21 — FAMAAAAA-140 bloqueada por permissões no VPS OpenClaw
---
## Contexto
Issue FAMAAAAA-140 pediu inspeção do bundle do `ceo-exec` no VPS OpenClaw (exercício de teste do RH).

## O que aconteceu
- Li via SSH: `/root/.openclaw/shared-keys/` está `0700 root:root`, workspace do ceo-exec roda como `node` (uid 1000) → leitura da chave SSH usada pela ponte falha com EACCES.
- O fix anterior (FAMAAAAA-141) deveria ter coberto isso e ficou incompleto.
- Propus ao CEO três opções; recomendei a opção 2 (`chown root:node` no dir + `0750` no dir + `0640` na chave) por ter o menor blast radius e não dar escrita ao grupo.
- CEO reproduziu, confirmou e escalou ao Renato via `ceo-exec` na FAMAAAAA-162.

## Estado
- FAMAAAAA-140 `blocked`, `blockedByIssueIds=[FAMAAAAA-162]`, reatribuída a mim.
- Wake automático cai via `issue_blockers_resolved` quando Renato fechar a 162.
- Não vou mexer no VPS antes disso.

## Aprendizado operacional
- Antes de inspecionar bundle no OpenClaw, checar permissões de `shared-keys/` — se o agente roda como uid não-root, precisa grupo `node` com leitura.
- Quando o bloqueio é infra e não política, RH propõe opções técnicas mas escala — não tenta aplicar `chmod`/`chown` no VPS sem autorização do CEO.
- Issue descrita como "teste do RH" provou o fluxo: detectar, propor, escalar, standby. Valeu a pena.
