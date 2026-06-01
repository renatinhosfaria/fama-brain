---
created: '2026-05-13'
owner: renato
schema_version: 1
source: mcp-obsidian-audit
status: active
tags:
  - meta
  - retrieval
  - embedding
  - reno
  - vault
type: context
updated: '2026-06-01'
---
# Estado de embeddings e retrieval

## Resumo

Este documento registra o estado conhecido de embeddings, retrieval e indexação operacional do vault `fama-brain` na fase pós-migração Reno-first.

## Estado confirmado em 2026-05-13

- Leitura por MCP disponível: sim.
- Busca textual por MCP disponível: sim.
- Listagem de pastas por MCP disponível: sim.
- Read-back após escrita por MCP disponível: sim.
- Estado vetorial/embedding: não confirmado nesta auditoria.
- Modelo de embedding: não informado pelo runtime consultado.
- Último rebuild vetorial: não informado pelo runtime consultado.
- Escopo exato indexado em vetor: não confirmado.

## Verificação de 2026-06-01

Consulta read-only via MCP/Obsidian confirmou que o runtime ainda expõe estatísticas do vault e idade de índice, mas não expõe, nesta sessão, modelo de embedding, escopo vetorial nem ferramenta de rebuild vetorial.

Estado operacional desta rodada:

- `stat_vault` disponível.
- `validate_vault` disponível.
- `index_age_ms` disponível como métrica de idade de índice do runtime.
- `last_sync` retornou `null`.
- Rebuild vetorial: não executado nesta sessão porque nenhuma ferramenta MCP disponível expôs essa ação.

Até o runtime expor rebuild/modelo/escopo, a política segura continua sendo tratar o retrieval como busca textual + grafo + leitura de notas canônicas.

## Regra operacional enquanto embeddings não estiverem confirmados

Enquanto não houver evidência técnica do estado vetorial, o Reno deve tratar recuperação via MCP como combinação de:

1. leitura direta de notas canônicas;
2. busca textual;
3. wikilinks/backlinks;
4. hierarquia de fontes definida em [[retrieval-policy]].

## Fontes que devem ter prioridade operacional

- `_decisions/` para decisões aprovadas.
- `_runbooks/` para procedimentos atuais.
- READMEs locais para finalidade de pasta.
- `_hubs/` para navegação.
- `_entities/` para fatos duráveis.
- `_journal/reno/` para eventos datados e histórico curado recente.

## Fontes com tratamento histórico/controlado

- `_meta/` deve ser usado para governança, schema, inventário, migração e avaliação.
- `docs/superpowers/**` deve ser usado como histórico de implementação/spec/plano, não como fonte operacional padrão.
- Referências a `_agents/reno` em manifesto, inventário ou linha `Origem migrada` são proveniência histórica, não destino ativo.

## Próxima validação recomendada

Quando o runtime expuser detalhes de embedding/retrieval, atualizar este arquivo com:

- modelo ou provedor usado, sem segredos;
- data do último rebuild;
- pastas incluídas;
- pastas excluídas;
- política de `status: draft`, `superseded` e `archived`;
- resultado das golden queries em [[golden-queries]].
