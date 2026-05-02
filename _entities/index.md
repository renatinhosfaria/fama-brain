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

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, não em arquivos separados. Quando o CRM tiver múltiplos cadastros para a mesma pessoa (caso recorrente), use `external_ids.crm_client_ids: [array]` + `external_ids.crm_client_id_canonical: <id>`.

## Subtypes

- `person` — clientes, brokers, parceiros, funcionários, leads.
- `org` — construtoras, parceiros institucionais, fornecedores.
- `property` — imóveis (apartamentos, terrenos, lotes específicos, empreendimentos).
- `place` — bairros, regiões, zonas urbanas.
- `project` — projetos como entidades (raro — geralmente vai em `_projects/`).

## Naming

Filename = slug do nome canônico em kebab-case.

ID externo do CRM mora em `external_ids.crm_client_id`/`crm_client_ids` (pessoas) ou `external_ids.crm_property_id` (imóveis).

## Indexação

- Vetoriza: sim. Grafo: sim.
- Notas com `status: archived` (cliente perdido sem atividade > 12 meses ou lead-teste) não vetorizam mas mantêm grafo.

## Perfis canônicos ativos

### Pessoas (clientes/leads) — 33

**Lote 1–2 (11):**
- [[bruno-savio]], [[augusto-santana]] (4 cadastros CRM), [[samuel-kim]], [[jisa-dantas]] (3 cadastros), [[esther-osklen]], [[wueverton-lima]] (3 cadastros), [[edson-tolentino]], [[murilo-damasceno]], [[davi-maia]], [[leticia-melo]], [[ana-clara-marques]]

**Lote 3 (5):** [[andreia-carvalho]] (multi-imóvel), [[eduarda]] (primeiro imóvel), [[silva-porto]] (CLT), [[pedro]] (visita 01/05), [[guilherme-mendes]] (lead quente)

**Lote 4 (5):** [[eliseu]] (investidor), [[marcio-oliveira-juliao]] (MCMV), [[elias-fernandes]] (Bahia), [[amanda]] ("simplesmente perfeito"), [[carmen-vicente-santos]]

**Lote 5 (5):** [[levi-santos]] (régua travada), [[larissa-martins]] (arquivado, [[bris]]), [[joao-pedro]] (lead-fantasma), [[sibely-cortes]], [[santiago-derson]]

**Lote 6 (7):**
- [[andre-luiz-duca]] — Não Respondeu, [[union-vista]]
- [[grazyelly-macedo]] — Não Respondeu, [[place-arbi]]
- [[alexsander-pereira]] — Em Atendimento (frio), [[place-arbi]]
- [[claudia-rosangela]] — **Em Atendimento, "é bem isso", visita próxima semana** ([[union-vereda]])
- [[jonathan-barbosa]] — Em Atendimento, dual morar+investir, trabalha [[chacara-tubalina]]
- [[joao-vitor]] — Arquivado teste ([[bella-vita]], Google Ads)
- [[priscila-nogueira]] — Arquivado teste ([[park-espanha]], Facebook Ads)

### Pessoas (brokers) — 1

- [[reno]] — broker_id 35, agente IA principal, broker dos 33 leads canônicos

### Organizações — 1

- [[hlts-construtora]] — construtora de [[union-vista]] e [[union-vereda]] (23 leads canônicos no funil)

### Lugares (bairros/regiões) — 10

**Com empreendimento Fama:**
- [[grand-ville]] — casa do [[union-vista]], 10 leads
- [[jaragua]] — Zona Oeste, casa do [[union-vereda]], 13 leads (**bairro de maior cobertura**)
- [[jardim-sul]] — Zona Sul, casa do [[garden-sul]], 3 leads (**0% engajamento**)
- [[shopping-park]] — Zona Sul, casa do [[place-arbi]], 4 leads

**Sem empreendimento Fama (gap de portfólio):**
- [[martins]] — preferência [[andreia-carvalho]], concorrente Martinsville
- [[jardim-patricia]] — preferência [[andreia-carvalho]], concorrentes MRV/Opção
- [[roosevelt]] — preferência [[andreia-carvalho]], concorrente [[zurique]]
- [[chacara-tubalina]] — trabalho do [[jonathan-barbosa]]
- [[zona-leste]] — preferência da [[eduarda]]
- [[regiao-central]] — preferência do [[silva-porto]]

### Propriedades (empreendimentos) — 7

**Em campanha ativa:**
- [[union-vista]] — [[grand-ville]], [[hlts-construtora]], lançamento, entrega Jul/2027. **10 leads** (5 silentes!)
- [[union-vereda]] — [[jaragua]], [[hlts-construtora]], lançamento, entrega Dez/2028. **13 leads** (alta cobertura, 3 conversões em vista)
- [[place-arbi]] — [[shopping-park]], lançamento, entrega Jun/2027. **4 leads** (bipolaridade)
- [[garden-sul]] — [[jardim-sul]], lançamento, entrega Set/2028. **3 leads** (0% engajamento)

