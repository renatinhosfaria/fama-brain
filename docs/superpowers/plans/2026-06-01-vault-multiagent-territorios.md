# Vault Multiagent Por Territorios Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Evoluir o vault `C:\fama-brain` para multiagent por territorios, com Marketing como primeiro agente novo e Reno isolado por contrato.

**Architecture:** O vault continua organizado por tipo de conhecimento. Agentes passam a ser representados por `agent_id`, hub proprio, journal proprio, projetos proprios, runbooks proprios, decisoes nomeadas por agente e ownership registrado em `_shared/context/AGENTS.md`.

**Tech Stack:** Obsidian Markdown vault, YAML frontmatter, wikilinks, Git, PowerShell, ripgrep (`rg`).

---

## File Structure

Modify:

- `README.md` - portal raiz, topologia e regras universais para agentes.
- `_shared/context/AGENTS.md` - cadastro formal de agentes, ownership e niveis de escrita.
- `_meta/schema.md` - convencao `{agent_id}` e destinos multiagent.
- `_meta/retrieval-policy.md` - prioridade de retrieval considerando agente responsavel.
- `_meta/golden-queries.md` - queries de validacao para multiagent.
- `_hubs/index.md` - indice inclui o hub de Marketing.
- `_hubs/README.md` - regras deixam de ser apenas do Reno.
- `_journal/README.md` - explica journals por agente.
- `_projects/README.md` - explica projetos por agente.
- `_runbooks/README.md` - explica runbooks por agente.
- `_shared/context/README.md` - explica contexto compartilhado e contexto tematico de Marketing.

Create:

- `_hubs/marketing-hub.md` - porta de entrada do agente de Marketing.
- `_journal/marketing/README.md` - regras do journal de Marketing.
- `_projects/marketing/README.md` - regras de projetos e campanhas de Marketing.
- `_shared/context/marketing/README.md` - contexto duravel de Marketing.
- `_runbooks/marketing-vault-operacao.md` - runbook principal de escrita e retrieval do Marketing.

Do not create:

- `_agents/`
- `_agents/marketing/`
- `_agents/reno/`

---

### Task 1: Update Root Vault Portal

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Confirm clean starting state**

Run:

```powershell
git status --short
```

Expected: no output.

- [ ] **Step 2: Confirm the legacy namespace is absent**

Run:

```powershell
if (Test-Path -LiteralPath '_agents') { 'FOUND_AGENTS_DIR' } else { 'NO_ACTIVE_AGENTS_DIR' }
```

Expected:

```text
NO_ACTIVE_AGENTS_DIR
```

- [ ] **Step 3: Replace the root positioning text**

In `README.md`, replace the two paragraphs immediately after `# fama-brain` with:

```markdown
Vault Obsidian que serve como **segundo cerebro operacional multiagent** e memoria de longo prazo da Fama Negocios Imobiliarios.

A arquitetura atual e **multiagent por territorios**: o vault continua organizado por tipo de conhecimento, mas cada agente tem `agent_id`, hub proprio, journal proprio, projetos proprios, runbooks proprios e ownership explicito. O namespace legado `_agents/` permanece inativo.
```

- [ ] **Step 4: Rename the Reno-only entry section**

In `README.md`, change:

```markdown
## Comece aqui para o Reno

O Reno deve tratar este `README.md` como porta de entrada do vault quando precisar localizar informacao, decidir onde escrever ou confirmar a funcao de uma pasta.
```

to:

```markdown
## Comece aqui para qualquer agente

Todo agente deve tratar este `README.md` como porta de entrada do vault quando precisar localizar informacao, confirmar topologia, decidir onde escrever ou validar a funcao de uma pasta.
```

- [ ] **Step 5: Replace the default search order**

In `README.md`, replace the numbered list under `Ordem padrao de busca:` with:

```markdown
1. Consulte este portal quando a topologia estiver incerta.
2. Consulte [[_shared/context/AGENTS]] para confirmar `agent_id`, ownership e limites.
3. Consulte o hub do agente responsavel: [[reno-hub]] ou [[marketing-hub]].
4. Consulte `_meta/retrieval-policy.md` e [[schema]] quando houver duvida de tipo, confianca ou destino.
5. Consulte a pasta de conteudo correta: `_entities/`, `_journal/{agent_id}/`, `_decisions/`, `_runbooks/`, `_hubs/`, `_projects/{agent_id}/`, `_shared/context/` ou `_meta/`.
6. Antes de escrever, leia o `README.md` local da pasta de destino.
```

- [ ] **Step 6: Add Marketing to manual links and navigation**

In `README.md`, add these bullets to the manuals list after `[[ _journal/reno/README ]]` without the spaces shown here:

```markdown
- [[_journal/marketing/README|_journal/marketing/README]]
- [[_projects/marketing/README|_projects/marketing/README]]
- [[_shared/context/marketing/README|_shared/context/marketing/README]]
```

In the inbound navigation block, add:

```markdown
- [[_hubs/marketing-hub|_hubs/marketing-hub]]
- [[_journal/marketing/README|_journal/marketing/README]]
- [[_projects/marketing/README|_projects/marketing/README]]
- [[_shared/context/marketing/README|_shared/context/marketing/README]]
```

- [ ] **Step 7: Replace the conventions paragraph for Reno**

