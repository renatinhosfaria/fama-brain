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
- Notas com `status: archived` (cliente perdido sem atividade > 12 meses ou lead-teste) não vetorizam mas mantêm grafo.

## Perfis canônicos ativos

### Pessoas (clientes/leads) — 26

**Lote 1–2 (11):**
- [[bruno-savio]], [[augusto-santana]], [[samuel-kim]], [[jisa-dantas]], [[esther-osklen]], [[wueverton-lima]], [[edson-tolentino]], [[murilo-damasceno]], [[davi-maia]], [[leticia-melo]], [[ana-clara-marques]]

**Lote 3 (5):**
- [[andreia-carvalho]] — Em Atendimento, multi-imóvel, 2 vagas obrigatórias
- [[eduarda]] — Em Atendimento, primeiro imóvel, viabilidade apertada
- [[silva-porto]] — Em Atendimento, CLT, prefere região central
- [[pedro]] — **Visita confirmada 01/05 18h**
- [[guilherme-mendes]] — Em Atendimento, lead quente

**Lote 4 (5):**
- [[eliseu]] — Em Atendimento, **investidor**
- [[marcio-oliveira-juliao]] — Em Atendimento, **MCMV-dependente**
- [[elias-fernandes]] — Não Respondeu (telefone Bahia)
- [[amanda]] — Em Atendimento, **lead muito quente**
- [[carmen-vicente-santos]] — Não Respondeu

**Lote 5 (5):**
- [[levi-santos]] — Em Atendimento, [[union-vereda]], régua travada por shutdown gateway
- [[larissa-martins]] — **Arquivado** (telefone de teste, mas trouxe [[bris]])
- [[joao-pedro]] — Não Respondeu, lead-fantasma sem empreendimento
- [[sibely-cortes]] — Não Respondeu, [[union-vereda]]
- [[santiago-derson]] — Não Respondeu, [[union-vista]]

### Pessoas (brokers) — 1

- [[reno]] — broker_id 35, agente IA principal, broker dos 26 leads canônicos

### Organizações — 1

- [[hlts-construtora]] — construtora de [[union-vista]] e [[union-vereda]] (20 leads canônicos no funil)

### Lugares (bairros) — 7

**Com empreendimento Fama:**
- [[grand-ville]] — Uberlândia/MG, casa do [[union-vista]], 9 leads
- [[jaragua]] — Uberlândia/MG, Zona Oeste, casa do [[union-vereda]], 11 leads (**bairro de maior cobertura**)
- [[jardim-sul]] — Uberlândia/MG, Zona Sul, casa do [[garden-sul]], 3 leads (**0% engajamento — anomalia**)
- [[shopping-park]] — Uberlândia/MG, Zona Sul, casa do [[place-arbi]], 2 leads (alta quentura)

**Sem empreendimento Fama (gap de portfólio):**
- [[martins]] — preferência da [[andreia-carvalho]], concorrente Martinsville
- [[jardim-patricia]] — preferência da [[andreia-carvalho]], concorrentes MRV/Opção
- [[roosevelt]] — preferência da [[andreia-carvalho]], concorrente Zurique

### Propriedades (empreendimentos) — 5

**Em campanha ativa:**
- [[union-vista]] — [[grand-ville]], [[hlts-construtora]], lançamento, entrega Jul/2027. **9 leads** (era 8).
- [[union-vereda]] — [[jaragua]], [[hlts-construtora]], lançamento, entrega Dez/2028. **11 leads** (era 9). Alta cobertura.
- [[place-arbi]] — [[shopping-park]], lançamento, entrega Jun/2027. **2 leads** (alta quentura).
- [[garden-sul]] — [[jardim-sul]], lançamento, entrega Set/2028, R$294.9k–367.9k. **3 leads** (0% engajamento).

**Captado mas dados incompletos:**
- [[bris]] — captado via Instagram, 1 lead (arquivado). Bairro/construtora a confirmar.

### Projetos

_(ainda nenhum em `_entities/`; projetos vivem em `_projects/`)_

