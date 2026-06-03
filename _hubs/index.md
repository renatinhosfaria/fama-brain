---
created: '2026-04-30'
owner: renato
tags:
  - hubs
  - moc
  - navegacao
type: moc
updated: '2026-06-03'
---
# `_hubs/` — MOCs (Map of Content)

Vínculos: [[schema]], [[fama-overview]].
Hubs **agregam** notas atômicas. Não duplicam conteúdo. Cada bullet usa um wikilink para a nota e um micro-resumo de 1 linha.

## Navegação raiz

- [[README|README]] — índice raiz do vault.

## Agentes e operação

- [[reno]] — entidade canônica do Reno.
- [[reno-hub]] — mapa operacional do segundo cérebro do Reno.
- [[marketing-hub]] — mapa operacional do agente de Marketing.
- [[brain-hub]] — mapa operacional do Brain como curador central do vault.

## Camadas

- **Hubs de entidade** — 1 hub por entidade ativa relevante (top 30 clientes/brokers/imóveis). Ex.: `Hub: Bruno Sávio`.
- **Hubs temáticos** — transversais. Ex.: `Hub: Comissões 2026`, `Hub: Renovações Q2 2026`, `Hub: Decisões 2026`, `Hub: Pipeline Vendas`.
- **Hubs de tipo** — índice geral. Ex.: `Hub: Clientes ativos`, `Hub: Brokers`, `Hub: Decisões`, `Hub: Vault governance`.
- **Hubs operacionais** — concentram mapas de navegação sem recriar namespaces de agente. Hubs canônicos atuais: [[reno-hub]], [[marketing-hub]] e [[brain-hub]].

## Naming

Título: `Hub: {Sujeito}`. Filename preferencial: `{sujeito-slug}-hub.md` quando for hub de agente ou `hub-{sujeito-slug}.md` para hubs temáticos/entidade, em kebab-case.

## Indexação

- Vetoriza: sim — hub bem feito é um chunk muito poderoso para retrieval.
- Grafo: sim — hub é nó central.

## Population

Hubs serão populados em [FAM-17](/FAM/issues/FAM-17) (Hub layer + Golden queries). O [[brain-hub]] passa a centralizar trilhas de curadoria incremental: PII, hubs, consolidações e melhoria de retrieval.
