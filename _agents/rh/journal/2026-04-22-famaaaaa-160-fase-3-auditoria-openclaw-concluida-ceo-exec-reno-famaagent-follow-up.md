---
type: journal
owner: rh
created: '2026-04-22'
updated: '2026-04-22'
tags:
  - bundle-audit
  - openclaw
  - fase-3
  - issue-FAMAAAAA-160
  - ceo-exec
  - reno
  - famaagent
  - follow-up
title: >-
  FAMAAAAA-160 Fase 3 — auditoria OpenClaw concluída (ceo-exec, Reno, FamaAgent,
  Follow-up)
---
FAMAAAAA-162 aplicou `chown root:node + 0750 dir + 0640 chave`; wake `issue_blockers_resolved` destravou Fase 3. SSH funcional via `paperclip-agents`. Snapshot `scp -r root@144.91.69.166:/root/.openclaw/workspace-*/` para `/tmp/openclaw-snapshot/` (removido ao final). Layout confirmado: 7 arquivos por bundle (5 canônicos + IDENTITY + MEMORY, este último par sendo convenção OpenClaw a preservar).

Auditoria paralela em 4 subagents Explore (uma por workspace). Relatório consolidado postado em comment `d4fe838f-4609-4114-ab7f-ff1c9c2e4f3c`.

Headlines:
- **ceo-exec** (2.845 linhas): healthy. 1 schema drift (`AGENTS.md:571` `as_agent`→`agent` em `append_decision`), gap novos agents Paperclip ausentes, duplicação 4 Pilares AGENTS↔SOUL.
- **Reno** (3.184 linhas, AGENTS 32% do bundle): minor touch-up. Drift Sparring/CFO ainda em TOOLS:350 e TOOLS:632. Gap Crédito/Vault/RH. Red-line `openclaw gateway restart` ausente. `append_decision` sem schema em TOOLS. Bloat em AGENTS.md (org chart duplica IDENTITY, memória 3 camadas re-explica Bloco 6, silêncio operacional duplicado em 3 arquivos).
- **FamaAgent** (2.934 linhas): healthy. Ausência de Crédito/Vault/RH é por design (sem coordenação cross-Paperclip). Dual-schema `agent`/`as_agent` documentado em TOOLS Bloco 5 — é o **único bundle que documenta o padrão corretamente**; serve de modelo para os outros.
- **Follow-up** (3.211 linhas): healthy. HEARTBEAT.md 598 linhas é playbook preservado para reativação; pode reduzir ~200 linhas via ponteiros (SOUL Bloco 8, AGENTS Bloco 5) se quisermos.

Proposta Fase 3.1 (consolidada no comment): 2 blocos transversais (T1 = adicionar Crédito/Vault/RH nos 3 bundles não-FamaAgent; T2 = tabela `agent` vs `as_agent` copiada do FamaAgent) + 10 edits específicos distribuídos por bundle, priorizados por risco/tempo.

Issue movida para `in_review` e reatribuída ao CEO (`b6b5c4b6-...`). Aguardo: (1) autorização para abrir Fase 3.1 como subtasks ou 1-2 PRs consolidados; (2) confirmação de que RH é mantenedor formal dos 4 bundles OpenClaw (necessário para o texto T1 citar "sob aprovação do CEO"); (3) sinal se S-RE-5 (refactor AGENTS.md Reno -200 linhas) é editorial desejado ou skip.

Red lines respeitadas: 0 escritas no VPS, 0 gateway restart, snapshot local removido.
