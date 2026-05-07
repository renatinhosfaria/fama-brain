---
type: shared-context
owner: ceo
created: '2026-05-07'
updated: '2026-05-07'
tags:
  - vault
  - avaliacao
  - organizacao
  - conectividade
  - ceo
topic: vault
title: Avaliação CEO da organização e conexões do vault — 2026-05-07
---
## TL;DR

O vault está **bem organizado por fora e desconectado por dentro**. A estrutura de pastas, o schema de frontmatter e a doutrina de ownership amadureceram e funcionam: 305 notas, 12 MOCs, decisões com rationale, ownership enforced pelo MCP. Mas o vault opera como **arquipélago**, não como grafo: ~92% das notas não têm wikilink algum. O segundo cérebro guarda informação, mas não conecta — e isso reduz o vault a um arquivo organizado em vez do grafo institucional que o conselho pediu.

A causa primária não é descuido dos agentes. São três falhas estruturais que se reforçam, e o vault-steward — que era o ator natural para resolvê-las — está inerte desde 2026-05-06.

## O que está bom (manter)

1. **Schema canônico claro** (`_shared/context/vault/ceo/schema.md`): types fechados, paths previsíveis, frontmatter obrigatório, regra de tags. Foi escrito pelo CEO em 2026-04-30 e aplicado.
2. **Ownership enforcement no MCP**: `OWNERSHIP_VIOLATION` impede um agente de pisar no território de outro. Disciplina por construção, não por convenção.
3. **Decisões com rationale**: `_agents/ceo/decisions.md` (29 KB, ~20 entradas) é exemplar — toda decisão lista alternativas descartadas, motivação e como aplicar. CMO/Coder/UX seguem padrão similar.
4. **Doutrina de duas camadas (PARA local + vault)**: separa o que é privado/efêmero do que é institucional/durável. Implementada em AGENTS.md/HEARTBEAT.md/SOUL.md/TOOLS.md.
5. **MOCs por área** (`_curated`, `_decisions`, `_entities`, `_hubs`, `_journal`, `_meta`, `_projects`, `_runbooks`): a casca de navegação existe.
6. **Contextos curados**: `_shared/context/credito-imobiliario/*` e `_shared/context/fama/*` são bem feitos — ricos, com index, com cross-link interno.

## O que está quebrado (decidir)

### 1. Conectividade — vault é arquipélago, não grafo

A auditoria do vault-steward de 30/04 já mediu: ~92% das notas com 0 wikilinks. Confirmei hoje em amostragem direta — a nota mais recente do Reno (`atendimentos/10930-cassio-coimbra.md`, atualizada 2026-05-07) sai com `wikilinks: []` e cita "Union Vereda", "Jaraguá", "Facebook Ads", "broker_id=35" como **texto puro**, nunca como `[[Union Vereda]]`. Em 7 dias, o retrofit não começou e o fluxo MCP continua produzindo notas órfãs.

**Três causas raiz, todas estruturais:**

- **MCP escreve sem wikilinks.** `upsert_lead_timeline` (Plan 2) e `write_note` no fluxo do Reno produzem `wikilinks: []` em 100% dos casos. Cada novo atendimento entra no vault já desconectado.
- **Hubs canônicos não existem.** Empreendimentos (Garden Sul, Union Vista, Union Vereda, Grand Ville), brokers (broker 35 = Reno), fontes (Facebook Ads, WhatsApp), bairros (Jaraguá, Garden Sul, Zona Sul) são citados dezenas de vezes sem nota canônica para apontar. Mesmo se o MCP gerasse `[[Garden Sul]]`, viraria link quebrado.
- **Context notes em silos.** `playbook-atendimento.md` não aponta para `[[fama-produtos]]` nem para `[[credito-imobiliario]]` mesmo citando-os no corpo. As ilhas de conhecimento curado não falam entre si.

### 2. VaultSteward inerte

O agente desenhado para enforçar o schema, fazer retrofit de wikilinks e propor hubs está em `error` com `budgetMonthlyCents: 0` desde 2026-05-06. A cascata FAM-83→FAM-287 cancelei em massa, mas a função de "bibliotecário" da empresa não tem dono enquanto o conselho não decidir entre (a) recriar com nova config, (b) absorver em outro agente, ou (c) aposentar. Sem dono, o schema vai driftando e o problema de conectividade não se resolve sozinho.

### 3. Drift residual no schema

Tags com underscore + timestamp ainda aparecem em `_agents/reno/atendimentos/` (ex.: `reno_first_contact_uncertain17_20260427_3min`), violando kebab-case. FAM-8/9/10 saneamento estrutural ficou parcialmente concluído. Sem patrol contínuo, isso piora.

## Implicações para o negócio

- **Buscas semânticas falham.** "Todos os clientes do Garden Sul" hoje só sai por grep textual, não por backlinks. Onboarding de agente novo cai em busca textual em vez de navegar entidades.
- **Reaproveitamento de aprendizado é nulo.** Nenhum atendimento aponta para o playbook que ele aplicou. Quando o playbook for atualizado, não há rastro do que foi praticado sob a versão anterior — perdemos curva de aprendizado.
- **Indicador "graph view" do Obsidian** mostra arquipélago. Para o conselho, sinaliza que o vault virou arquivo, não rede.
- **O custo de não resolver isso cresce com cada hire.** CTO, CFO, mais brokers — quanto mais agentes escrevendo no vault, maior o estoque de notas órfãs.

## Caminho recomendado

A auditoria do vault-steward propôs caminho **C** (hubs + retrofit + MCP gera wikilinks). Mantenho a recomendação, mas com pré-condição clara:

1. **Decidir o destino do VaultSteward primeiro.** Sem dono, qualquer plano de retrofit fica órfão. O conselho precisa escolher entre recriar/absorver/aposentar — pedido aberto na decisão de 2026-05-06.
2. **Hubs antes de retrofit.** Vault-steward (ou substituto) cria notas canônicas mínimas para empreendimentos, brokers, fontes, regiões (~10–15 notas).
3. **Retrofit em batch.** Para cada `entity-profile` em `atendimentos/`/`lead/`, extrair menções a hub e adicionar wikilinks. ~120 notas, executável em 1–2 sprints.
4. **MCP passa a emitir wikilinks.** Issue técnica para o dono do plugin `mcp-fama_obsidian` (Coder/CTO) adicionar geração de `[[entity]]` em `upsert_lead_timeline` e tools relacionadas. Sem isso, o estoque volta a desconectar a cada atendimento novo.
5. **KPI de conectividade.** Meta: 80%+ das notas com pelo menos 1 wikilink em 90 dias. Hoje rodamos em ~8%.

## O que descarto

- **Apenas indexar, não conectar.** Reduz o vault a algo que o CRM já faz. Não responde a pergunta do conselho.
- **Resetar o vault e começar de novo.** Já temos schema, decisões, contextos curados de qualidade. Reset destruiria o trabalho válido junto com o ruim.
- **Fazer retrofit sem corrigir o MCP.** Resolve o estoque mas o problema volta a cada nota nova. Custo de manutenção fica alto pra sempre.
