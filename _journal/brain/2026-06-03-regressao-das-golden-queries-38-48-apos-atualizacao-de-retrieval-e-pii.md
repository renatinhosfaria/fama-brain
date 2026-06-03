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
  - regressao
  - log-curadoria
title: Regressão das golden queries 38–48 após atualização de retrieval e PII
event_date: '2026-06-03'
occurred_at: '2026-06-03T00:00:00Z'
channel: curadoria-vault
participants:
  - Brain
mentions_entity:
  - golden-queries
  - retrieval-policy
  - pii-redaction-policy
  - brain-vault-curadoria
  - brain-hub
  - schema
  - _shared/context/AGENTS
related:
  - _meta/golden-queries.md
  - _meta/retrieval-policy.md
  - _meta/pii-redaction-policy.md
  - _runbooks/brain-vault-curadoria.md
  - _hubs/brain-hub.md
  - _shared/context/AGENTS.md
  - _meta/schema.md
confidence: 0.94
---
## Resumo

O Brain rodou as novas golden queries 38–48 usando `mcp_obsidian_semantic_search(limit=5, min_score=0)` para medir ranking após a atualização de [[golden-queries]], [[retrieval-policy]] e [[pii-redaction-policy]].

Observação operacional: uma tentativa inicial para as queries 38–40 sem `min_score=0` retornou 0 resultados. A avaliação abaixo usa `min_score=0`, consistente com avaliações anteriores de regressão literal.

## Resultado por query

### 38. O Reno pode recriar `_agents/`?

- **Top 1:** [[reno-hub]] — seção `Guardrail de namespace legado`.
- **Demais resultados:** journals históricos Reno sobre `_agents/` legado/descontinuado.
- **Avaliação:** melhorou. A fonte canônica esperada aparece em primeiro lugar e responde diretamente que `_agents/` permanece legado/inativo.
- **Ajuste adicional:** não urgente. Pode-se aceitar, embora [[_shared/context/AGENTS]] e [[retrieval-policy]] não apareçam no top 5.

### 39. Um novo agente futuro deve ganhar `_agents/{agent_id}/`?

- **Top 1:** journal anterior de avaliação de lacuna, explicitando que AGENTS/schema não estavam priorizados.
- **Top 5:** `_entities/README`, journals/decisões Reno antigas sobre `_agents/`.
- **Avaliação:** não melhorou o suficiente. A resposta correta está inferível, mas [[_shared/context/AGENTS]], [[schema]], [[retrieval-policy]] e [[brain-hub]] não aparecem no top 5.
- **Ajuste adicional recomendado:** fortalecer [[_shared/context/AGENTS]] e [[schema]] com frase literal sobre “novo agente futuro”, “não deve ganhar `_agents/{agent_id}/`” e “território por tipo de memória”.

### 40. Onde registrar schema, inventário e política de retrieval?

- **Top 1:** journal anterior de avaliação de lacuna.
- **Top 2:** [[2026-05-11-reno-second-brain-vault]] — menciona governança em `_meta/`.
- **Top 3–4:** [[brain-hub]] e [[brain-vault-curadoria]], com links para [[schema]] e [[retrieval-policy]].
- **Avaliação:** parcial. A resposta correta aparece, mas a recuperação ainda prioriza journal/decisão Reno antes de [[_meta/README]], [[_meta/index]], [[schema]] e [[retrieval-policy]].
- **Ajuste adicional recomendado:** fortalecer `_meta/README`, `_meta/index` e/ou [[schema]] com frase literal da query e talvez link de retorno em [[brain-hub]].

### 41. Como expor telefone, WhatsApp JID, email ou CPF encontrado no vault?

- **Top 1:** journal Reno antigo sobre auditoria WhatsApp.
- **Top 2:** journal Brain anterior que registrava a lacuna.
- **Top 5:** logs/eventos e entidade com menção a contato sensível.
- **Avaliação:** não melhorou semanticamente. [[pii-redaction-policy]], [[retrieval-policy]] e [[pii-scan-2026-06-02]] não aparecem no top 5, apesar da política ter sido fortalecida literalmente.
- **Ajuste adicional recomendado:** investigar indexação da [[pii-redaction-policy]] e/ou criar reforço canônico em hub/meta com frase literal curta. O problema parece ser mais de ranking/indexação do que ausência textual.

### 42. O que fazer após escrever no vault?

- **Top 1:** journal de formalização inicial do Brain, seção `Pendências`.
- **Top 4:** [[reno-vault-operacao]] — checklist antes de escrever.
- **Avaliação:** parcial. Há fonte operacional no top 5, mas o ranking ainda prioriza journal recente; [[brain-vault-curadoria]] e [[schema]] não apareceram no top 5 para a frase literal.
- **Ajuste adicional recomendado:** fortalecer [[brain-vault-curadoria]] com frase literal “O que fazer após escrever no vault?” e checklist de read-back/validação; considerar reforço em [[schema]].

### 43. Quem é o Brain no vault Obsidian?

