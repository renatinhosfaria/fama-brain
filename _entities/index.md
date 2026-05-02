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
## `_entities/` — Perfis canônicos

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, não em arquivos separados.

## Subtypes

- `person` — clientes, brokers, parceiros, funcionários, leads.
- `org` — construtoras, parceiros institucionais, fornecedores.
- `property` — imóveis (apartamentos, terrenos, lotes específicos, empreendimentos).
- `place` — bairros, regiões, zonas urbanas.
- `project` — projetos como entidades (raro — geralmente vai em `_projects/`).

## Naming

Filename = slug do nome canônico em kebab-case.

ID externo do CRM mora em `external_ids.crm_client_id` ou `external_ids.crm_property_id`.

## Indexação

- Vetoriza: sim. Grafo: sim.
- Notas com `status: archived` (cliente perdido sem atividade > 12 meses) não vetorizam mas mantêm grafo.

## Perfis canônicos ativos

### Pessoas (clientes/leads) — 16

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
- [[andreia-carvalho]] — Em Atendimento, **multi-imóvel** (Union Vereda → Zurique → Martinsville), 2 vagas obrigatórias
- [[eduarda]] — Em Atendimento, primeiro imóvel, viabilidade apertada, [[union-vereda]]
- [[silva-porto]] — Em Atendimento, CLT, [[union-vista]] / [[regiao-central]]
- [[pedro]] — **Visita confirmada 01/05 18h**, [[union-vereda]]
- [[guilherme-mendes]] — Em Atendimento, lead quente, [[union-vereda]]

### Pessoas (brokers) — 1

- [[reno]] — broker_id 35, agente IA principal, broker de todos os 16 leads canônicos

### Organizações — 1

- [[hlts-construtora]] — construtora de [[union-vista]] e [[union-vereda]] (15 leads canônicos no funil)

### Lugares (bairros) — 2

- [[grand-ville]] — Uberlândia/MG, casa do [[union-vista]], 6 leads
- [[jaragua]] — Uberlândia/MG, Zona Oeste, casa do [[union-vereda]], 9 leads (**bairro de maior cobertura**)

### Propriedades (empreendimentos) — 4

- [[union-vista]] — [[grand-ville]], Uberlândia, [[hlts-construtora]], lançamento, entrega Jul/2027. **6 leads.**
- [[union-vereda]] — [[jaragua]], Uberlândia, [[hlts-construtora]], lançamento, entrega Dez/2028. **9 leads.** (alta cobertura)
- [[place-arbi]] — Shopping Park, Uberlândia, lançamento, entrega Jun/2027. 1 lead.
- [[garden-sul]] — Jardim Sul, Uberlândia, lançamento, entrega Set/2028, R$294.9k–367.9k. 1 lead.

### Projetos

_(ainda nenhum em `_entities/`; projetos vivem em `_projects/`)_

## Estatísticas

- **Total de perfis canônicos:** 24 (16 pessoas-cliente + 1 broker + 1 org + 2 lugares + 4 propriedades).
- **Leads canônicos do Reno:** 16 (eram 11 pré-Lote 3).
- **Backlinks novos no grafo (Lote 3):** ~32 (5 perfis cliente × ~3 links + reno×16 + hlts×2 + jaragua×9 + grand-ville×6 + atualizações union-*).
- **Cobertura de imóveis:** Union Vereda 9 leads, Union Vista 6 leads, Place+Arbi 1 lead, Garden Sul 1 lead.
- **Cobertura de bairros:** Jaraguá 9, Grand Ville 6.

## Insights emergentes (Lote 3)

- **HLTS Construtora concentra 15 dos 16 leads canônicos** — parceria mais relevante do funil. Vale relacionamento comercial dedicado.
- **Jaraguá é o bairro mais quente** — 9 leads, incluindo a única visita confirmada do funil ([[pedro]]) e o lead mais quente sem visita ([[guilherme-mendes]]).
- **Andreia Carvalho** evidencia que **1 vaga limita Union Vereda** — clientes com 2 carros descartam. Sugestão: validar com HLTS lançamento futuro com 2 vagas.
- **Silva Porto** entrou via Union Vista (Grand Ville) mas prefere região central — recalibrar discurso de campanha.
- **Pedro (01/05)** é a primeira conversão em vista do funil canônico — pós-visita merece atualização imediata do perfil.

## Próximas entidades a criar (Lote 4)

- 5+ clientes com atividade média (Eliseu, Márcio, Elias Fernandes, Amanda, Carmen, Sibely)
- Bairros adicionais citados: [[martins]], [[jardim-patricia]], [[roosevelt]], [[zona-leste]], [[regiao-central]]
- Empreendimentos citados mas sem perfil: [[zurique]] (Roosevelt), Martinsville
