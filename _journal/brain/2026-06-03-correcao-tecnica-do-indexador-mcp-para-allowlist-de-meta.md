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
  - mcp-obsidian
  - semantic-index
  - meta-allowlist
  - log-curadoria
title: Correção técnica do indexador MCP para allowlist de _meta
event_date: '2026-06-03'
occurred_at: '2026-06-03T22:14:28Z'
channel: ssh+mcp
participants:
  - brain
  - renato
mentions_entity:
  - mcp-obsidian
  - _meta/schema.md
  - _meta/retrieval-policy.md
  - _meta/pii-redaction-policy.md
  - _meta/embedding-state.md
  - _meta/golden-queries.md
  - _meta/index.md
  - _meta/README.md
related:
  - _meta/retrieval-policy.md
  - _meta/embedding-state.md
  - _meta/golden-queries.md
  - >-
    _journal/brain/2026-06-03-regressao-das-golden-queries-38-48-apos-atualizacao-de-retrieval-e-pii.md
confidence: 1
---
## Evento de curadoria técnica

A pendência fora da documentação foi corrigida no runtime do MCP Obsidian.

## Origem

- Pendência: a opção documental de permitir vetorização seletiva de `_meta/` estava registrada no vault, mas o indexador MCP ainda pulava `_meta/` por política de indexação.
- Repositório/caminho operacional: `root@144.126.134.23:/root/mcp-fama/mcp-obsidian/`.

## Ações executadas

- Acesso SSH configurado com chave pública do Brain.
- Localizada a causa raiz em `src/vault/index-policy.ts`: somente `_entities`, `_hubs`, `_decisions`, `_runbooks` e `_journal` eram elegíveis para vetor; `_meta/` ficava fora por padrão.
- Ajustado `computeIndexPolicy` para permitir uma allowlist canônica de `_meta/` via `SEMANTIC_META_VECTOR_ALLOWLIST`, com default para:
  - `_meta/schema.md`
  - `_meta/retrieval-policy.md`
  - `_meta/pii-redaction-policy.md`
  - `_meta/embedding-state.md`
  - `_meta/golden-queries.md`
  - `_meta/index.md`
  - `_meta/README.md`
- Ajustado `SemanticMemoryService.rebuild` para não contabilizar notas fora do escopo de `path` como `skipped`, corrigindo o sintoma `indexed=0 skipped=1608` em rebuild de arquivo específico.
- Atualizados `docker-compose.yml` e `.env.example` com `SEMANTIC_META_VECTOR_ALLOWLIST`.
- Adicionados testes unitários em:
  - `test/unit/index-policy.test.ts`
  - `test/unit/semantic-service.test.ts`
- Buildado e redeployado o serviço Docker Swarm `mcp-obsidian_mcp-obsidian`.
- Commit/push realizado no repositório `mcp-fama`: `1cf0a8e fix: allowlist canonical meta notes for semantic indexing`.

## Verificação

- `npm test -- --run test/unit/index-policy.test.ts test/unit/semantic-service.test.ts`: 19 testes passaram.
- `npm run typecheck`: passou.
- `npm run build`: passou.
- `npm test`: 52 arquivos de teste / 502 testes passaram.
- Container pós-deploy: healthy.
- Logs pós-deploy: `semantic memory enabled`.
- `SEMANTIC_ENABLED=true` e `SEMANTIC_META_VECTOR_ALLOWLIST` presente no container.
- Rebuild MCP dos 7 arquivos allowlisted: todos retornaram `indexed=1 skipped=0 deleted=0 errors=0`.

## Regressões semânticas

Com `min_score` padrão, algumas queries ainda não retornam fontes canônicas por threshold/ranking. Com `min_score: 0`, a recuperação confirmou que os documentos `_meta` agora estão indexados e aparecem nos resultados:

- Query sobre novo agente futuro: `_meta/schema.md` apareceu com a regra literal sobre não recriar `_agents/{agent_id}/`.
- Query sobre schema/inventário/retrieval: `_meta/README.md` e `_meta/index.md` apareceram no top 3.
- Query sobre telefone/WhatsApp JID/email/CPF: `_meta/pii-redaction-policy.md` apareceu no top 5 com múltiplos chunks.

## Interpretação

A pendência técnica principal — o indexador honrar a allowlist de `_meta/` — foi resolvida. A etapa restante, se desejada, é calibrar ranking/threshold (`SEMANTIC_MIN_SCORE` ou estratégia híbrida) para que as fontes canônicas vençam journals de regressão no top 5 com `min_score` padrão.