- **Top 1:** [[2026-06-03-brain-como-curador-central-do-vault-obsidian]].
- **Top 2:** [[brain-vault-curadoria]].
- **Top 5:** journals de formalização e decisão novamente.
- **Avaliação:** passou. Ranking bom; decisão e runbook aparecem no topo.
- **Ajuste adicional:** nenhum necessário.

### 44. Onde o Brain deve registrar logs de curadoria?

- **Top 1:** [[brain-vault-curadoria]] — seção `Log de curadoria`.
- **Top 2:** decisão Brain.
- **Top 5:** runbook e [[brain-hub]].
- **Avaliação:** passou com ranking forte.
- **Ajuste adicional:** nenhum necessário.

### 45. Quais trilhas incrementais o Brain está conduzindo?

- **Top 1:** [[brain-hub]] — seção `Trilhas de curadoria incremental`.
- **Top 4–5:** [[brain-vault-curadoria]].
- **Avaliação:** passou. O hub canônico aparece em primeiro lugar.
- **Ajuste adicional:** nenhum necessário.

### 46. O Brain pode operar fora do `mcp-obsidian` para curar o vault?

- **Top 1:** [[brain-vault-curadoria]] — objetivo com obrigação de operar via `mcp-obsidian`.
- **Top 2:** decisão Brain.
- **Top 5:** journals de formalização e decisão.
- **Avaliação:** passou. Ranking bom; decisão e runbook aparecem no topo.
- **Ajuste adicional:** nenhum necessário.

### 47. Como o Brain deve lidar com novo documento inserido no vault?

- **Top 1:** [[brain-vault-curadoria]].
- **Top 2–4:** decisão Brain e runbook Brain.
- **Avaliação:** passou/parcial forte. Recupera o runbook certo, embora o preview do chunk top 1 seja o título; a resposta completa exige abrir a nota.
- **Ajuste adicional:** opcional. Poderia fortalecer o runbook com heading literal “Novo documento inserido no vault”.

### 48. Como avaliar se uma intervenção de curadoria melhorou o vault?

- **Top 1:** journal de formalização inicial do Brain, seção `Verificação`.
- **Top 3:** [[brain-vault-curadoria]].
- **Demais resultados:** journals Reno/operacionais.
- **Avaliação:** parcial. A recuperação encontra verificação e runbook, mas ainda não prioriza [[golden-queries]] ou [[retrieval-policy]], e o ranking mistura ruído operacional Reno.
- **Ajuste adicional recomendado:** fortalecer [[brain-vault-curadoria]] e [[retrieval-policy]] com uma seção/frase literal sobre critérios de qualidade de intervenção curatorial: clareza, navegabilidade, conexão, recuperabilidade por golden queries e ausência de violação de schema/ownership/PII.

## Síntese

### Melhoraram / passaram

- 38 — passou; [[reno-hub]] top 1.
- 43 — passou; decisão Brain top 1 e runbook top 2.
- 44 — passou; [[brain-vault-curadoria]] top 1.
- 45 — passou; [[brain-hub]] top 1.
- 46 — passou; [[brain-vault-curadoria]] top 1.
- 47 — passou/parcial forte; [[brain-vault-curadoria]] top 1.

### Permanecem parciais ou frágeis

- 39 — ainda precisa reforço em [[_shared/context/AGENTS]] e [[schema]].
- 40 — precisa reforço em `_meta/README`, `_meta/index`, [[schema]] e/ou [[retrieval-policy]].
- 41 — precisa investigar/fortalecer [[pii-redaction-policy]] e ranking semântico de PII.
- 42 — precisa reforço literal em [[brain-vault-curadoria]] e talvez [[schema]].
- 48 — precisa reforço em [[brain-vault-curadoria]], [[golden-queries]] e [[retrieval-policy]].

## Recomendações de ajuste adicional

1. Atualizar [[_shared/context/AGENTS]] com frase literal para novos agentes:
   - “Um novo agente futuro não deve ganhar `_agents/{agent_id}/`; deve ser cadastrado em `_shared/context/AGENTS` e receber território por tipo de memória.”
2. Atualizar [[schema]] com a mesma regra de namespace/território para novos agentes.
3. Reforçar `_meta/README` e `_meta/index` com frase literal sobre schema, inventário e política de retrieval ficarem em `_meta/`.
4. Reforçar [[brain-vault-curadoria]] com headings literais:
   - “O que fazer após escrever no vault?”
   - “Novo documento inserido no vault”
   - “Como avaliar se uma intervenção de curadoria melhorou o vault?”
5. Investigar por que [[pii-redaction-policy]] não aparece no top 5 da query literal de PII; se necessário, revisar indexação/ownership ou criar reforço canônico em [[brain-hub]]/[[retrieval-policy]].

## Conclusão

O ranking melhorou claramente para as queries Brain centrais e para o guardrail Reno sobre `_agents/`. Ainda há lacunas relevantes em perguntas genéricas multiagent, `_meta` e PII. O próximo lote de curadoria deve focar em [[_shared/context/AGENTS]], [[schema]], `_meta/README`, `_meta/index`, [[brain-vault-curadoria]] e na indexação/recuperação da [[pii-redaction-policy]].
