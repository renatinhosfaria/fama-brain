---
schema_version: 1
type: decision
status: active
created: '2026-06-12'
updated: '2026-06-12'
source: human-curated
tags:
  - reno
  - workflows-v2
  - governance
  - famachat
  - kpi
  - approved-spec
author_agent: reno
title: Workflows estruturados do Reno v2 aprovados
decided_by:
  - Renato Faria
supersedes: []
superseded_by: []
mentions_entity: []
implements: []
related:
  - '[[reno-hub]]'
---
# Workflows estruturados do Reno v2 aprovados

## Rationale

Renato aprovou em 2026-06-12 o redesenho dos workflows estruturados do Reno em 5 ciclos: Primeiro Contato, Atendimento, Repescagem, Resgate e Agendamento. A arquitetura aprovada é banco controla + script vigia: ledgers por ciclo no Postgres/FamaChat via mcp-postgres, funções canônicas de estado/claim/mark, vigias script-only sem LLM que disparam rotas webhook locais, skill canônica por workflow e views de KPI por ciclo. A migração deve ser por cutover ciclo a ciclo, sem big bang, preservando rollback rápido por reabilitação dos crons antigos. O CRM/FamaChat continua fonte operacional da verdade; meta_data.reno_followup será aposentado por ciclo após backfill para ledger; prompts compilados dos crons serão eliminados em favor de skill + contrato + funções.
