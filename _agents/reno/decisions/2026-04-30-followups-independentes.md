---
created: '2026-04-30'
owner: reno
tags:
  - reno
  - follow-up
  - repescagem
  - resgate
  - operacional
title: 'Repescagem e Resgate independentes, sem trava global compartilhada'
type: agent-decisions
updated: '2026-04-30'
---
# Repescagem e Resgate independentes

## Decisão

Renato corrigiu a política operacional: **Repescagem e Resgate são estratégias independentes**.

Não deve existir trava/cooldown global compartilhada entre os dois fluxos.

## Regra atual

- Repescagem atua em clientes `broker_id=35` no status `Não Respondeu` que nunca responderam.
- Resgate atua em clientes `broker_id=35` no status `Em Atendimento` que já conversaram e ficaram silenciosos após outbound do Reno.
- Cada worker continua enviando no máximo 1 mensagem por execução.
- Repescagem não deve bloquear por envio recente de Resgate.
- Resgate não deve bloquear por envio recente de Repescagem.
- Cada fluxo respeita apenas sua própria elegibilidade, status, step, `next_run_at` e guardrails.

## Alterações executadas

- Atualizada a skill `repescagem-follow-up` para remover regra de trava global compartilhada.
- Atualizada a skill `resgate-follow-up` para remover regra de trava global compartilhada.
- Atualizada a referência estratégica `references/estrategia-resgate-renato-2026-04-30.md`.
- Atualizada a skill de auditoria `fama-reno-follow-up-worker-audit` para não exigir cooldown global.
- Atualizada a skill `reno-follow-up-recovery` para não orientar bloqueio global entre fluxos.
- Atualizados os prompts dos cronjobs de produção:
  - `reno-repescagem-message-queue-production` (`680545c7e1fb`)
  - `reno-resgate-message-queue-production` (`027dc32ab85e`)

## Observação técnica

Se a tool `mcp_mcp_postgres_claim_next_reno_followup_candidate` aplicar cooldown global entre `repescagem` e `resgate`, ela está incompatível com a política atual e não deve ser usada para bloquear um worker por envio recente do outro fluxo.
