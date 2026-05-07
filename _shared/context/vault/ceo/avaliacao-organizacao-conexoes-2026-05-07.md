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
title: >-
  Avaliação CEO da organização e conexões do vault — 2026-05-07 (rev.
  pós-implementação)
---
## TL;DR

O vault está **bem organizado por fora e em transição na conectividade**. Estrutura, schema e ownership amadureceram (306 notas, 12 MOCs, decisões com rationale, ownership enforced pelo MCP). Até hoje cedo, o vault operava como **arquipélago**: ~92% das notas sem wikilink. Hoje à tarde (2026-05-07T20:48Z) o Coder/CTO entregou o pacote técnico que ataca a causa primária — `EntityResolver`, auto-wikilinks em 4 workflows, auto-stub de hubs, normalização de tags e tool `upsert_hub`. O grafo agora **pode** se formar, mas o **estoque legado de ~280 notas continua desconectado**. Verificação direta: nota mais recente do Reno (`atendimentos/10930-cassio-coimbra.md`, mtime 19:44Z) ainda saiu com `wikilinks: []` — ela é pré-implementação.

A pergunta do conselho deixa de ser "como conectar?" e passa a ser "executar o retrofit do estoque e decidir quem é o dono do enforcement contínuo".

## O que está bom (manter)

1. **Schema canônico claro** (`_shared/context/vault/ceo/schema.md`): types fechados, paths previsíveis, frontmatter obrigatório, tags em kebab-case.
2. **Ownership enforcement no MCP**: `OWNERSHIP_VIOLATION` impede um agente de pisar no território de outro. Disciplina por construção.
3. **Decisões com rationale**: `_agents/ceo/decisions.md` (29 KB) é exemplar — toda decisão lista alternativas descartadas e motivação. CMO/Coder/UX seguem padrão similar.
4. **Doutrina de duas camadas (PARA local + vault)**: separa privado/efêmero do institucional/durável. Implementada em AGENTS.md/HEARTBEAT.md/SOUL.md/TOOLS.md.
5. **Contextos curados**: `_shared/context/credito-imobiliario/*` e `_shared/context/fama/*` são bem feitos — ricos, com index, com cross-link interno.
6. **Camada técnica de conectividade (NOVO 2026-05-07)**: `EntityResolver` ID→path, auto-wikilinks em `upsert_lead_timeline`/`upsert_broker_profile`/`upsert_entity_profile`/`append_lead_interaction`, auto-stub de hubs e `upsert_hub`. 333/333 testes passando.

## O que mudou hoje (versus avaliação inicial)

| Recomendação inicial | Status agora |
|---|---|
| MCP passa a emitir wikilinks | ✅ Implementado (4 workflows + carry-over via `priorFm`) |
| Hubs canônicos antes de retrofit | ✅ Tool `upsert_hub` + auto-stub (`type: hub, status: stub`) |
| Tag drift (kebab-case + sem timestamps) | ✅ `src/vault/tags.ts` normaliza ASCII-fold/kebab/strip-timestamp; `tag_warnings` no response sem rejeitar |
| Retrofit em batch das ~120 notas legadas | ⏳ Pendente — exige rodada de upsert orientada |
| Decisão sobre VaultSteward | ⏳ Pendente — agente continua em `error` desde 2026-05-06 |
| KPI de conectividade (80% em 90 dias) | ⏳ Pendente — sem dono enquanto VaultSteward inerte |

## O que está quebrado (decidir agora)

### 1. Estoque legado continua órfão

A camada técnica está pronta, mas as ~280 notas pré-fix permanecem com `wikilinks: []`. Sem retrofit, o grafo cresce só na borda — toda nota nova conecta, toda nota antiga continua isolada. O conselho precisa aprovar uma rodada de retrofit. Custo estimado: 1–2 sprints, ~120 atendimentos ativos + ~60 brokers/contextos prioritários. Pode ser script (re-upsert orientado por ID) ou job único do Reno + Coder.

### 2. Hubs reais ainda não existem

`_shared/hubs/` está **vazio** hoje. O `ensureHubStub` cria stubs **on-demand** quando alguém escreve uma nota que linka para o hub. Mas o estoque legado não vai disparar isso até passar pelo retrofit. Para os hubs principais (Garden Sul, Union Vista, Union Vereda, Grand Ville, Place Arbi, Facebook Ads, WhatsApp, FamaChat, Jaraguá, Zona Sul), faz sentido **semear** com `upsert_hub` antes do retrofit, para que os auto-wikilinks já apontem para nota canônica em vez de stub.

### 3. VaultSteward inerte

O agente desenhado para enforçar schema, fazer retrofit e propor hubs continua em `error` com `budgetMonthlyCents: 0` desde 2026-05-06. As 3 decisões pendentes (recriar / absorver em outro agente / aposentar) seguem sem resposta do conselho. Sem dono, o KPI de conectividade não tem responsável e a normalização de tags vira reativa.

## Implicações para o negócio

- **Buscas semânticas começam a funcionar para notas novas.** "Todos os clientes do Garden Sul" passa a sair via backlinks assim que `Garden Sul` for criado como hub e o retrofit rodar.
- **Onboarding de novos agentes melhora conforme o grafo se preenche.** Hoje ainda cai em grep textual.
- **O custo de não fazer retrofit cresce com cada nova hire.** CTO, CFO, mais brokers — cada agente novo é mais um produtor de notas. Sem o estoque conectado, o vault parece um grafo "borda nova / núcleo isolado".
- **Indicador "graph view" do Obsidian** vai mudar visualmente em ~2 semanas se retrofit rodar; sem retrofit, continua arquipélago.

## Caminho recomendado (revisado)

1. **Decidir destino do VaultSteward.** Sem dono, qualquer plano de retrofit/KPI fica órfão. Recriar com config corrigida é o caminho de menor fricção dado o investimento já feito no agente. Pedido aberto na decisão de 2026-05-06 — escalar ao conselho neste heartbeat.
2. **Semear hubs principais com `upsert_hub`.** ~10–15 notas: empreendimentos (Garden Sul, Union Vista, Union Vereda, Grand Ville, Place Arbi, Shopping Park), fontes (Facebook Ads, WhatsApp, FamaChat), regiões (Jaraguá, Zona Sul, Zona Oeste, Centro). Pode ser executado pelo Coder ou pelo VaultSteward (após desbloqueio).
3. **Retrofit em batch.** Para cada `entity-profile` em `atendimentos/` e `brokers/`, re-disparar upsert via tool nova com `client_id`/`broker_id`/`empreendimento_id` extraídos do frontmatter — `priorFm` carry-over preserva conteúdo, auto-wikilinks preenche o vínculo. Estimar 1–2 sprints.
4. **KPI de conectividade.** Meta: 80%+ das notas com pelo menos 1 wikilink em 90 dias. Hoje rodamos em ~8%. Owner: VaultSteward (após desbloqueio) ou substituto definido em (1).
5. **Patrol contínuo de schema.** VaultSteward (ou equivalente) roda auditoria semanal de tags fora do kebab-case e backlinks ausentes em notas novas. `tag_warnings` do MCP serve como sinal.

## O que descarto

- **Apenas confiar no MCP novo e não fazer retrofit.** O grafo só conectaria pela borda; o núcleo de 280 notas continuaria isolado. O conselho perceberia o gap em qualquer graph view.
- **Resetar o vault e começar de novo.** Já temos schema, decisões, contextos curados de qualidade — o problema é conectividade, não conteúdo.
- **Adiar a decisão sobre VaultSteward até depois do retrofit.** Sem dono, retrofit vira projeto único sem manutenção; estoque volta a degradar.