In `README.md`, replace the bullet and sub-bullets that begin with `Conteudo operacional do Reno fica organizado por tipo:` with:

```markdown
- Conteudo operacional de agente fica organizado por tipo e territorio:
  - eventos datados em `_journal/{agent_id}/`;
  - projetos, campanhas e iniciativas em `_projects/{agent_id}/`;
  - procedimentos em `_runbooks/{agent_id}-*.md`;
  - decisoes duraveis em `_decisions/YYYY-MM-DD-{agent_id}-{slug}.md`;
  - fatos duraveis sobre pessoas, imoveis e organizacoes em `_entities/`;
  - contexto tematico compartilhado em `_shared/context/{tema}/`.
```

- [ ] **Step 8: Verify root portal no longer says multiagent is future-only**

Run:

```powershell
rg -n "Reno-first|Multiagente fica como evolucao futura|Comece aqui para o Reno" README.md
```

Expected: no matches.

- [ ] **Step 9: Commit root portal update**

Run:

```powershell
git add -- README.md
git commit -m "docs: update vault portal for multiagent territories"
```

Expected: commit succeeds and mentions `README.md`.

---

### Task 2: Formalize Agent Registry And Ownership

**Files:**
- Modify: `_shared/context/AGENTS.md`

- [ ] **Step 1: Update frontmatter date**

In `_shared/context/AGENTS.md`, change:

```yaml
updated: '2026-05-13'
```

to:

```yaml
updated: '2026-06-01'
```

- [ ] **Step 2: Insert the agent registry after the scope legend**

After the two bullets under `**Legenda de escopos:**`, insert:

```markdown

## Registro de agentes

### `reno`

- **Nome:** Reno
- **Missao:** atuar como agente digital consultivo da Fama para primeiro atendimento, qualificacao, avancos comerciais e memoria operacional de leads elegiveis.
- **Hub:** [[reno-hub]]
- **Territorio primario:** `_journal/reno/**`, `_runbooks/reno-*.md`, `_hubs/reno-hub.md`, `_decisions/*-reno-*.md`.
- **Territorio controlado:** `_entities/**` quando houver fato duravel confirmado, fonte rastreavel, ownership correto e read-back via MCP.
- **Exige confirmacao do Renato:** schema, ownership, decisoes estrategicas, fatos sensiveis, conflito entre fontes, contexto institucional amplo e qualquer acao comercial de alto impacto.

### `marketing`

- **Nome:** Agente de Marketing
- **Missao:** planejar, registrar, analisar e melhorar aquisicao, campanhas, comunicacao, posicionamento e aprendizados de marketing da Fama.
- **Hub:** [[marketing-hub]]
- **Territorio primario:** `_journal/marketing/**`, `_projects/marketing/**`, `_runbooks/marketing-*.md`, `_hubs/marketing-hub.md`, `_shared/context/marketing/**`, `_decisions/*-marketing-*.md`.
- **Territorio controlado:** `_entities/**` quando houver fato duravel confirmado, fonte rastreavel, ownership correto e read-back via MCP.
- **Exige confirmacao do Renato:** schema, ownership, contexto institucional geral da Fama, promessas comerciais, fatos financeiros sensiveis, conflitos entre fontes, orcamento, decisoes estrategicas e mudancas estruturais.
```

- [ ] **Step 3: Replace the Reno-only autonomy heading**

Change this heading:

```markdown
## Autonomia do Reno em Opcao C
```

to:

```markdown
## Autonomia multiagent com guardrails
```

Then replace the two paragraphs below it with:

```markdown
A decisao [[2026-05-12-reno-vault-memoria-autonoma]] aprovou a autonomia do Reno com guardrails. A evolucao multiagent preserva esse principio e aplica o mesmo contrato ao Marketing e a futuros agentes: autonomia dentro do territorio primario, escrita controlada em memoria compartilhada e aprovacao explicita para schema, ownership e decisoes sensiveis.

CRM/FamaChat continua sendo a fonte operacional de verdade. O vault guarda memoria curada e contexto recuperavel. Em `_entities/**`, Renato permanece dono primario nesta fase; agentes podem registrar ou atualizar fatos duraveis confirmados quando houver fonte rastreavel, quando a escrita respeitar o ownership aplicado pelo MCP e quando houver read-back depois da escrita.
```

- [ ] **Step 4: Replace the ownership map**

Replace the fenced ownership block with:

````markdown
```
# Ownership map - vault Obsidian

# Governanca e meta
_shared/context/AGENTS.md                => renato
_meta/**                                 => renato

# Territorios primarios - Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary)
_shared/context/modelo-negocio/**        => renato (primary)
_shared/context/credito-imobiliario/**   => renato (primary)

# Territorios primarios - Reno
_journal/reno/**                         => reno (primary)
_runbooks/reno-*.md                      => reno (primary)
_hubs/reno-hub.md                        => reno (primary)
_decisions/reno-*.md                     => reno (primary)
_decisions/*-reno-*.md                   => reno (primary)

# Territorios primarios - Marketing
_journal/marketing/**                    => marketing (primary)
_projects/marketing/**                   => marketing (primary)
_runbooks/marketing-*.md                 => marketing (primary)
_hubs/marketing-hub.md                   => marketing (primary)
_shared/context/marketing/**             => marketing (primary)
_decisions/marketing-*.md                => marketing (primary)
_decisions/*-marketing-*.md              => marketing (primary)

# Entidades globais - memoria compartilhada controlada.
# Renato permanece dono primario; Reno e Marketing podem atualizar fatos duraveis confirmados sob guardrails, com fonte rastreavel, ownership correto e read-back via MCP.
_entities/**                             => renato (primary)

# Catch-all - paths sem dono explicito
**/*                                     => renato
```
````

- [ ] **Step 5: Verify registry and ownership are discoverable**

Run:

```powershell
rg -n "Registro de agentes|`marketing`|_journal/marketing|_projects/marketing|_shared/context/marketing|Autonomia multiagent" _shared\context\AGENTS.md
```

Expected: output includes each searched concept.

- [ ] **Step 6: Commit ownership update**

Run:

```powershell
git add -- _shared/context/AGENTS.md
git commit -m "docs: formalize multiagent ownership"
```

Expected: commit succeeds and mentions `_shared/context/AGENTS.md`.

---

### Task 3: Create Marketing Territory Documents

**Files:**
- Create: `_hubs/marketing-hub.md`
- Create: `_journal/marketing/README.md`
- Create: `_projects/marketing/README.md`
- Create: `_shared/context/marketing/README.md`
- Create: `_runbooks/marketing-vault-operacao.md`

- [ ] **Step 1: Create required directories**

Run:

```powershell
New-Item -ItemType Directory -Force -Path '_journal\marketing','_projects\marketing','_shared\context\marketing' | Out-Null
```

Expected: command succeeds with no output.

- [ ] **Step 2: Create `_hubs/marketing-hub.md`**

Create the file with:

```markdown
---
type: hub
scope: Fama Marketing
maintainer: marketing
schema_version: 1
status: active
created: '2026-06-01'
updated: '2026-06-01'
source: human-curated
tags: [marketing, fama, campanhas, aquisicao]
author_agent: marketing
owner: marketing
title: Marketing Hub
summary: Ponto de entrada do contexto curado e da documentacao operacional do agente de Marketing.
related:
  - '[[marketing-vault-operacao]]'
  - '[[_shared/context/AGENTS]]'
