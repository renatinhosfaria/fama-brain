---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - hubs
  - moc
  - navegacao
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_hubs/` — MOCs (Map of Content)

Hubs **agregam** notas atômicas. Não duplicam conteúdo. Cada bullet: `[[Nota]] — micro-resumo de 1 linha`.

## Camadas

- **Hubs de entidade** — 1 hub por entidade ativa relevante (top 30 clientes/brokers/imóveis). Ex.: `Hub: Bruno Sávio`.
- **Hubs temáticos** — transversais. Ex.: `Hub: Comissões 2026`, `Hub: Renovações Q2 2026`, `Hub: Decisões CEO 2026`, `Hub: Pipeline Vendas`.
- **Hubs de tipo** — índice geral. Ex.: `Hub: Clientes ativos`, `Hub: Brokers`, `Hub: Decisões`, `Hub: Vault governance`.
- **Hubs de agente** — substituem os antigos `_agents/{agente}/README.md`. Ex.: `Hub: agent-vault-steward`, `Hub: agent-reno`, `Hub: agent-ceo`.

## Naming

Título: `Hub: {Sujeito}`. Filename: `hub-{sujeito-slug}.md` em kebab-case.

## Indexação

- Vetoriza: sim — hub bem feito é um chunk muito poderoso pra retrieval.
- Grafo: sim — hub é nó central.

## Population

Hubs serão populados em [FAM-17](/FAM/issues/FAM-17) (Hub layer + Golden queries).
