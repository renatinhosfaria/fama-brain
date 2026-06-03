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
  - indexacao
  - meta
  - golden-queries
  - log-curadoria
title: 'Opção 1 executada: allowlist seletiva de _meta para vetorização'
event_date: '2026-06-03'
occurred_at: '2026-06-03T00:00:00Z'
channel: curadoria-vault
participants:
  - Brain
  - Renato
mentions_entity:
  - retrieval-policy
  - schema
  - pii-redaction-policy
  - embedding-state
  - golden-queries
  - _meta/index
  - _meta/README
related:
  - _meta/retrieval-policy.md
  - _meta/schema.md
  - _meta/pii-redaction-policy.md
  - _meta/embedding-state.md
  - _meta/golden-queries.md
  - _meta/index.md
  - _meta/README.md
  - >-
    _journal/brain/2026-06-03-ajustes-de-regressao-em-agents-schema-meta-e-runbook-brain.md
confidence: 0.94
---
## Resumo

Renato solicitou executar a opção 1: alterar a política de indexação para permitir vetorização seletiva de documentos canônicos em `_meta/`, especialmente [[schema]], [[retrieval-policy]] e [[pii-redaction-policy]].

## Documentos atualizados

- [[retrieval-policy]]
  - Adicionada seção `Vetorização seletiva de _meta`.
  - Registrada allowlist inicial: [[schema]], [[retrieval-policy]], [[pii-redaction-policy]], [[embedding-state]] e [[golden-queries]].
  - Registrados critérios para incluir novos documentos `_meta/` na allowlist.

- [[_meta/index]]
  - Substituída a regra absoluta de não vetorização por uma regra seletiva: `_meta/` não entra no grafo operacional por padrão, exceto documentos canônicos de governança na allowlist.
  - Mantida exclusão padrão para inventários, manifestos, migrações e auditorias sensíveis.

- [[_meta/README]]
  - Adicionada seção `Vetorização seletiva aprovada` com a allowlist inicial.

- [[schema]]
  - Adicionada seção `15. Vetorização seletiva de documentos canônicos em _meta`.
  - Adicionado changelog de indexação registrando aprovação explícita de Renato em 2026-06-03.

- [[embedding-state]]
  - Registrada a verificação técnica pós-política e os resultados das tentativas de rebuild.

## Rebuild executado

Foram tentados rebuilds via `mcp_obsidian_rebuild_semantic_index(as_agent='renato', force=true, path=...)` para:

- `_meta/schema.md`
- `_meta/retrieval-policy.md`
- `_meta/pii-redaction-policy.md`
- `_meta/embedding-state.md`
- `_meta/golden-queries.md`
- `_meta/index.md`

Resultado de todos: `indexed=0 skipped=1608 deleted=0 errors=0`.

## Avaliação

A política do vault agora permite a allowlist seletiva em `_meta/`, mas o runtime MCP ainda não indexou semanticamente os documentos allowlistados. Isso indica que a exclusão de `_meta/` provavelmente está implementada no indexador/configuração do runtime, não apenas na documentação do vault.

## Golden queries verificadas após rebuild

- Query sobre novo agente futuro ainda retorna journals de avaliação antes de [[_shared/context/AGENTS]]/[[schema]].
- Query sobre schema, inventário e política de retrieval ainda retorna journals/decisões antes das fontes `_meta` canônicas.
- Query sobre PII ainda não retorna [[pii-redaction-policy]] no top 5.

## Pendência

Para concluir a opção 1 no nível técnico, é necessário alterar o escopo real do indexador MCP para honrar a allowlist de `_meta/`. Até lá, agentes devem combinar semantic search com busca literal/leitura direta das fontes canônicas em `_meta/` para perguntas normativas.
