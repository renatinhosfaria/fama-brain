---
schema_version: 1
type: decision
status: active
created: 2026-05-02
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
decided_by: ["[[renato|Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]", "[[reno-operacao-crm-webhook]]"]
related: ["[[reno-hub]]"]
tags: [decision, repescagem, atendimento, crm]
---
# Decision: Repescagem — arquivamento automático após step 5 (2026-05-02)

## Decisão

Renato solicitou que, após o encerramento da última etapa da régua de Repescagem, o cliente seja alterado automaticamente para status Arquivado no FamaChat. A política foi incorporada à skill repescagem-follow-up e ao cronjob de produção reno-repescagem-message-queue-production. Regra operacional: somente após WhatsApp de step 5 enviado com sucesso e mark_reno_followup_sent persistir step=5/stopped_reason=max_steps; atualizar status para Arquivado apenas se o cliente ainda estiver exatamente em Não Respondeu, broker_id=35, com condição defensiva para não regredir status avançado. Registrar nota no CRM e atualizar o documento de atendimento em `_agents/reno/atendimentos/`.

## Estado atual

A regra de arquivamento automático após step 5 permanece como decisão operacional. Apenas a parte que fixava o destino do documento em `_agents/reno/atendimentos/` foi superada pela decisão Reno-first [[2026-05-11-reno-second-brain-vault]].

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