---
# Hub: Marketing

O agente de Marketing planeja, registra, analisa e melhora aquisicao, campanhas, comunicacao, posicionamento e aprendizados de marketing da Fama.

## Mapas principais

- [[marketing-vault-operacao]] - runbook principal para busca, escrita e governanca do Marketing no vault.
- [[_journal/marketing/README]] - regras para eventos datados de Marketing.
- [[_projects/marketing/README]] - regras para campanhas, experimentos e iniciativas de Marketing.
- [[_shared/context/marketing/README]] - contexto duravel e reutilizavel de Marketing.
- [[_shared/context/AGENTS]] - ownership e limites de escrita.
- [[schema]] - schema v1 do vault.
- [[retrieval-policy]] - politica de recuperacao e confianca.

## Areas de escrita

- Eventos datados: `_journal/marketing/`.
- Campanhas, experimentos e iniciativas: `_projects/marketing/`.
- Procedimentos: `_runbooks/marketing-*.md`.
- Decisoes aprovadas: `_decisions/*-marketing-*.md`.
- Contexto tematico de marketing: `_shared/context/marketing/`.
- Entidades compartilhadas: `_entities/`, apenas com fonte rastreavel e read-back.

## Guardrails

- Nao criar ou recriar `_agents/`.
- Nao editar territorio primario do Reno.
- Nao registrar decisao estrategica sem aprovacao explicita do Renato.
- Nao registrar promessa comercial, dado financeiro sensivel ou inferencia como fato duravel.
- Nao alterar schema, ownership ou contexto institucional geral da Fama sem confirmacao.

## Handoff

Marketing pode consultar notas do Reno e linkar fontes existentes. Quando um aprendizado comercial vier de atendimento, Marketing deve registrar a propria leitura em `_journal/marketing/` ou `_projects/marketing/`, sem editar `_journal/reno/`.
```

- [ ] **Step 3: Create `_journal/marketing/README.md`**

Create the file with:

```markdown
---
type: moc
owner: marketing
created: '2026-06-01'
updated: '2026-06-01'
tags: [marketing, journal, campanhas]
---
# `_journal/marketing/`

## Finalidade

`_journal/marketing/` guarda eventos datados do agente de Marketing: campanhas executadas, analises de criativos, auditorias de canal, reunioes, aprendizados de trafego, revisoes de calendario e observacoes de execucao.

## Quando buscar aqui

- Quando a pergunta envolver o que aconteceu em uma data de marketing.
- Quando for necessario reconstruir uma linha do tempo de campanha.
- Quando uma decisao ou aprendizado precisar de evidencia historica.
- Quando uma entidade tiver evento de marketing relacionado.

## Quando escrever aqui

- Quando o Marketing registrar campanha, auditoria, reuniao, rotina ou aprendizado datado.
- Quando a informacao ainda for episodica e nao estiver pronta para virar contexto duravel.
- Quando uma acao de marketing gerar evidencia operacional.

## Regras para o Marketing

