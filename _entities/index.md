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

### Pessoas (clientes/leads) — 21

**Lote 1–2 (11):**
- [[bruno-savio]], [[augusto-santana]], [[samuel-kim]], [[jisa-dantas]], [[esther-osklen]], [[wueverton-lima]], [[edson-tolentino]], [[murilo-damasceno]], [[davi-maia]], [[leticia-melo]], [[ana-clara-marques]]

**Lote 3 (5):**
- [[andreia-carvalho]] — Em Atendimento, multi-imóvel, 2 vagas obrigatórias
- [[eduarda]] — Em Atendimento, primeiro imóvel, viabilidade apertada, [[union-vereda]]
- [[silva-porto]] — Em Atendimento, CLT, [[union-vista]] / região central
- [[pedro]] — **Visita confirmada 01/05 18h**, [[union-vereda]]
- [[guilherme-mendes]] — Em Atendimento, lead quente, [[union-vereda]]

**Lote 4 (5):**
- [[eliseu]] — Em Atendimento, **investidor** (valorização/revenda), [[union-vista]]
- [[marcio-oliveira-juliao]] — Em Atendimento, **MCMV-dependente**, [[union-vista]]
- [[elias-fernandes]] — Não Respondeu (telefone Bahia), [[garden-sul]]
- [[amanda]] — Em Atendimento, **lead muito quente** ("simplesmente perfeito"), [[place-arbi]]
- [[carmen-vicente-santos]] — Não Respondeu, [[garden-sul]]

### Pessoas (brokers) — 1

- [[reno]] — broker_id 35, agente IA principal, broker dos 21 leads canônicos

### Organizações — 1

- [[hlts-construtora]] — construtora de [[union-vista]] e [[union-vereda]] (16 leads canônicos no funil)

### Lugares (bairros) — 4

- [[grand-ville]] — Uberlândia/MG, casa do [[union-vista]], 8 leads
- [[jaragua]] — Uberlândia/MG, Zona Oeste, casa do [[union-vereda]], 9 leads (**bairro de maior cobertura**)
- [[jardim-sul]] — Uberlândia/MG, Zona Sul, casa do [[garden-sul]], 3 leads (**0% engajamento — anomalia**)
- [[shopping-park]] — Uberlândia/MG, Zona Sul, casa do [[place-arbi]], 2 leads (alta quentura)

### Propriedades (empreendimentos) — 4

- [[union-vista]] — [[grand-ville]], Uberlândia, [[hlts-construtora]], lançamento, entrega Jul/2027. **8 leads** (era 6).
- [[union-vereda]] — [[jaragua]], Uberlândia, [[hlts-construtora]], lançamento, entrega Dez/2028. **9 leads** (alta cobertura).
- [[place-arbi]] — [[shopping-park]], Uberlândia, lançamento, entrega Jun/2027. **2 leads** (alta quentura).
- [[garden-sul]] — [[jardim-sul]], Uberlândia, lançamento, entrega Set/2028, R$294.9k–367.9k. **3 leads** (0% engajamento).

### Projetos

_(ainda nenhum em `_entities/`; projetos vivem em `_projects/`)_

## Estatísticas

- **Total de perfis canônicos:** 31 (21 pessoas-cliente + 1 broker + 1 org + 4 lugares + 4 propriedades).
- **Leads canônicos do Reno:** 21 (eram 16 pré-Lote 4).
- **Backlinks novos no grafo (Lote 4):** ~25 (5 perfis cliente × ~3 links cada + jardim-sul×3 + shopping-park×2 + atualizações imóveis/reno).
- **Cobertura por imóvel:** Union Vereda 9, Union Vista 8, Garden Sul 3, Place+Arbi 2.
- **Cobertura por bairro:** Jaraguá 9, Grand Ville 8, Jardim Sul 3, Shopping Park 2.

## Insights emergentes (consolidado Lotes 3–4)

- **HLTS Construtora concentra 16/21 leads canônicos** — parceria mais relevante. Vale relacionamento dedicado.
- **Funil tem 3 conversões em vista próximas:**
  1. [[pedro]] — visita confirmada 01/05 18h (Union Vereda)
  2. [[amanda]] — alvo de visita iminente (Place+Arbi, "simplesmente perfeito", precisa marido)
  3. [[guilherme-mendes]] — convidado para Fama (Union Vereda, planta agradou)
- **Jaraguá é o bairro mais quente** — 9 leads, 1 visita confirmada e múltiplos engajados.
- **Anomalia Garden Sul/Jardim Sul:** 3 leads, **0 em atendimento**. Vale revisar campanha Meta Ads.
- **Bloqueio operacional pendente:** plantas baixas faltando no MinIO (Place+Arbi e Union Vereda completo). Resolução destrava Amanda + qualquer próximo lead Union Vereda.
- **Validações com HLTS pendentes:** enquadramento MCMV (gatilho [[marcio-oliveira-juliao]]) e plano investidor 10% entrada (gatilho [[eliseu]]).
- **Place+Arbi** tem cobertura pequena (2 leads) mas qualidade altíssima — replicar discurso/criativo se possível.
- **Trava recorrente Union Vereda:** 1 vaga (Andreia descartou; Guilherme aceita).

## Próximas entidades a criar (Lote 5)

- 4–5 clientes adicionais com atividade média (Levi Santos, Larissa Martins, João Pedro, Santiago, Sibely)
- Bairros adicionais citados: [[martins]], [[jardim-patricia]], [[roosevelt]], [[zona-leste]], [[regiao-central]]
- Empreendimentos concorrentes citados sem perfil: [[zurique]] (Roosevelt), Martinsville, Biti
