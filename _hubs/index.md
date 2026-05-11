---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-05-08'
tags:
  - hubs
  - moc
  - navegacao
schema_version: 1
status: active
source: human-curated
---

# `_hubs/` — MOCs (Map of Content)

Vínculos: [[schema]], [[fama-overview]].
Hubs **agregam** notas atômicas. Não duplicam conteúdo. Cada bullet usa um wikilink para a nota e um micro-resumo de 1 linha.


## Navegação raiz

- [[README|README]] — índice raiz do vault.

## Agentes e operação

- [[reno]] — entidade canônica do Reno.
- [[reno-hub]] — mapa operacional do segundo cérebro do Reno.

## Camadas

- **Hubs de entidade** — 1 hub por entidade ativa relevante (top 30 clientes/brokers/imóveis). Ex.: `Hub: Bruno Sávio`.
- **Hubs temáticos** — transversais. Ex.: `Hub: Comissões 2026`, `Hub: Renovações Q2 2026`, `Hub: Decisões 2026`, `Hub: Pipeline Vendas`.
- **Hubs de tipo** — índice geral. Ex.: `Hub: Clientes ativos`, `Hub: Brokers`, `Hub: Decisões`, `Hub: Vault governance`.
- **Hubs de agente** — substituem os antigos `_agents/{agente}/README.md`. Ex.: `Hub: agent-reno`.

## Naming

Título: `Hub: {Sujeito}`. Filename: `hub-{sujeito-slug}.md` em kebab-case.

## Indexação

- Vetoriza: sim — hub bem feito é um chunk muito poderoso pra retrieval.
- Grafo: sim — hub é nó central.

## Population

Hubs serão populados em [FAM-17](/FAM/issues/FAM-17) (Hub layer + Golden queries).
