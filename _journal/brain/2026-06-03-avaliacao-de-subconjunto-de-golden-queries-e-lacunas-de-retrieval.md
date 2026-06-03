---
schema_version: 1
type: interaction
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - retrieval
  - golden-queries
  - lacunas
title: Avaliação de subconjunto de golden queries e lacunas de retrieval
event_date: '2026-06-03'
occurred_at: '2026-06-03T00:00:00Z'
channel: curadoria-vault
participants:
  - Brain
mentions_entity:
  - golden-queries
  - retrieval-policy
  - brain-hub
  - reno-hub
  - marketing-hub
  - pii-redaction-policy
related:
  - _meta/golden-queries.md
  - _meta/retrieval-policy.md
  - _hubs/brain-hub.md
  - _runbooks/brain-vault-curadoria.md
confidence: 0.9
---
## Resumo

O Brain rodou um subconjunto de golden queries em 2026-06-03 usando `mcp_obsidian_semantic_search` para avaliar recuperação semântica de governança, escrita, multiagent, PII e o novo papel do Brain como curador central.

## Subconjunto executado

Foram avaliadas 9 consultas representativas:

1. `O Reno pode recriar _agents/?`
2. `Qual é a fonte operacional de verdade?`
3. `Onde registrar schema, inventário e política de retrieval?`
4. `O que fazer após escrever no vault read-back MCP validar path frontmatter conteúdo`
5. `Onde o agente de Marketing deve registrar um evento datado de campanha`
6. `Um novo agente futuro deve ganhar _agents agent_id ou território por tipo de memória AGENTS schema`
7. `Como um agente deve expor telefone JID email CPF encontrado no vault redigir valor PII`
8. `O que read_agent_context deve retornar para Marketing hub territorio marketing mesmo pouco historico`
9. `Quem é o Brain curador central do vault Obsidian mcp-obsidian PII hubs consolidações retrieval`

## Resultado por consulta

### 1. Reno e `_agents/`

- Resultado expandido com termos contextuais recuperou [[reno-hub]] em primeiro lugar, seção “Guardrail de namespace legado”.
- A query literal `O Reno pode recriar _agents/?` com `min_score: 0` retornou resultados fracos no topo: `_runbooks/index.md`, `_hubs/index.md`, `_entities/reno.md`, antes de [[reno-hub]].
- Lacuna: perguntas curtas/literais sobre `_agents/` ainda podem não priorizar a fonte normativa esperada sem expansão lexical.

### 2. Fonte operacional de verdade

- Recuperou corretamente [[2026-05-12-reno-vault-memoria-autonoma]] em primeiro lugar, seção “Fonte de verdade”.
- Status: passa.

### 3. Schema, inventário e política de retrieval

- Consulta expandida recuperou [[reno-vault-operacao]] seção “Meta”, indicando `_meta/` como destino.
- Query literal com `min_score: 0` recuperou [[2026-05-11-reno-second-brain-vault]] em primeiro lugar, com regra de governança em `_meta/`.
- Lacuna parcial: resposta correta, mas fonte esperada em [[golden-queries]] é [[_meta/README]], [[_meta/index]] e [[schema]]. O retrieval tende a trazer decisão/runbook Reno antes das fontes `_meta` canônicas.

### 4. Read-back após escrita

- Recuperou [[marketing-vault-operacao]] e [[reno-vault-operacao]] com checklist de read-back.
- Também trouxe logs recentes do Brain/Renato sobre formalização inicial.
- Status: passa parcialmente; fonte normativa aparece, mas logs recentes competem com runbooks.

### 5. Evento datado de campanha de Marketing

- Recuperou [[_journal/marketing/README]] em primeiro lugar, com finalidade e regras da pasta.
- Status: passa.

### 6. Novo agente futuro e `_agents/{agent_id}/`

- Resultados trouxeram decisão histórica Reno, [[reno-hub]], `_entities/README` e exemplos operacionais, mas não priorizaram [[_shared/context/AGENTS]] nem [[schema]].
- Lacuna: pergunta multiagent genérica sobre novos agentes precisa de ancoragem mais forte em AGENTS/schema; a recuperação ainda puxa contexto Reno histórico.

### 7. Exposição/redaction de PII

- Recuperou logs de PII do Brain/Renato e o [[brain-vault-curadoria]], mas não priorizou [[pii-redaction-policy]], [[retrieval-policy]] ou [[pii-scan-2026-06-02]].
- Lacuna relevante: a política canônica de PII deve ser mais recuperável para consultas diretas sobre telefone/JID/email/CPF.

### 8. `read_agent_context` para Marketing

- Recuperou [[_journal/marketing/README]], `_runbooks/index`, [[marketing-hub]] e [[marketing-vault-operacao]].
- Status: passa parcialmente; hub e território aparecem, mas a query esperada fala especificamente da ferramenta `read_agent_context`, e a fonte mais direta não ficou em primeiro lugar.

### 9. Brain como curador central

- Recuperou corretamente, em sequência, [[2026-06-03-brain-como-curador-central-do-vault-obsidian]], [[brain-hub]], [[brain-vault-curadoria]] e log de formalização.
- Status: passa bem.

## Lacunas consolidadas

1. **Golden queries literais/curtas podem falhar sem expansão lexical.**
   - Exemplo: `O Reno pode recriar _agents/?` retornou resultados fracos no topo, enquanto a versão expandida recuperou [[reno-hub]].

2. **Fontes históricas Reno ainda competem com fontes normativas multiagent.**
   - Especialmente em perguntas sobre novos agentes e governança geral.

3. **Consultas sobre `_meta/` tendem a recuperar decisões/runbooks antes de `_meta/README`, `_meta/index` e [[schema]].**
   - A resposta pode estar correta, mas a fonte esperada em [[golden-queries]] não é priorizada.

4. **PII/redaction não prioriza suficientemente [[pii-redaction-policy]].**
   - Logs recentes do Brain aparecem antes da política canônica.

5. **Logs recentes podem competir com runbooks em consultas operacionais.**
   - Útil para rastreabilidade, mas pode poluir respostas que pedem regra atual.

6. **As golden queries ainda não incluem uma seção Brain explícita.**
   - A query de validação do Brain passou bem, mas ainda está fora do arquivo canônico [[golden-queries]].

## Recomendações

1. Atualizar [[golden-queries]] com uma seção “Queries Brain / curadoria central”.
2. Reforçar em [[retrieval-policy]] que perguntas normativas devem preferir decisões, runbooks, READMEs locais, hubs e políticas sobre journals recentes.
3. Adicionar aliases/frases literais em [[reno-hub]], [[_shared/context/AGENTS]] ou [[schema]] para perguntas curtas como “O Reno pode recriar `_agents/`?”.
4. Fortalecer [[pii-redaction-policy]] com frases explícitas sobre “telefone”, “WhatsApp JID”, “email” e “CPF” em headings/trechos curtos para melhorar recall.
5. Rodar um segundo lote após ajustes, cobrindo queries 10–20 e as queries multiagent 26–37.

## Verificação

Registro criado via `mcp_obsidian_create_journal_event`. Próximo passo recomendado: atualizar [[golden-queries]] e/ou [[retrieval-policy]] com os ajustes acima, respeitando ownership e fazendo read-back.