- Deve nomear arquivos como `YYYY-MM-DD-{slug}.md`.
- Deve citar data absoluta no corpo da nota.
- Deve linkar campanhas, entidades, projetos e fontes existentes quando houver.
- Deve registrar apenas o evento aqui; fatos duraveis devem ser consolidados em `_shared/context/marketing/` ou `_entities/`.
- Deve marcar incerteza quando fonte, metrica, canal, publico ou origem nao forem confiaveis.
- Nao deve criar decisao em journal; decisao aprovada pertence a `_decisions/`.
- Nao deve alterar `_journal/reno/`.

## Ver tambem

- [[marketing-vault-operacao]]
- [[marketing-hub]]
- [[_journal/README]]
- [[_shared/context/AGENTS]]
```

- [ ] **Step 4: Create `_projects/marketing/README.md`**

Create the file with:

```markdown
---
type: project-readme
owner: marketing
created: '2026-06-01'
updated: '2026-06-01'
tags: [marketing, projetos, campanhas]
---
# `_projects/marketing/`

## Finalidade

`_projects/marketing/` guarda campanhas, experimentos, calendarios editoriais, funis, lancamentos e iniciativas em andamento do agente de Marketing.

## Quando buscar aqui

- Quando a pergunta envolver uma campanha ou iniciativa ativa.
- Quando for necessario entender objetivo, publico, oferta, canal, etapa ou resultado de uma acao de marketing.
- Quando contexto operacional estiver organizado por campanha ou experimento.

## Quando escrever aqui

- Quando houver nova campanha, experimento, calendario ou iniciativa de marketing.
- Quando uma iniciativa ativa precisar de briefing, plano, historico, hipotese, resultado ou proxima acao.
- Quando a nota nao for evento datado, decisao, runbook, hub, entidade, meta ou contexto duravel.

## Regras para o Marketing

- Deve separar campanha ativa de historico arquivado quando essa estrutura existir.
- Deve linkar projetos a decisoes, runbooks, entidades e contexto relevante.
- Deve manter documentos de projeto focados em execucao e aprendizado.
- Nao deve registrar atendimento individual como projeto.
- Nao deve usar projeto para substituir contexto duravel de `_shared/context/marketing/`.
- Deve pedir confirmacao antes de arquivar, renomear ou reestruturar iniciativa importante.

## Ver tambem

- [[marketing-vault-operacao]]
- [[marketing-hub]]
- [[_projects/README]]
- [[_shared/context/marketing/README]]
```

- [ ] **Step 5: Create `_shared/context/marketing/README.md`**

Create the file with:

```markdown
---
type: moc
owner: marketing
created: '2026-06-01'
updated: '2026-06-01'
tags: [marketing, contexto, fama]
---
# `_shared/context/marketing/`

## Finalidade

`_shared/context/marketing/` guarda contexto duravel e reutilizavel de marketing: posicionamento, tom de voz, personas, canais, ofertas, provas sociais, repertorio criativo, aprendizados consolidados e principios de comunicacao.

## Quando buscar aqui

- Quando a pergunta envolver posicionamento, mensagem, oferta, publico, canal ou repertorio de campanha.
- Quando um projeto de marketing precisar de contexto reutilizavel.
- Quando um aprendizado deixou de ser apenas evento datado e passou a orientar proximas campanhas.

## Quando escrever aqui

- Quando houver aprendizado duravel confirmado por fonte rastreavel.
- Quando uma orientacao de comunicacao puder ser reutilizada em varios projetos.
- Quando uma campanha gerar principio, objecao, prova social ou insight estavel.

## Regras para o Marketing

- Deve buscar contexto existente antes de criar novo arquivo tematico.
- Deve separar fato, inferencia e hipotese.
- Deve preservar links para campanhas, journals, entidades e decisoes que deram origem ao aprendizado.
- Deve pedir confirmacao antes de alterar contexto institucional geral da Fama fora de `_shared/context/marketing/`.
- Nao deve transformar resultado isolado de campanha em regra geral sem evidencia suficiente.

## Ver tambem

- [[marketing-vault-operacao]]
- [[marketing-hub]]
- [[_shared/context/README]]
- [[_shared/context/AGENTS]]
- [[schema]]
```

- [ ] **Step 6: Create `_runbooks/marketing-vault-operacao.md`**

Create the file with:

```markdown
---
type: runbook
owner: marketing
created: '2026-06-01'
updated: '2026-06-01'
tags: [marketing, vault, memoria, operacao]
schema_version: 1
status: active
source: human-curated
procedure_owner: renato
trigger: duvida ou operacao do Marketing sobre busca, criacao, atualizacao ou governanca de documentos no vault
---
# Runbook: Operacao do vault pelo Marketing

## Objetivo

Este runbook orienta o agente de Marketing a buscar, criar, atualizar ou evitar documentos no `fama-brain` sem duplicar memoria, invadir territorio de outro agente ou transformar inferencia de campanha em fato duravel.

## Regra principal

Marketing deve buscar antes de criar, escrever primeiro no proprio territorio, usar memoria compartilhada com fonte rastreavel e pedir confirmacao antes de alterar decisoes, ownership, schema, contexto institucional amplo, orcamento ou fatos sensiveis.

## Ordem padrao de busca

