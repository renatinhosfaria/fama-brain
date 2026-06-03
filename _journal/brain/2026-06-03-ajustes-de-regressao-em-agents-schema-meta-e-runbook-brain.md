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
  - indexacao
  - pii
  - log-curadoria
title: 'Ajustes de regressão em AGENTS, schema, meta e runbook Brain'
event_date: '2026-06-03'
occurred_at: '2026-06-03T00:00:00Z'
channel: curadoria-vault
participants:
  - Brain
mentions_entity:
  - _shared/context/AGENTS
  - schema
  - golden-queries
  - retrieval-policy
  - pii-redaction-policy
  - brain-vault-curadoria
  - brain-hub
related:
  - _shared/context/AGENTS.md
  - _meta/schema.md
  - _meta/README.md
  - _meta/index.md
  - _meta/pii-redaction-policy.md
  - _runbooks/brain-vault-curadoria.md
  - >-
    _journal/brain/2026-06-03-regressao-das-golden-queries-38-48-apos-atualizacao-de-retrieval-e-pii.md
confidence: 0.96
---
## Resumo

O Brain executou os ajustes recomendados após a regressão das golden queries 38–48, operando via `mcp-obsidian`: reforçou frases literais em [[_shared/context/AGENTS]], [[schema]], `_meta/README`, `_meta/index` e [[brain-vault-curadoria]], investigou a recuperação da [[pii-redaction-policy]] e revalidou o comportamento semântico das queries afetadas.

## Ações executadas

### 1. `_shared/context/AGENTS.md`

Ação:

- Incluída a frase literal:
  - “Um novo agente futuro não deve ganhar `_agents/{agent_id}/`; deve ser cadastrado em `_shared/context/AGENTS` e receber território por tipo de memória.”
- Incluído reforço de território ativo por tipo de memória:
  - `_journal/{agent_id}/`
  - `_projects/{agent_id}/`
  - `_runbooks/{agent_id}-*.md`
  - `_hubs/{agent_id}-hub.md`
  - `_decisions/`
- Observação: tentativa inicial com `as_agent='brain'` foi bloqueada por ownership; escrita executada com `as_agent='renato'`, conforme indicação do MCP e autorização explícita de Renato na solicitação.

Verificação literal:

- `search_content` encontrou a frase em `_shared/context/AGENTS.md`, linha 114.

### 2. `_meta/schema.md`

Ação:

- Adicionada seção `13. Regra literal para novos agentes e namespace legado`.
- Incluída a mesma regra de namespace/território para novos agentes.
- Adicionado changelog complementar de 2026-06-03.

Verificação literal:

- `search_content` encontrou a frase em `_meta/schema.md`, linha 470.

### 3. `_meta/README.md` e `_meta/index.md`

Ação:

- Adicionada seção `Regra literal de localização meta` em ambos.
- Incluída frase literal:
  - “Schema, inventário e política de retrieval ficam em `_meta/`.”
- Incluída orientação de resposta para a pergunta “onde registrar schema, inventário e política de retrieval?”.

Verificação literal:

- `search_content` encontrou a frase em `_meta/README.md`, linha 48.
- `search_content` encontrou a frase em `_meta/index.md`, linha 40.

### 4. `_runbooks/brain-vault-curadoria.md`

Ação:

Foram adicionados headings literais:

- `O que fazer após escrever no vault?`
- `Novo documento inserido no vault`
- `Como avaliar se uma intervenção de curadoria melhorou o vault?`

Também foram incluídos critérios explícitos de read-back, validação, classificação/enriquecimento/relacionamento e avaliação de qualidade de curadoria.

Verificação literal:

- `search_content` encontrou os três headings nas linhas 124, 128 e 132.

## Investigação: por que `pii-redaction-policy` não ranqueia no top 5?

Testes executados:

1. `semantic_search(path='_meta', query='Como expor telefone, WhatsApp JID, email ou CPF encontrado no vault?', min_score=0)`
   - Retorno: 0 resultados.
2. `semantic_search(path='_meta/pii-redaction-policy.md', query='telefone WhatsApp JID email CPF redigir valor bruto pii-redaction-policy', min_score=0)`
   - Retorno: 0 resultados.
3. `search_content(path='_meta/pii-redaction-policy.md', query='Como expor telefone|WhatsApp JID|CPF|Perguntas literais')`
   - Retorno: 12 matches, incluindo regra curta, headings de WhatsApp JID/CPF e orientação de perguntas literais.
4. `rebuild_semantic_index` para `_meta/pii-redaction-policy.md` com `as_agent='brain'` e depois com `as_agent='renato'`
   - Retorno: `indexed=0 skipped=1606 deleted=0 errors=0`.

Conclusão:

- A política de PII está correta e recuperável por busca literal.
- O problema de ranking semântico não é ausência textual; é política/estado de indexação.
- `_meta/index.md` declara que `_meta/` “não vetoriza nem entra no grafo operacional por padrão”. Isso explica por que buscas semânticas com `path='_meta'` retornam 0 e por que a query literal de PII puxa journals e entidades antes da política canônica.
- Enquanto `_meta/` permanecer fora da vetorização operacional, perguntas normativas de PII devem combinar `semantic_search` com `search_content` ou depender de reforços em fontes indexadas, como hubs/runbooks.

## Reindexação e efeito observado

- `rebuild_semantic_index` em [[brain-vault-curadoria]] retornou `indexed=1 skipped=1605 deleted=0 errors=0`.
- `rebuild_semantic_index` em [[_shared/context/AGENTS]], [[schema]] e [[pii-redaction-policy]] retornou `indexed=0 skipped=1606 deleted=0 errors=0`, inclusive com `as_agent='renato'`.

Após reindexar [[brain-vault-curadoria]], as queries 42, 47 e 48 melhoraram:

- `O que fazer após escrever no vault?`
  - Top 1: [[brain-vault-curadoria]], heading literal recém-adicionado.
- `Como o Brain deve lidar com novo documento inserido no vault?`
  - Top 1: [[brain-vault-curadoria]], heading `Novo documento inserido no vault`.
- `Como avaliar se uma intervenção de curadoria melhorou o vault?`
  - Top 1: [[brain-vault-curadoria]], heading literal recém-adicionado.

Queries 39, 40 e 41 ainda sofrem por limitação de indexação/ranking:

- 39: a frase existe em [[_shared/context/AGENTS]] e [[schema]], mas essas notas não foram reindexadas semanticamente pelo MCP.
- 40: a frase existe em `_meta/README` e `_meta/index`, mas `_meta` segue fora da vetorização semântica operacional.
- 41: [[pii-redaction-policy]] tem conteúdo correto, mas `_meta` não ranqueia semanticamente.

## Próxima recomendação

Para resolver 39–41 semanticamente, há duas opções:

1. Alterar a política de indexação para permitir vetorização seletiva de documentos canônicos de `_meta/`, especialmente [[schema]], [[retrieval-policy]] e [[pii-redaction-policy]].
2. Criar reforços curtos em fontes indexadas e canônicas do Brain, como [[brain-hub]] ou [[brain-vault-curadoria]], apontando explicitamente para as políticas `_meta` em perguntas normativas.

A opção 1 é mais correta arquiteturalmente, mas envolve política de indexação. A opção 2 é mais pragmática para ranking imediato.
