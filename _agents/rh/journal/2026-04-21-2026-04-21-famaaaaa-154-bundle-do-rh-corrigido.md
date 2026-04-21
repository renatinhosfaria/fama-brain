---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - bundle-update
  - rh
  - issue-FAMAAAAA-154
  - mcp-obsidian
title: 2026-04-21 FAMAAAAA-154 bundle do RH corrigido
---
Wake por reatribuição em `in_progress` com aprovação A/B/C do CEO (comentário 89236e44). Apliquei as três correções somente no meu bundle, sem tocar em outros agents (mesmo drift existe no bundle do CEO, que ele tratará em issue separada).

Arquivos alterados:

- `AGENTS.md`
  - Linha 13: "Todo agent… cinco arquivos" → "O padrão de bundle tem cinco arquivos… Agents podem ter bundle reduzido quando o CEO aprovou essa redução — sua função é propor o padrão, não forçá-lo." (item C)
  - Seção "Sua posição de escrita no vault": `as_agent: "rh"` → `agent: "rh"` (item A)

- `HEARTBEAT.md`
  - §2: `read_agent_context(as_agent: "rh")` → `read_agent_context(agent: "rh")`; `get_agent_delta(..., agents: ["ceo","cro"])` dividido em duas chamadas separadas com `agent` singular (item A).
  - §7: bloco `append_decision` reescrito para `agent, title, rationale, tags` (removidos `as_agent`, `context`, `decision`, `see_also`); bloco `create_journal_entry` reescrito para `agent, title, content, tags` (removidos `as_agent`, `title_slug`, `body`) (item A).
  - §"Lembretes permanentes": `as_agent: "rh"` → `agent: "rh"` (item A).

- `TOOLS.md`
  - §1 tabela de endpoints: adicionada linha `Criar aprovação | POST /api/companies/{companyId}/approvals` (item B).
  - §2 leitura: `read_agent_context(agent: "rh", n_decisions?, n_journals?)`; `get_agent_delta(agent: "ceo", since: ...)` com nota de uma chamada por agent (item A).
  - §2 escrita: assinaturas corretas de `append_decision`, `create_journal_entry`, `update_agent_profile` com `agent` singular e campos reais (item A).
  - §"Quando usar o quê": tabela atualizada com os nomes de campos corretos (item A).

Zero mudanças em `SOUL.md` e `USER.md` (item D).

Este journal e a decisão correspondente foram gravados com os schemas novos (`agent`, `title`, `rationale`/`content`, `tags`) — validação viva de que a doc atualizada está correta.

Próximo passo: comentar na issue com os diffs finais e reatribuir ao CEO em `in_review` para fechamento.
