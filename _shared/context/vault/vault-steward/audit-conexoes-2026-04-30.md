---
type: shared-context
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - vault-steward
  - auditoria
  - wikilinks
  - conectividade
  - topologia
topic: vault
title: Auditoria de conexões do vault — diagnóstico FAM-15
---
## TL;DR

O vault tem 174 notas mas funciona como **arquivo plano**, não grafo. Aproximadamente 8% das notas têm qualquer wikilink. Os 92% restantes — incluindo 100% dos entity-profiles e journals gerados pelo MCP — saem com `wikilinks: []` e `backlinks_count: 0`. Três causas raiz identificadas; nenhuma resolvível só com cleanup mecânico.

## Métrica observada

Amostragem em 30/04/2026:

| Categoria | Total | Com wikilinks | % conectados |
|---|---|---|---|
| Notas totais | 174 | ~15 | ~8% |
| `entity-profile` (88) | 88 | 0 | 0% |
| `journal` (33) | 33 | 0 | 0% |
| `context` (30) | 30 | ~7 | ~23% |
| `agent-readme` / `moc` / `agents-map` | 7 | 7 | 100% |

Notas que têm wikilinks são quase exclusivamente índices que apontam para seus próprios filhos (`_agents/README.md`, `_shared/context/credito-imobiliario/index.md`, `_shared/context/FAMA.md`, `README.md` raiz). **Nenhuma nota de domínio (cliente, atendimento, decisão) participa do grafo.**

## Causas raiz

### 1. MCP escreve notas sem wikilinks

`upsert_lead_timeline` (Plan 2) e `write_note` no fluxo do Reno produzem entity-profiles e journals com `wikilinks: []` em 100% dos casos amostrados. Exemplos verificados:

- `_agents/reno/atendimentos/10659-davi-maia.md` — wikilinks: `[]`
- `_agents/reno/atendimentos/10660-giovanna.md` — wikilinks: `[]`
- `_agents/reno/atendimentos/10657-lead-garden-sul.md` — wikilinks: `[]`
- `_agents/reno/atendimentos/10570-553496511323.md` — wikilinks: `[]`
- `_agents/reno/atendimentos/10998-carmen-vicente-santos-vicente-santos.md` — wikilinks: `[]`

O conteúdo cita "Garden Sul", "broker_id=35", "Facebook Ads", "Jardim Sul" como texto puro — nunca como `[[Garden Sul]]`.

### 2. Não existem notas-âncora (hubs) para os conectores naturais

O domínio de atendimento gira em torno de quatro classes de entidade que aparecem dezenas de vezes como texto e não têm nota canônica:

| Conector | Frequência observada | Nota canônica? |
|---|---|---|
| Empreendimentos (Garden Sul, Union Vista, Grand Ville) | dezenas de menções | ❌ não existe |
| Brokers (broker_id=35 = Reno; outros) | aparece em todo entity-profile do Reno | ❌ não existe |
| Fontes/origens (Facebook Ads, WhatsApp Garden Sul) | em todo lead | ❌ não existe |
| Bairros/regiões (Jardim Sul, Zona Sul) | em maior parte dos atendimentos | ❌ não existe |

Sem nota canônica, não há para onde apontar. Mesmo se MCP gerasse `[[Garden Sul]]`, viraria link quebrado.

### 3. Context notes não cross-referenciam

`_agents/reno/context/playbook-atendimento.md` (3.9KB, ricamente estruturado) tem `wikilinks: []`. Não aponta para `[[fama-produtos]]` (mesmo agente, tema irmão) nem para `[[credito-imobiliario]]` (referenciado no texto). Mesmo padrão em `fama-produtos.md`. Os únicos índices com cross-link são `credito-imobiliario/*` e `_shared/context/fama/*` (curados pelo Renato).

Resultado: até as notas de conhecimento curado vivem em silos, e o atendimento não tem ponte de volta para o playbook que ele deveria estar aplicando.

## Implicações operacionais

- **Buscas semânticas falham.** Procurar "todos os clientes do Garden Sul" exige grep textual, não navegação no grafo.
- **Onboarding de novo agente** não consegue partir de uma entidade e descer nos pares relacionados — vai cair em busca textual.
- **Reaproveitamento de aprendizado é nulo.** Nenhum atendimento aponta para o playbook usado, então quando o playbook é atualizado não há rastro do que foi praticado sob a versão anterior.
- **Indicador "graph view" do Obsidian** mostra arquipélago, não rede.

## Caminhos possíveis (decisão do CEO)

### A) Hubs + retrofit manual

Vault-steward cria notas canônicas para empreendimentos (`_shared/context/empreendimentos/garden-sul.md` etc.), brokers (`_shared/context/brokers/35-reno.md`), fontes e regiões. Depois faz uma passada retroativa adicionando wikilinks nos atendimentos existentes.

- ✅ Resolve o problema imediatamente para o estoque atual.
- ❌ Trabalho de fôlego (~88 entity-profiles + 33 journals para retrofit).
- ❌ Próximas escritas do MCP continuam sem wikilinks — problema volta.

### B) MCP passa a emitir wikilinks

Plan 2 e ferramentas do Reno geram automaticamente `[[Garden Sul]]`, `[[broker-35-reno]]`, `[[Facebook Ads]]` quando preenchem entity-profile/journal.

- ✅ Resolve o fluxo permanente; toda nota nova nasce no grafo.
- ❌ Requer mudança de código no MCP (escopo do CTO ou do dono do plugin).
- ❌ Sozinho não resolve estoque atual.
- ❌ Sem (A), os links apontam para vazio.

### C) Combinação A + B (recomendado)

Vault-steward cria os hubs e faz uma passada de retrofit; em paralelo, abrir issue técnica para o dono do MCP `obsidian` adicionar geração de wikilinks no `upsert_lead_timeline`. Hubs primeiro, retrofit depois, MCP por último.

- ✅ Resolve estoque atual e fluxo futuro.
- ✅ Proposta executável em fases.
- ❌ Maior custo total, distribuído entre vault-steward e CTO/plugin owner.

### D) Apenas indexar, não conectar

Manter status quo nos atendimentos e investir só em MOCs/índices melhores. Aceitar que o vault é arquivo, não grafo, e usar busca textual para navegar.

- ✅ Custo zero adicional.
- ❌ Não resolve o problema reportado pelo CEO.
- ❌ Reduz o vault a algo que o CRM já faz.

## Recomendação

Caminho **C**, em ordem:

1. Vault-steward propõe taxonomia de hubs (empreendimentos, brokers, fontes, regiões) ao CEO em decisão.
2. Após aprovação, criar hubs (~10–15 notas) com perfil mínimo de cada entidade.
3. Retrofit em batch: para cada `entity-profile` em `atendimentos/`, extrair menções a empreendimento/broker/fonte/região e adicionar wikilinks no corpo + frontmatter.
4. Abrir issue técnica para o owner do plugin `mcp-fama_obsidian` (provavelmente CTO quando existir; até lá, escalar ao CEO) adicionar geração de wikilinks em `upsert_lead_timeline` e tools relacionadas.
5. Estabelecer KPI: % de notas com pelo menos 1 wikilink — meta 80%+ em 3 meses.

## Notas

- Esta auditoria não inclui FAM-8/FAM-9 (path discipline em `lead/` e `atendimentos/`). Resolver path antes de retrofit reduz trabalho duplicado.
- A migração dos entity-profiles para fora de `atendimentos/` (FAM-9) deve preceder o retrofit — o caminho final precisa estar estável antes de criar links permanentes.
