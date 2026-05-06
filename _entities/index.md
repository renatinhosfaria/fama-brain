---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-05-06'
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

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, não em arquivos separados. Quando o CRM tiver múltiplos cadastros para a mesma pessoa, use `external_ids.crm_client_ids: [array]` + `external_ids.crm_client_id_canonical: <id>`.

## Subtypes

- `person` — clientes, brokers, parceiros, funcionários, leads.
- `org` — construtoras, parceiros institucionais, fornecedores.
- `property` — imóveis (apartamentos, terrenos, lotes específicos, empreendimentos).
- `place` — bairros, regiões, zonas urbanas.
- `project` — projetos como entidades (raro — geralmente vai em `_projects/`).

## Perfis canônicos ativos

### Pessoas (clientes/leads) — 38

**Lote 1–6 (33):** ver [versão anterior do index](_entities/index.md) — todos preservados.

**Lote 7 (5 + 2 atualizações) — 2026-05-06:**
- [[thiago-tesch]] — **Agendamento, visita 15/05 15h30**, perfil MCMV-target, [[union-vista]]
- [[kamily]] — **Agendamento, visita 07/05 9h** (amanhã!), [[place-arbi]]
- [[mauro-marques]] — Em Atendimento, **fora de fit** (quer loteamento Planalto), [[union-vista]]
- [[byanca-guerra]] — Em Atendimento, **Garden Sul engajou!**, planta 56,32m²/R$330k, entrada R$10k
- [[aline-oliveira]] — Em Atendimento, **2º Garden Sul engajado**, diagnóstico em curso

**Atualizações:**
- [[pedro]] — **VISITA REALIZADA** 01/05 (status CRM = Visita) — primeira conversão completa
- [[claudia-rosangela]] — confusão de marca ("E mrv") a esclarecer + perguntou evolução de obra

### Pessoas (brokers) — 1

- [[reno]] — broker_id 35, agente IA principal, broker dos 38 leads canônicos

### Organizações — 1

- [[hlts-construtora]] — construtora de [[union-vista]] e [[union-vereda]] (25 leads canônicos no funil)

### Lugares (bairros/regiões) — 11

**Com empreendimento Fama:**
- [[grand-ville]] — [[union-vista]], 12 leads
- [[jaragua]] — Zona Oeste, [[union-vereda]], 13 leads (**maior cobertura**)
- [[jardim-sul]] — Zona Sul, [[garden-sul]], 5 leads (**anomalia 0% quebrada — 2 engajaram**)
- [[shopping-park]] — Zona Sul, [[place-arbi]], 5 leads

**Sem empreendimento Fama (gap de portfólio):**
- [[martins]] — preferência [[andreia-carvalho]]
- [[jardim-patricia]] — preferência [[andreia-carvalho]]
- [[roosevelt]] — preferência [[andreia-carvalho]], concorrente [[zurique]]
- [[chacara-tubalina]] — trabalho [[jonathan-barbosa]]
- [[zona-leste]] — preferência [[eduarda]]
- [[regiao-central]] — preferência [[silva-porto]]
- **NOVO gap:** Planalto/loteamento — perfil [[mauro-marques]]

### Propriedades (empreendimentos) — 8

**Em campanha ativa:**
- [[union-vista]] — [[grand-ville]], [[hlts-construtora]], **12 leads** (incluindo Thiago Tesch agendado 15/05 e Mauro fora de fit)
- [[union-vereda]] — [[jaragua]], [[hlts-construtora]], **13 leads** (incluindo Pedro visita realizada)
- [[place-arbi]] — [[shopping-park]], **5 leads** (Kamily visita 07/05 amanhã!)
- [[garden-sul]] — [[jardim-sul]], **5 leads** (Byanca + Aline engajaram, anomalia quebrada)

**Captados mas dados incompletos:**
- [[bris]] — Instagram, 1 lead (arquivado)
- [[bella-vita]] — Google Ads, 1 lead (arquivado)
- [[park-espanha]] — Facebook Ads, 1 lead (arquivado)