1. Consultar [[README]] quando a topologia estiver incerta.
2. Consultar [[_shared/context/AGENTS]] para confirmar ownership e limites.
3. Consultar [[marketing-hub]] para navegar pelo territorio de Marketing.
4. Consultar [[retrieval-policy]] e [[schema]] quando houver duvida de tipo, confianca ou destino.
5. Buscar em `_projects/marketing/` quando a pergunta envolver campanha, calendario, funil, experimento ou iniciativa.
6. Buscar em `_journal/marketing/` quando a pergunta envolver evento datado ou historico de execucao.
7. Buscar em `_shared/context/marketing/` quando a pergunta envolver contexto duravel de marketing.
8. Buscar em `_entities/` quando a pergunta envolver pessoa, empreendimento, organizacao ou entidade compartilhada.
9. Buscar em `_decisions/` quando a pergunta envolver regra aprovada, verba, posicionamento, oferta ou mudanca estrategica.

## Como decidir onde escrever

- Evento datado de Marketing: `_journal/marketing/`.
- Campanha, calendario, funil ou experimento: `_projects/marketing/`.
- Procedimento reutilizavel: `_runbooks/marketing-*.md`.
- Navegacao ou mapa do agente: `_hubs/marketing-hub.md`.
- Contexto duravel de marketing: `_shared/context/marketing/`.
- Fato duravel sobre entidade real: `_entities/`, apenas com fonte rastreavel e read-back.
- Decisao aprovada: `_decisions/YYYY-MM-DD-marketing-{slug}.md`.

## Handoff

Marketing pode consultar e linkar notas do Reno. Marketing nao deve editar `_journal/reno/`, `_runbooks/reno-*.md` ou `_hubs/reno-hub.md`. Se uma campanha depender de aprendizado do Reno, registrar a leitura no territorio de Marketing e linkar a fonte.

## Checklist antes de escrever

- O Marketing identificou o tipo de memoria?
- O Marketing buscou nota existente antes de criar?
- O destino pertence ao territorio de Marketing ou a memoria compartilhada controlada?
- A informacao tem fonte rastreavel?
- A nota tera frontmatter curto compativel com o vault?
- Os links Obsidian apontam para notas existentes?
- A escrita respeita [[_shared/context/AGENTS]]?
- A escrita nao altera schema, ownership ou decisao sem confirmacao?

## Checklist depois de escrever

- O arquivo ficou em kebab-case, sem acentos.
- O frontmatter tem `type`, `owner`, `created`, `updated` e `tags`.
- O corpo reintroduz o sujeito na primeira frase.
- A nota separa fato, inferencia e pendencia.
- A nota usa datas absolutas.
- Links internos apontam para notas existentes.
- Foi feito read-back via MCP quando a escrita passou pelo servidor.

## Ver tambem

- [[marketing-hub]]
- [[_journal/marketing/README]]
- [[_projects/marketing/README]]
- [[_shared/context/marketing/README]]
- [[_shared/context/AGENTS]]
- [[schema]]
- [[retrieval-policy]]
```

- [ ] **Step 7: Verify the new territory documents exist**

Run:

```powershell
$paths = @('_hubs\marketing-hub.md','_journal\marketing\README.md','_projects\marketing\README.md','_shared\context\marketing\README.md','_runbooks\marketing-vault-operacao.md'); $paths | ForEach-Object { [pscustomobject]@{Path=$_; Exists=(Test-Path -LiteralPath $_)} } | Format-Table -AutoSize
```

Expected: every row shows `True`.

- [ ] **Step 8: Commit Marketing territory documents**

Run:

```powershell
git add -- _hubs/marketing-hub.md _journal/marketing/README.md _projects/marketing/README.md _shared/context/marketing/README.md _runbooks/marketing-vault-operacao.md
git commit -m "docs: add marketing agent territory"
```

Expected: commit succeeds and creates the five files.

---

### Task 4: Update Local Indexes For Multiagent Navigation

**Files:**
- Modify: `_hubs/index.md`
- Modify: `_hubs/README.md`
- Modify: `_journal/README.md`
- Modify: `_projects/README.md`
- Modify: `_runbooks/README.md`
- Modify: `_shared/context/README.md`

- [ ] **Step 1: Update `_hubs/index.md`**

In `_hubs/index.md`, under `## Reno e operacao`, rename the heading to:

```markdown
## Agentes e operacao
```

Then add:

```markdown
- [[marketing-hub]] - mapa operacional do agente de Marketing.
```

- [ ] **Step 2: Update `_hubs/README.md`**

Replace the Reno-specific bullets in the "Quando buscar aqui", "Quando escrever aqui" and "Regras para o Reno" sections with this language:

```markdown
## Quando buscar aqui

- Quando um agente precisar descobrir quais notas pertencem a um assunto.
- Quando a pergunta for ampla e exigir mapa antes de detalhe.
- Quando precisar navegar por entidade, tema, tipo de nota ou operacao.
- Quando a duvida envolver o territorio de um agente como conjunto.

## Quando escrever aqui

- Quando um tema tiver notas suficientes para merecer mapa.
- Quando um hub ajudar a reduzir busca repetida.
- Quando uma entidade, tema, agente ou operacao precisar de indice curado.
- Quando um conjunto de notas precisar de micro-resumo com links.

## Regras para agentes

- Devem usar hubs como mapa, nao como deposito de conteudo duplicado.
- Devem linkar para notas existentes.
- Devem escrever micro-resumos de uma linha por link quando isso ajudar a navegacao.
- Devem manter [[reno-hub]] como hub canonico do Reno e [[marketing-hub]] como hub canonico do Marketing.
- Nao devem criar hub para assunto com uma unica nota clara.
- Nao devem substituir entidade, decisao, journal ou runbook por hub.
- Devem atualizar hub quando criarem nota importante relacionada ao assunto.
- Devem pedir confirmacao antes de criar hub que mude a topologia principal do vault.
```