## Estatísticas

- **Total de perfis canônicos:** 40 (26 pessoas-cliente + 1 broker + 1 org + 7 lugares + 5 propriedades).
- **Leads canônicos do Reno:** 26 (eram 21 pré-Lote 5).
- **Backlinks novos no grafo (Lote 5):** ~22 (5 perfis cliente + 1 imóvel + 3 bairros + atualizações).
- **Cobertura por imóvel:** Union Vereda 11, Union Vista 9, Garden Sul 3, Place+Arbi 2, Bris 1.
- **Cobertura por bairro:** Jaraguá 11, Grand Ville 9, Jardim Sul 3, Shopping Park 2, Martins/Jardim Patrícia/Roosevelt 1 cada (Andreia).

## Insights emergentes (consolidado Lotes 3–5)

### Funil comercial
- **HLTS Construtora concentra 20/26 leads canônicos** — parceria mais relevante. Vale relacionamento dedicado.
- **3 conversões em vista no funil de curto prazo:**
  1. [[pedro]] — visita confirmada 01/05 18h (Union Vereda)
  2. [[amanda]] — alvo de visita iminente (Place+Arbi, "simplesmente perfeito", precisa marido)
  3. [[guilherme-mendes]] — convidado para Fama (Union Vereda)
- **Perfis emergentes diferenciados:**
  - Investidor: [[eliseu]] (tese valorização)
  - MCMV-dependente: [[marcio-oliveira-juliao]] (bloqueio se não enquadrar)
  - Multi-imóvel exigente: [[andreia-carvalho]] (2 vagas, planta grande, 3 bairros aceitos)

### Operacional
- **Bloqueios infra ativos:**
  - WhatsApp shutdown bloqueando [[levi-santos]] (resgate step 3 falhou em 2026-05-01)
  - Plantas baixas faltando no MinIO: Place+Arbi, Union Vereda completo
  - Bug duplicação CRM: [[carmen-vicente-santos]] tem nome duplicado; [[larissa-martins]] tem 4 cópias da mesma anotação
- **Validações HLTS pendentes:**
  - Enquadramento MCMV (gatilho [[marcio-oliveira-juliao]] e cobertura Union Vereda)
  - Plano investidor 10% entrada (gatilho [[eliseu]])
  - Configuração futura com 2 vagas (caminho Andreia)

### Marketing/Aquisição
- **Anomalia de funil — "leads silentes":** Garden Sul (3/3) e parte Union Vista (Bruno/Wueverton/Edson/Santiago) têm taxa de resposta zero. Padrão recorrente em campanhas Facebook Ads sugere mismatch criativo/produto. Vale revisão antes de aumentar verba.
- **Place+Arbi tem cobertura pequena (2 leads) mas qualidade altíssima** — entender o porquê e replicar.
- **Bris** veio do **Instagram** (único do funil) — único exemplo de canal alternativo no vault, vale rastrear se traz perfil de cliente diferenciado.
- **Gap de portfólio nos bairros nobres:** Martins, Jardim Patrícia, Roosevelt têm demanda canônica (Andreia) mas Fama não atende — concorrentes (Martinsville, MRV, Opção, Zurique) capturam.

## Próximas entidades a criar (Lote 6+)

- Outros 5+ clientes do Reno com atividade baixa-média (verificar query atualizada)
- Construtoras concorrentes citadas: MRV, Opção, construtora do Zurique, construtora do Martinsville, construtora do Biti
- Empreendimentos concorrentes: [[zurique]], Martinsville, Biti
- Bairros adicionais: [[zona-leste]] (Eduarda), [[regiao-central]] (Silva Porto)
- Hub `_entities/index.md` segue como espelho da curadoria; manter sempre atualizado.

## Decisões de manutenção

- Manter `status: archived` para [[larissa-martins]] (telefone de teste). Vetorização desligada por padrão para arquivados.
- Confidence < 0.7 indica perfil com dados incompletos — atualizar quando houver mais sinal.