**Concorrente:**
- [[zurique]] — [[roosevelt]], referência competitiva

## Estatísticas

- **Total de perfis canônicos:** 60 (38 pessoas-cliente + 1 broker + 1 org + 11 lugares + 8 propriedades + 1 concorrente).
- **Leads canônicos do Reno:** 38 (eram 33 pré-Lote 7).
- **Visitas confirmadas/realizadas no funil canônico:** 4 (Pedro realizada, Kamily 07/05, Thiago 15/05, Augusto remarcação)
- **Cobertura por imóvel:** Union Vereda 13, Union Vista 12, Place+Arbi 5, Garden Sul 5.

## Insights consolidados (Lotes 3–7)

### Funil comercial — conversões em vista
1. **[[pedro]]** — VISITA REALIZADA 01/05 (status CRM = Visita)
2. **[[kamily]]** — visita confirmada **AMANHÃ 07/05 9h** ([[place-arbi]])
3. **[[thiago-tesch]]** — visita confirmada 15/05 15h30 ([[union-vista]], perfil MCMV-target ideal)
4. **[[augusto-santana]]** — Visita aguardando remarcação ([[union-vista]], crédito Caixa R$230k)
5. **[[claudia-rosangela]]** — visita acordada para semana 05/05 ([[union-vereda]], "é bem isso")
6. **[[byanca-guerra]]** — conduzindo para visita ([[garden-sul]] 56,32m²)
7. **[[amanda]]** — alvo iminente ([[place-arbi]] "Simplesmente perfeito", precisa marido)

### Perfis emergentes
- **MCMV-target perfeito:** [[thiago-tesch]] (visita 15/05) — perfil financeiro coerente, sem objeções
- **Investidor:** [[eliseu]] (tese valorização)
- **MCMV-dependente:** [[marcio-oliveira-juliao]]
- **Multi-imóvel exigente:** [[andreia-carvalho]]
- **Dual morar+investir:** [[jonathan-barbosa]]
- **Fora de fit declarado:** [[mauro-marques]] (quer loteamento)

### Operacional — bloqueios CRÍTICOS antes de 07/05 e 15/05
- **HOJE 06/05:** resolver planta baixa [[place-arbi]] no MinIO (visita Kamily amanhã 9h)
- **Antes de 15/05:** validar enquadramento MCMV [[union-vista]] (visita Thiago Tesch)
- **Em aberto:** WhatsApp shutdown (Levi), book Union Vereda completo, memorial Garden Sul
- **Dedup CRM falho:** Augusto 4 cadastros, Wueverton 3, Jisa 3 — bug grave do FamaChat

### Validações HLTS pendentes
- Enquadramento MCMV (gatilho [[marcio-oliveira-juliao]] e [[thiago-tesch]])
- Plano investidor 10% entrada (gatilho [[eliseu]])
- Configuração futura com 2 vagas (caminho [[andreia-carvalho]])

### Marketing/Aquisição — anomalias e descobertas
- **Garden Sul anomalia QUEBRADA:** Lote 7 trouxe 2 leads engajados (Byanca + Aline) — antes era 0/3
- **Union Vista mismatch persistente:** Mauro queria loteamento; 5/12 leads silentes — vale revisão criativa
- **Canais alternativos:** Instagram (Bris) e Google Ads (Bella Vita) seguem com 1 lead cada — base pequena
- **NOVO gap:** loteamento/Planalto — Mauro vai para concorrente
- **Gap de portfólio nos bairros nobres:** Martins, Jardim Patrícia, Roosevelt — concorrentes capturam

## Cobertura do funil canônico

A curadoria FAM-15 cobriu agora **38 dos ~75+ leads ativos** do Reno. **5 conversões em vista no horizonte de uma semana**, incluindo a primeira visita já realizada ([[pedro]]). O grafo é navegável e as decisões comerciais críticas têm contexto.