Also add `[[marketing-hub]]` to `## Ver tambem`.

- [ ] **Step 3: Update `_journal/README.md`**

Replace the "Regras para o Reno" heading and bullets with:

```markdown
## Regras para agentes

- Devem usar data absoluta no nome e no corpo da nota.
- Devem escrever eventos no proprio territorio: `_journal/reno/` para Reno, `_journal/marketing/` para Marketing e `_journal/{agent_id}/` para agentes futuros.
- Devem linkar entidades mencionadas sempre que existirem.
- Devem promover fatos duraveis para `_entities/` quando forem confiaveis.
- Devem promover decisoes aprovadas para `_decisions/`.
- Nao devem usar journal como fonte canonica quando ja existir nota consolidada.
- Nao devem editar o journal primario de outro agente.
```

Add `[[ _journal/marketing/README ]]` to `## Ver tambem` without spaces.

- [ ] **Step 4: Update `_projects/README.md`**

Replace Reno-specific wording with agent-neutral wording:

```markdown
## Regras para agentes

- Devem separar projeto ativo de historico arquivado quando essa estrutura existir.
- Devem escrever projetos no proprio territorio quando o projeto pertencer a um agente: `_projects/marketing/` para Marketing e `_projects/{agent_id}/` para agentes futuros.
- Devem linkar projetos a entidades, decisoes, runbooks e contexto relevante.
- Devem manter documentos de projeto focados em entrega, operacao ou aprendizado.
- Nao devem registrar atendimento individual como projeto.
- Nao devem usar projeto para substituir contexto institucional de `_shared/context/`.
- Devem pedir confirmacao antes de arquivar, renomear ou reestruturar projeto relevante.
```

Add `[[ _projects/marketing/README ]]` to `## Ver tambem` without spaces.

- [ ] **Step 5: Update `_runbooks/README.md`**

Replace the first sentence under `## Finalidade` with:

```markdown
`_runbooks/` guarda procedimentos repetiveis, playbooks e manuais operacionais que orientam como agentes devem agir.
```

Replace the Reno-specific rules with:

```markdown
## Regras para agentes

- Devem consultar o runbook do proprio agente antes de criar ou atualizar documentos do vault quando houver duvida de destino.
- Devem escrever procedimentos como sequencias verificaveis de decisao ou acao.
- Devem nomear runbooks por agente quando o procedimento for territorial: `reno-*.md`, `marketing-*.md` ou `{agent_id}-*.md`.
- Devem manter procedimentos separados de eventos; evento datado pertence a `_journal/{agent_id}/`.
- Devem manter procedimentos separados de decisoes; decisao aprovada pertence a `_decisions/`.
- Nao devem registrar fato duravel de cliente, imovel ou organizacao apenas em runbook.
- Devem linkar runbooks a [[schema]] e ao contexto relevante quando a regra depender de governanca.
- Devem pedir confirmacao do Renato antes de alterar procedimento que muda responsabilidade, ownership ou criterio comercial.
```

Add `[[marketing-vault-operacao]]` to `## Ver tambem`.

- [ ] **Step 6: Update `_shared/context/README.md`**

Add this paragraph after the `## Finalidade` paragraph:

```markdown
Contexto tematico controlado pode viver em subpastas como `_shared/context/marketing/`. Contexto institucional amplo da Fama permanece mais sensivel e exige confirmacao quando a alteracao mudar posicionamento, promessa, criterio comercial ou governanca.
```

Add `[[ _shared/context/marketing/README ]]` to `## Ver tambem` without spaces.

- [ ] **Step 7: Verify local navigation mentions Marketing**

Run:

```powershell
rg -n "marketing-hub|marketing-vault-operacao|_journal/marketing|_projects/marketing|_shared/context/marketing" _hubs _journal _projects _runbooks _shared\context
```

Expected: output includes all five Marketing entrypoints.

- [ ] **Step 8: Commit index updates**

Run:

```powershell
git add -- _hubs/index.md _hubs/README.md _journal/README.md _projects/README.md _runbooks/README.md _shared/context/README.md
git commit -m "docs: link marketing territory in vault indexes"
```

Expected: commit succeeds and mentions the six modified files.

---

### Task 5: Update Schema, Retrieval Policy, And Golden Queries

**Files:**
- Modify: `_meta/schema.md`
- Modify: `_meta/retrieval-policy.md`
- Modify: `_meta/golden-queries.md`

- [ ] **Step 1: Update `_meta/schema.md` frontmatter date**

Change:

```yaml
updated: '2026-05-13'
```

to:

```yaml
updated: '2026-06-01'
```

- [ ] **Step 2: Add the agent territory convention to `_meta/schema.md`**

After the folder convention table in section `2. Folder convention + politica de indexacao`, add:

