---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-05-02'
tags:
  - entities
  - moc
  - perfis-canonicos
schema_version: 1
status: active
provenance: human-curated
author_agent: VaultSteward
---
# `_entities/` — Perfis canônicos

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, não em arquivos separados.

## Subtypes

- `person` — clientes, brokers, parceiros, funcionários, leads.
- `org` — construtoras, parceiros institucionais, fornecedores.
- `property` — imóveis (apartamentos, terrenos, lotes específicos, empreendimentos).
- `project` — projetos como entidades (raro — geralmente vai em `_projects/`).

## Naming

Filename = slug do nome canônico em kebab-case.

ID externo do CRM mora em `external_ids.crm_client_id` ou `external_ids.crm_property_id`.

## Indexação

- Vetoriza: sim. Grafo: sim.
- Notas com `status: archived` (cliente perdido sem atividade > 12 meses) não vetorizam mas mantêm grafo.

## Perfis canônicos ativos

### Pessoas (clientes/leads) — 11

- [[bruno-savio]] — Não Respondeu, [[union-vista]] / [[grand-ville]]
- [[augusto-santana]] — Agendamento (visita cancelada), [[union-vista]], crédito Caixa R$230k
- [[samuel-kim]] — Em Atendimento, trava aluguel até dez/2026, [[place-arbi]] e [[union-vereda]]
- [[jisa-dantas]] — Em Atendimento, viabilidade_financiamento, [[union-vista]]
- [[esther-osklen]] — Não Respondeu, [[union-vereda]]
- [[wueverton-lima]] — Não Respondeu, [[union-vista]]
- [[edson-tolentino]] — Não Respondeu, [[union-vista]]
- [[murilo-damasceno]] — Não Respondeu, [[union-vereda]]
- [[davi-maia]] — Não Respondeu, [[garden-sul]]
- [[leticia-melo]] — Não Respondeu, [[union-vereda]]
- [[ana-clara-marques]] — Não Respondeu, [[union-vereda]]

### Pessoas (brokers)

- [[reno]] — broker_id 35, broker principal de todos os leads listados (perfil canônico ainda a criar)

### Organizações

- HLTS Construtora — construtora de [[union-vista]] e [[union-vereda]] (perfil canônico ainda a criar)

### Propriedades (empreendimentos) — 4

- [[union-vista]] — Grand Ville, Uberlândia, lançamento, entrega Jul/2027. **4 leads interessados.**
- [[union-vereda]] — Jaraguá, Uberlândia, HLTS, lançamento, entrega Dez/2028. **5 leads interessados.** (alta cobertura)
- [[place-arbi]] — Shopping Park, Uberlândia, lançamento, entrega Jun/2027. 1 lead.
- [[garden-sul]] — Jardim Sul, Uberlândia, lançamento, entrega Set/2028, R$294.9k–367.9k. 1 lead.

### Projetos

_(ainda nenhum em `_entities/`; projetos vivem em `_projects/`)_

## Estatísticas

- **Total de perfis canônicos:** 15 (11 pessoas + 4 propriedades).
- **Backlinks novos no grafo:** ~22 (cada perfil de pessoa → atendimento original; propriedades → 4+5+1+1 perfis de cliente).
- **Cobertura de imóveis:** Union Vereda 5 leads, Union Vista 4 leads, Place+Arbi 1 lead, Garden Sul 1 lead.
- **Próximas entidades a criar:** broker [[reno]], HLTS Construtora, bairros [[grand-ville]] e [[jaragua]], +5 clientes do próximo lote.