**Captados mas dados incompletos:**
- [[bris]] — Instagram, 1 lead (arquivado)
- [[bella-vita]] — Google Ads, 1 lead (arquivado), id 116
- [[park-espanha]] — Facebook Ads, 1 lead (arquivado), id 62

**Concorrente (referência):**
- [[zurique]] — [[roosevelt]], 2 vagas/2027, mencionado pelo Reno como alternativa para [[andreia-carvalho]]

### Projetos

_(ainda nenhum em `_entities/`; projetos vivem em `_projects/`)_

## Estatísticas

- **Total de perfis canônicos:** 53 (33 pessoas-cliente + 1 broker + 1 org + 10 lugares + 8 propriedades — incluído Zurique como concorrente).
- **Leads canônicos do Reno:** 33 (eram 26 pré-Lote 6).
- **Cobertura por imóvel:** Union Vereda 13, Union Vista 10, Place+Arbi 4, Garden Sul 3, Bris/Bella Vita/Park Espanha 1 cada.
- **Cobertura por bairro com produto:** Jaraguá 13, Grand Ville 10, Shopping Park 4, Jardim Sul 3.
- **Bairros gap-de-portfólio:** 6 (Martins, Jardim Patrícia, Roosevelt, Chácara Tubalina, Zona Leste, Região Central).
- **Canais identificados:** SLA Cascata, Facebook Ads (4 campanhas distintas), Instagram (1 — Bris), Google Ads (1 — Bella Vita).

## Insights consolidados (Lotes 3–6)

### Funil comercial — conversões em vista
1. **[[pedro]]** — visita confirmada 01/05 18h ([[union-vereda]])
2. **[[claudia-rosangela]]** — visita próxima semana ([[union-vereda]], "é bem isso que procuro", R$288.880)
3. **[[amanda]]** — alvo de visita iminente ([[place-arbi]], "Simplesmente perfeito", precisa marido)
4. **[[guilherme-mendes]]** — convidado para Fama ([[union-vereda]])
5. **[[augusto-santana]]** — Visita aguardando remarcação ([[union-vista]], Caixa R$230k)

### Perfis emergentes
- **Investidor:** [[eliseu]] (tese valorização Union Vista)
- **MCMV-dependente:** [[marcio-oliveira-juliao]] (bloqueio se Union Vista não enquadrar)
- **Multi-imóvel exigente:** [[andreia-carvalho]] (2 vagas, planta grande, 3 bairros aceitos)
- **Dual morar+investir:** [[jonathan-barbosa]] (proximidade Chácara Tubalina)

### Operacional — bloqueios ativos
- WhatsApp shutdown bloqueando [[levi-santos]]
- Plantas baixas faltando no MinIO: Place+Arbi, Union Vereda completo
- **Dedup CRM falho** (descoberta Lote 6): Augusto 4 cadastros, Wueverton 3, Jisa 3, Carmen nome duplicado, 3 leads-teste com 3+ cópias de cada anotação. Bug grave do FamaChat.
- Falhas WhatsApp jidDecode persistentes

### Validações HLTS pendentes
- Enquadramento MCMV (gatilho Márcio + cobertura Union Vereda)
- Plano investidor 10% entrada (gatilho Eliseu)
- Configuração futura com 2 vagas (caminho Andreia)

### Marketing/Aquisição — anomalias
- **"Leads silentes" Facebook Ads:** Garden Sul 3/3, Union Vista 5/10, Place+Arbi 2/4. Padrão recorrente sugere mismatch criativo/produto. **Recomendação:** revisão de campanha antes de aumentar verba.
- **Place+Arbi bipolar:** 50% engaja muito, 50% silente — segmentação ou criativo
- **Canais alternativos com 1 lead cada:** Instagram (Bris), Google Ads (Bella Vita) — base muito pequena para conclusão, mas vale rastrear
- **Gap de portfólio nos bairros nobres:** Martins, Jardim Patrícia, Roosevelt — concorrentes (Martinsville, MRV, Opção, Zurique) capturam demanda canônica
- **Gap de portfólio nas regiões maiores:** Zona Leste (Eduarda), Região Central (Silva Porto)

## Cobertura do funil canônico

A curadoria FAM-15 cobriu agora **33 dos ~70+ leads ativos** do Reno (clientes top por atividade nos últimos 30 dias). Os perfis canônicos restantes seriam de leads de baixa atividade — eles já têm registros no CRM, mas sem sinal suficiente para diferenciá-los além da régua de repescagem padrão.

**Sugestão de continuidade:** transformar a curadoria em **rotina automática** (agente diário/semanal pegando top-N por atividade do dia) em vez de heartbeats manuais — proposta enviada ao CEO via comentários FAM-15.

## Decisões de manutenção

- Manter `status: archived` para Larissa, João Vitor, Priscila (telefones-teste) — vetorização desligada por padrão.
- `external_ids.crm_client_ids` (array) é convenção para mapear cadastros duplicados a uma única entidade canônica.
- Confidence < 0.7 indica perfil com dados incompletos — atualizar quando houver mais sinal.