```markdown

### Convencao multiagent por territorio

Agentes sao identificados por `agent_id` estavel. O `agent_id` aparece em caminhos, hubs, runbooks e decisoes, sem recriar `_agents/`.

| Tipo de memoria | Padrao |
|-----------------|--------|
| Evento datado do agente | `_journal/{agent_id}/YYYY-MM-DD-{slug}.md` |
| Hub do agente | `_hubs/{agent_id}-hub.md` |
| Runbook do agente | `_runbooks/{agent_id}-*.md` |
| Projeto do agente | `_projects/{agent_id}/` |
| Decisao ligada ao agente | `_decisions/YYYY-MM-DD-{agent_id}-{slug}.md` |
| Contexto tematico | `_shared/context/{tema}/` |

Reno e Marketing sao os agentes ativos iniciais. Futuros agentes devem ser cadastrados em [[_shared/context/AGENTS]] antes de receber territorio proprio.
```

- [ ] **Step 3: Update schema frontmatter examples**

In the common frontmatter example, change:

```yaml
owner: renato | reno
```

to:

```yaml
owner: renato | reno | marketing
```

In the recommended additional fields example, add:

```yaml
agent_id: reno | marketing
```

- [ ] **Step 4: Update journal and project schema examples**

In section `5.5 journal`, replace:

```markdown
Destino: `_journal/` ou `_journal/reno/` conforme o agente.
```

with:

```markdown
Destino: `_journal/{agent_id}/` quando o evento pertencer a um agente. Exemplos ativos: `_journal/reno/` e `_journal/marketing/`.
```

In section `5.9 project`, add:

```markdown
Projetos territoriais de agente devem viver em `_projects/{agent_id}/`. O primeiro territorio novo e `_projects/marketing/`.
```

- [ ] **Step 5: Update `_meta/retrieval-policy.md` frontmatter date and objective**

Change:

```yaml
updated: '2026-06-01'
```

to the same value if already present.

Replace the objective paragraph with:

```markdown
Esta politica orienta quais fontes agentes devem priorizar ao recuperar contexto do vault `fama-brain`, especialmente apos a evolucao para multiagent por territorios e a remocao do namespace `_agents/` como destino ativo.
```

- [ ] **Step 6: Add agent-aware retrieval rules**

In `_meta/retrieval-policy.md`, after the hierarchy list, add:

```markdown

## Tratamento de territorios por agente

Quando a pergunta envolver um agente especifico, priorizar primeiro o territorio desse agente dentro da hierarquia normal de fontes.

Exemplos:

- Pergunta sobre atendimento ou follow-up do Reno: priorizar [[reno-hub]], `_runbooks/reno-*.md` e `_journal/reno/`.
- Pergunta sobre campanha, calendario ou comunicacao de Marketing: priorizar [[marketing-hub]], `_runbooks/marketing-*.md`, `_projects/marketing/`, `_journal/marketing/` e `_shared/context/marketing/`.
- Pergunta sobre entidade compartilhada: consultar `_entities/` e depois eventos dos agentes relacionados.

Um agente pode consultar e linkar territorio de outro agente, mas nao deve editar o territorio primario de outro agente sem confirmacao do Renato.
```

- [ ] **Step 7: Update sources that are not active destinations**

In `_meta/retrieval-policy.md`, keep the `_agents/` warnings and add:

```markdown
- Territorios ativos de agentes vivem em `_journal/{agent_id}/`, `_projects/{agent_id}/`, `_runbooks/{agent_id}-*.md`, `_hubs/{agent_id}-hub.md` e decisoes nomeadas por agente em `_decisions/`.
```

- [ ] **Step 8: Add multiagent golden queries**

At the end of `_meta/golden-queries.md`, add:

