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
  - pii
  - log-curadoria
title: 'Atualização de golden queries, retrieval policy e política de PII'
event_date: '2026-06-03'
occurred_at: '2026-06-03T00:00:00Z'
channel: curadoria-vault
participants:
  - Brain
mentions_entity:
  - golden-queries
  - retrieval-policy
  - pii-redaction-policy
  - brain-hub
related:
  - _meta/golden-queries.md
  - _meta/retrieval-policy.md
  - _meta/pii-redaction-policy.md
  - >-
    _journal/brain/2026-06-03-avaliacao-de-subconjunto-de-golden-queries-e-lacunas-de-retrieval.md
confidence: 0.95
---
## Resumo

O Brain executou os próximos passos recomendados após a avaliação de golden queries: atualizou [[golden-queries]], [[retrieval-policy]] e [[pii-redaction-policy]] para melhorar recuperação normativa, queries literais e políticas de redaction.

## Documentos alterados

### `_meta/golden-queries.md`

Ações:

- Atualizado `updated: 2026-06-03`.
- Incluídas tags `brain` e `multiagent`.
- Adicionada seção `Queries literais de regressão`.
- Adicionada seção `Queries Brain / curadoria central`.
- Incluídas queries literais que tinham falhado ou passado parcialmente:
  - `O Reno pode recriar _agents/?`
  - `Um novo agente futuro deve ganhar _agents/{agent_id}/?`
  - `Onde registrar schema, inventário e política de retrieval?`
  - `Como expor telefone, WhatsApp JID, email ou CPF encontrado no vault?`
  - `O que fazer após escrever no vault?`
- Adicionadas queries Brain sobre papel, logs de curadoria, trilhas incrementais, operação via MCP, tratamento de novo documento e avaliação de qualidade de curadoria.

Motivo:

- Tornar o papel do Brain recuperável no conjunto canônico de avaliação.
- Criar regressões explícitas para perguntas curtas/literais que antes dependiam de expansão lexical.

### `_meta/retrieval-policy.md`

Ações:

- Atualizado `updated: 2026-06-03`.
- Incluídas tags `brain` e `multiagent`.
- Adicionada seção `Regra curta para perguntas normativas`.
- Reforçada precedência de decisões, runbooks, READMEs locais e políticas em `_meta/` sobre journals recentes.
- Reposicionado `_meta/` cedo na hierarquia para perguntas sobre schema, inventário, golden queries, PII, políticas e indexação.
- Adicionado exemplo de território Brain.
- Esclarecido que journal não substitui política canônica nem CRM.
- Adicionada orientação de regressão para queries literais curtas.

Motivo:

- Reduzir competição de journals recentes e fontes históricas quando a pergunta pede regra atual.

### `_meta/pii-redaction-policy.md`

Ações:

- Atualizado `updated: 2026-06-03`.
- Adicionadas tags `privacy` e `retrieval`.
- Adicionada relação com [[golden-queries]].
- Fortalecidas headings/frases literais:
  - `Telefone completo`
  - `WhatsApp JID`
  - `Email`
  - `CPF ou identificador equivalente`
  - `Segredos técnicos`
- Incluída regra curta para redigir telefone, WhatsApp JID, email, CPF, token, senha, API key, connection string, payload bruto ou log sensível.
- Incluída orientação para perguntas literais como “qual é o telefone?”, “qual WhatsApp JID?”, “qual email?”, “qual CPF?” e “mostre o contato completo”.

Motivo:

- Melhorar recall literal e semântico da política canônica de PII/redaction.

## Verificação

- Read-back via MCP executado para os três documentos alterados.
- `mcp_obsidian_validate_vault` retornou 0 findings.
- Busca literal confirmou:
  - seção `Queries Brain / curadoria central` em [[golden-queries]];
  - seção `Regra curta para perguntas normativas` em [[retrieval-policy]];
  - headings explícitos de telefone, WhatsApp JID, email e CPF em [[pii-redaction-policy]].

## Observação sobre índice semântico

Foi tentada reindexação pontual de `_meta/pii-redaction-policy.md` via `mcp_obsidian_rebuild_semantic_index(as_agent='brain', force=true, path='_meta/pii-redaction-policy.md')`, mas o retorno foi `indexed=0 skipped=1604 deleted=0 errors=0`. A busca literal já confirma a escrita; se o ranking semântico ainda não refletir as alterações, o próximo passo é investigar política de indexação/ownership ou rodar reindexação apropriada com escopo autorizado.

## Próximo passo recomendado

Rodar novo lote de golden queries de regressão, especialmente as queries 38–48 recém adicionadas, e registrar se o ranking melhorou ou se ainda há necessidade de ajustes em hubs/AGENTS/schema.
