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

Filename = slug do nome canônico em kebab-case. Ex.: `bruno-savio.md`, `union-vista.md`, `construtora-xyz.md`.

ID externo do CRM **não é parte do filename canônico** — mora em `external_ids.crm_client_id` ou `external_ids.crm_property_id`.

## Indexação

- Vetoriza: sim. Grafo: sim.
- Notas com `status: archived` (cliente perdido sem atividade > 12 meses) não vetorizam mas mantêm grafo.

## Dedup

Quando encontrar duplicatas:

1. Consolidar conteúdo único de ambas (non-destructive merge).
2. Adicionar aliases.
3. Atualizar wikilinks que apontavam para a redundante.
4. Apagar a redundante.

VaultSteward executa dedup quando a decisão sobre qual conteúdo manter é estrutural. Quando há ambiguidade de conteúdo, escala ao dono.

## Perfis canônicos ativos

### Pessoas (clientes/leads)

- [[bruno-savio]] — lead Não Respondeu, interesse em [[union-vista]] e [[grand-ville]] (piloto FAM-16, 2026-05-01)
- [[augusto-santana]] — Agendamento (visita cancelada, aguardando remarcação), interesse em [[union-vista]], crédito Caixa R$230k
- [[samuel-kim]] — Em Atendimento, trava aluguel até dez/2026, interesse em [[place-arbi]] e [[union-vereda]]
- [[jisa-dantas]] — Em Atendimento, bucket viabilidade_financiamento, interesse em [[union-vista]]
- [[esther-osklen]] — Não Respondeu, interesse em [[union-vereda]]
- [[wueverton-lima]] — Não Respondeu, interesse em [[union-vista]]

### Pessoas (brokers)

- [[reno]] — broker_id 35, broker principal dos leads listados (perfil canônico ainda a criar)

### Organizações

_(ainda nenhum)_

### Propriedades (empreendimentos)

- [[union-vista]] — Grand Ville, Uberlândia, lançamento, entrega Jul/2027. Interesse: 4 clientes.
- [[union-vereda]] — Jaraguá, Uberlândia, lançamento, entrega Dez/2028. Interesse: 2 clientes.
- [[place-arbi]] — Shopping Park, Uberlândia, entrega Jun/2027. Interesse: 1 cliente. (perfil canônico ainda a criar)

### Projetos

_(ainda nenhum)_

## Estatísticas

- **Total de perfis canônicos:** 8 (6 pessoas + 2 propriedades)
- **Backlinks gerados pra atendimentos do Reno:** ~6 (cada perfil de pessoa aponta pro atendimento dele)
- **Cobertura de cobertura de imóveis:** Union Vista 4 leads / Union Vereda 2 leads / Place+Arbi 1 lead

Próximo lote: criar mais 5–10 perfis pros próximos clientes recorrentes do Reno e perfis pendentes (`reno`, `place-arbi`, bairros `grand-ville`/`jaragua`).