```markdown

## Queries multiagent por territorio

26. **Pergunta:** Onde o agente de Marketing deve registrar um evento datado de campanha?
   - **Fonte esperada:** [[marketing-vault-operacao]], [[_journal/marketing/README]], [[marketing-hub]].
   - **Resposta esperada:** `_journal/marketing/`.

27. **Pergunta:** Onde o agente de Marketing deve registrar uma campanha ou experimento ativo?
   - **Fonte esperada:** [[marketing-vault-operacao]], [[_projects/marketing/README]].
   - **Resposta esperada:** `_projects/marketing/`.

28. **Pergunta:** Marketing pode editar `_journal/reno/`?
   - **Fonte esperada:** [[_shared/context/AGENTS]], [[marketing-vault-operacao]], [[marketing-hub]].
   - **Resposta esperada:** Nao; pode consultar e linkar, mas deve registrar propria leitura no territorio de Marketing.

29. **Pergunta:** Onde fica o hub canonico do Marketing?
   - **Fonte esperada:** [[marketing-hub]], [[_hubs/index]].
   - **Resposta esperada:** `_hubs/marketing-hub.md` / [[marketing-hub]].

30. **Pergunta:** Um novo agente futuro deve ganhar `_agents/{agent_id}/`?
   - **Fonte esperada:** [[README]], [[schema]], [[_shared/context/AGENTS]].
   - **Resposta esperada:** Nao; deve ganhar territorio por tipo de memoria e cadastro em [[_shared/context/AGENTS]].

31. **Pergunta:** Quem e dono primario de `_entities/**`?
   - **Fonte esperada:** [[_shared/context/AGENTS]].
   - **Resposta esperada:** Renato; agentes podem atualizar fatos duraveis confirmados com fonte rastreavel, ownership correto e read-back.

32. **Pergunta:** Onde contexto duravel de marketing deve ser consolidado?
   - **Fonte esperada:** [[_shared/context/marketing/README]], [[marketing-vault-operacao]].
   - **Resposta esperada:** `_shared/context/marketing/`.
```

- [ ] **Step 9: Verify meta docs mention the new model**

Run:

```powershell
rg -n "multiagent|agent_id|marketing-hub|_projects/marketing|_shared/context/marketing|Queries multiagent" _meta\schema.md _meta\retrieval-policy.md _meta\golden-queries.md
```

Expected: output includes all queried concepts.

- [ ] **Step 10: Commit meta updates**

Run:

```powershell
git add -- _meta/schema.md _meta/retrieval-policy.md _meta/golden-queries.md
git commit -m "docs: document multiagent schema and retrieval"
```

Expected: commit succeeds and mentions the three meta files.

---

### Task 6: Final Verification And Cleanup

**Files:**
- Read: all files changed in Tasks 1-5
- Modify only if a verification command exposes a typo or broken link introduced by this plan.

- [ ] **Step 1: Confirm `_agents/` was not recreated**

Run:

```powershell
if (Test-Path -LiteralPath '_agents') { 'FOUND_AGENTS_DIR' } else { 'NO_ACTIVE_AGENTS_DIR' }
```

Expected:

```text
NO_ACTIVE_AGENTS_DIR
```

- [ ] **Step 2: Confirm all required Marketing files exist**

Run:

```powershell
$paths = @('_hubs\marketing-hub.md','_journal\marketing\README.md','_projects\marketing\README.md','_shared\context\marketing\README.md','_runbooks\marketing-vault-operacao.md'); $paths | ForEach-Object { [pscustomobject]@{Path=$_; Exists=(Test-Path -LiteralPath $_)} } | Format-Table -AutoSize
```

Expected: every row shows `True`.

- [ ] **Step 3: Confirm root and ownership docs no longer describe multiagent as future-only**

Run:

```powershell
rg -n "Multiagente fica como evolucao futura|Reno-first" README.md _shared\context\AGENTS.md _meta\schema.md _meta\retrieval-policy.md
```

Expected: no matches.

- [ ] **Step 4: Confirm core links resolve or are known historical links**

Run:

```powershell
$files = rg --files -g "*.md" -g "!**/.obsidian/**"; $names = @{}; foreach ($f in $files) { $base=[System.IO.Path]::GetFileNameWithoutExtension($f).ToLowerInvariant(); if (-not $names.ContainsKey($base)) { $names[$base]=@() }; $names[$base] += $f.Replace('\','/') }; $missing = New-Object System.Collections.Generic.List[object]; foreach ($f in $files) { $text = Get-Content -LiteralPath $f -Raw; foreach ($m in [regex]::Matches($text, '\[\[([^\]]+)\]\]')) { $target = $m.Groups[1].Value.Split('|')[0].Split('#')[0].Trim(); if ($target -eq '') { continue }; $normalized = $target.Replace('\','/').Trim('/'); $exists = $false; if ($normalized.Contains('/')) { $candidate = ($normalized + '.md').ToLowerInvariant(); foreach ($existing in $files) { if ($existing.Replace('\','/').ToLowerInvariant() -eq $candidate) { $exists = $true; break } } } else { $exists = $names.ContainsKey($normalized.ToLowerInvariant()) }; if (-not $exists) { $missing.Add([pscustomobject]@{File=$f; Link=$target}) } } }; $missing | Group-Object Link | Sort-Object Count -Descending | Select-Object Count,Name | Format-Table -AutoSize
```

Expected: no missing links introduced by Marketing docs. If the only remaining missing link is historical `schema.md` from `_meta/inventory-2026-04-30.md`, leave it unchanged unless Renato separately approves historical cleanup.

- [ ] **Step 5: Confirm golden queries are present**

Run:

```powershell
rg -n "Onde o agente de Marketing deve registrar|Marketing pode editar `_journal/reno/`|novo agente futuro|Quem e dono primario de `_entities" _meta\golden-queries.md
```

Expected: output includes all four query themes.

- [ ] **Step 6: Confirm git contains the expected commits**

Run:

```powershell
git log --oneline -6
```

Expected: recent commits include:

```text
docs: document multiagent schema and retrieval
docs: link marketing territory in vault indexes
docs: add marketing agent territory
docs: formalize multiagent ownership
docs: update vault portal for multiagent territories
```

- [ ] **Step 7: Confirm working tree is clean**

Run:

```powershell
git status --short
```

Expected: no output.

If there are uncommitted typo fixes from verification, commit them:

```powershell
git add -- README.md _shared/context/AGENTS.md _meta/schema.md _meta/retrieval-policy.md _meta/golden-queries.md _hubs/index.md _hubs/README.md _journal/README.md _projects/README.md _runbooks/README.md _shared/context/README.md _hubs/marketing-hub.md _journal/marketing/README.md _projects/marketing/README.md _shared/context/marketing/README.md _runbooks/marketing-vault-operacao.md
git commit -m "docs: verify multiagent vault navigation"
```

Expected: commit succeeds, then `git status --short` has no output.
