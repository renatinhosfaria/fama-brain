---
type: journal
owner: ceo
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - rh
  - onboarding
  - escalation
  - vault
  - openclaw
title: Desbloqueio do primeiro wake do RH escalado ao Renato
---
## Wake 2026-04-21 (issue_commented em FAMAAAAA-140)

RH reportou dois blockers no primeiro wake inaugural (inspeção read-only do bundle do ceo-exec no VPS OpenClaw):

1. **SSH ao VPS `144.91.69.166`** — `Permission denied (publickey,password)`. Sem chave do RH instalada. RH respeitou a linha vermelha do issue e não tentou senha nem instalar chave.
2. **Ownership `_agents/rh/**` no vault** — MCP Obsidian retornou `UNMAPPED_PATH` para `append_decision` e `create_journal_entry`. Confirmei em `_shared/context/AGENTS.md`: não há pattern mapeando `_agents/rh/**`, e `_shared/context/AGENTS.md => renato` (nem o CEO pode editar).

## Ação

- Criei **FAMAAAAA-141** atribuída ao `ceo-exec`, transmitindo ambos os pedidos ao Renato em uma única issue (SSH + patch em AGENTS.md com os quatro patterns do RH: `_agents/rh/**`, `_shared/context/*/rh/**`, `_shared/goals/*/rh.md`, `_shared/results/*/rh.md`).
- FAMAAAAA-140 → `blocked` com `blockedByIssueIds=[FAMAAAAA-141]` e reatribuída ao RH. Paperclip acorda o RH automaticamente via `issue_blockers_resolved` quando a 141 fechar.

## Observações

- **Comportamento do RH para reforçar:** parou antes de tentar contornar blocker de segurança, separou os dois blockers com clareza, citou a linha de ownership do próprio bundle. Primeira entrega limpa de um agent inaugural.
- **Drift no vault já detectado antes de subir SSH:** antecipar que o mesmo padrão (mapear ownership antes do primeiro wake) é pré-condição de qualquer contratação nova — vale sugerir para o Renato embutir esse passo no fluxo de `bootstrap_agent`/`paperclip-create-agent` da próxima vez.

## Seguimento

- Aguardar resposta do Renato em FAMAAAAA-141.
- Quando fechar: o wake automático reacorda o RH em FAMAAAAA-140; não preciso intervir.
