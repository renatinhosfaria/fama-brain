# Reno Vault Manuais Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Criar manuais operacionais para o Reno usar o `fama-brain` corretamente ao buscar, criar, atualizar ou evitar documentos.

**Architecture:** Manter o `README.md` da raiz como portal do vault, criar `README.md` curto nas pastas principais e concentrar o fluxo completo em `_runbooks/reno-vault-operacao.md`. Os READMEs locais sao placas normativas; o runbook central explica o raciocinio operacional completo.

**Tech Stack:** Markdown Obsidian, YAML frontmatter legado compativel com o MCP atual, Git for Windows, PowerShell, `rg`.

---

## File Structure

**Modify:**
- `README.md` - preservar o MOC existente e acrescentar a camada "Comece aqui para o Reno".

**Create:**
- `_entities/README.md` - manual local para memoria semantica.
- `_journal/README.md` - manual local para memoria episodica geral.
- `_journal/reno/README.md` - manual local para eventos operacionais do Reno.
- `_runbooks/README.md` - manual local para procedimentos.
- `_runbooks/reno-vault-operacao.md` - runbook central de operacao do vault pelo Reno.
- `_decisions/README.md` - manual local para decisoes duraveis.
- `_hubs/README.md` - manual local para hubs e mapas.
- `_projects/README.md` - manual local para projetos.
- `_meta/README.md` - manual local para governanca do vault.
- `_shared/README.md` - manual local para contexto compartilhado.
- `_shared/context/README.md` - manual local para contexto institucional e tematico.

**Reference only:**
- `_shared/context/AGENTS.md` - fonte de verdade para ownership.
- `_meta/schema.md` - fonte de verdade para schema ideal e tipos de memoria.
- `docs/superpowers/specs/2026-05-12-reno-vault-manuais-design.md` - spec aprovada.

## Task 1: Update Root Portal

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Read the current root README**

Run:

```powershell
Get-Content -Raw 'README.md'
```

Expected: output includes the title `# fama-brain`, the Reno-first statement, navigation links, conventions and infrastructure.

- [ ] **Step 2: Add the Reno start section after the opening topology paragraph**

Use `apply_patch` to insert this block after the paragraph that ends with `erro `OWNERSHIP_VIOLATION`).`:

```md
## Comece aqui para o Reno

O Reno deve tratar este `README.md` como porta de entrada do vault quando precisar localizar informacao, decidir onde escrever ou confirmar a funcao de uma pasta.

Regras universais:

- Deve buscar antes de criar qualquer nota nova.
- Deve atualizar ou referenciar nota canonica existente antes de duplicar conteudo.
- Deve separar fato duravel, evento datado, decisao e procedimento em pastas diferentes.
- Deve registrar incerteza como incerteza e pedir confirmacao quando a fonte for fraca ou contraditoria.
- Nao deve recriar o namespace legado `_agents/`.
- Nao deve alterar ownership, schema ou decisoes duraveis sem confirmacao do Renato.

Ordem padrao de busca:

1. Consulte este portal quando a topologia estiver incerta.
2. Consulte [[reno-vault-operacao]] para o fluxo completo.
3. Consulte [[reno-hub]] quando o assunto for operacao do Reno.
4. Consulte a pasta de conteudo correta: `_entities/`, `_journal/reno/`, `_decisions/`, `_runbooks/`, `_hubs/`, `_projects/`, `_shared/context/` ou `_meta/`.
5. Antes de escrever, leia o `README.md` local da pasta de destino.

Manuais locais:

- [[_entities/README|_entities/README]]
- [[_journal/README|_journal/README]]
- [[_journal/reno/README|_journal/reno/README]]
- [[_runbooks/README|_runbooks/README]]
- [[_decisions/README|_decisions/README]]
- [[_hubs/README|_hubs/README]]
- [[_projects/README|_projects/README]]
- [[_meta/README|_meta/README]]
- [[_shared/README|_shared/README]]
- [[_shared/context/README|_shared/context/README]]
```

- [ ] **Step 3: Add the runbook to the generated navigation block by hand**

Inside the `<!-- codex:inbound-index:start -->` block, add this bullet near the other `_runbooks` entry:

```md
- [[_runbooks/reno-vault-operacao|_runbooks/reno-vault-operacao]]
```

- [ ] **Step 4: Verify root README markers and links**

Run:

```powershell
rg -n "Comece aqui para o Reno|reno-vault-operacao|_entities/README|_shared/context/README" README.md
```

Expected: matches for the inserted start section, the central runbook, and local manuals.

- [ ] **Step 5: Commit root portal update**

Run:

```powershell
git add -- README.md
git commit -m "docs: add Reno vault portal"
```

Expected: commit succeeds with only `README.md` staged.

## Task 2: Create Central Runbook And Runbooks README

**Files:**
- Create: `_runbooks/README.md`
- Create: `_runbooks/reno-vault-operacao.md`

- [ ] **Step 1: Create `_runbooks/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [runbooks, reno, operacao]
---
# `_runbooks/`

## Finalidade

`_runbooks/` guarda procedimentos repetiveis, playbooks e manuais operacionais que orientam como o Reno deve agir.

## Quando buscar aqui

- Quando o Reno precisar saber como executar uma rotina.
- Quando a duvida for sobre processo, criterio de decisao ou sequencia de passos.
- Quando uma regra operacional precisar ser aplicada varias vezes.
- Quando o Reno precisar entender como usar o vault antes de escrever.

## Quando escrever aqui

- Quando houver um procedimento duravel aprovado.
- Quando uma rotina do Reno precisar virar manual reutilizavel.
- Quando um playbook de atendimento ou governanca precisar ser consultado por mais de uma sessao.
- Quando a informacao for sobre modo de operar, nao sobre evento ou entidade.

## Regras para o Reno

- Deve consultar [[reno-vault-operacao]] antes de criar ou atualizar documentos do vault quando houver duvida de destino.
- Deve escrever runbooks como sequencias verificaveis de decisao ou acao.
- Deve manter procedimentos separados de eventos; evento datado pertence a `_journal/reno/`.
- Deve manter procedimentos separados de decisoes; decisao aprovada pertence a `_decisions/`.
- Nao deve registrar fato duravel de cliente, imovel ou organizacao apenas em runbook.
- Deve linkar runbooks a [[schema]] e ao contexto relevante quando a regra depender de governanca.
- Deve pedir confirmacao do Renato antes de alterar procedimento que muda responsabilidade, ownership ou criterio comercial.

## Ver tambem

- [[reno-vault-operacao]]
- [[reno-profile]]
- [[reno-playbook-atendimento]]
- [[reno-registro-vault]]
- [[_shared/context/AGENTS]]
- [[schema]]
```

- [ ] **Step 2: Create `_runbooks/reno-vault-operacao.md`**

Use `apply_patch` to add this file:

```md
---
type: runbook
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [reno, vault, memoria, operacao]
---
# Runbook: Operacao do vault pelo Reno

## Objetivo

Este runbook orienta o Reno a buscar, criar, atualizar ou evitar documentos no `fama-brain` sem duplicar memoria, misturar tipos de informacao ou transformar incerteza em verdade duravel.

## Regra principal

O Reno deve buscar antes de criar, atualizar antes de duplicar e pedir confirmacao antes de alterar decisoes, ownership, schema ou fatos sensiveis.

## Ordem padrao de busca

1. Se a topologia do vault estiver incerta, consultar [[README]].
2. Se a duvida for sobre como operar o vault, consultar este runbook.
3. Se a duvida for sobre o proprio Reno, consultar [[reno-hub]] e [[reno-profile]].
4. Se a duvida for sobre pessoa, imovel, organizacao, lugar ou projeto como entidade, buscar em `_entities/`.
5. Se a duvida for sobre atendimento, call, auditoria, rotina ou evento datado, buscar em `_journal/reno/`.
6. Se a duvida for sobre regra aprovada ou mudanca de direcao, buscar em `_decisions/`.
7. Se a duvida for sobre modo de operar, buscar em `_runbooks/`.
8. Se a duvida for sobre mapa de navegacao ou sintese, buscar em `_hubs/`.
9. Se a duvida for sobre trabalho em andamento, buscar em `_projects/`.
10. Se a duvida for sobre schema, inventario, migracao ou governanca do vault, buscar em `_meta/`.
11. Se a duvida for sobre contexto institucional, comercial ou tematico da Fama, buscar em `_shared/context/`.

## Como decidir entre criar, atualizar ou nao escrever

Criar nota nova apenas quando a informacao representar uma nova entidade, novo evento datado, nova decisao aprovada, novo procedimento reutilizavel, novo hub necessario, novo projeto ou novo documento de governanca.

Atualizar nota existente quando ja houver uma nota canonica e a nova informacao apenas acrescentar, corrigir ou qualificar o mesmo sujeito.

Nao escrever quando a informacao for passageira demais, duplicar conteudo existente, depender de confirmacao, exigir mudanca de schema ou pertencer a uma pasta sem ownership liberado.

## Regras por tipo de memoria

### Entidade

Fatos duraveis sobre pessoas, imoveis, organizacoes, lugares e projetos como entidade pertencem a `_entities/`. O Reno deve procurar por nome, telefone, aliases, empreendimento e IDs externos antes de criar entidade nova.

### Evento

Atendimentos, calls, visitas, auditorias, planos datados e acontecimentos operacionais pertencem a `_journal/reno/`. O Reno deve usar data absoluta no nome e no corpo da nota.

### Decisao

Decisoes duraveis pertencem a `_decisions/`. O Reno nao deve criar decisao sem aprovacao explicita ou evidencia clara de decisao tomada por Renato.

### Procedimento

Modos de operar, checklists, playbooks e instrucoes repetiveis pertencem a `_runbooks/`. O Reno deve escrever procedimentos como passos verificaveis.

### Hub

Mapas de navegacao e sinteses pertencem a `_hubs/`. O Reno deve linkar para notas existentes e evitar duplicar conteudo dos documentos de origem.

### Projeto

Trabalho em andamento pertence a `_projects/`. O Reno deve separar projeto ativo de historico arquivado conforme o ciclo de vida.

### Meta

Schema, inventario, migracao e governanca do proprio vault pertencem a `_meta/`. O Reno deve tratar `_meta/` como area sensivel.

### Contexto compartilhado

Contexto institucional, comercial e conceitual da Fama pertence a `_shared/context/`. O Reno deve evitar misturar atendimento individual com contexto institucional.

## Fluxos operacionais

### Buscar para responder

1. Identificar o sujeito da pergunta.
2. Escolher a pasta provavel pelo tipo de memoria.
3. Buscar por slug, nome, aliases e termos de negocio.
4. Abrir a nota mais canonica antes de usar notas derivadas.
5. Conferir `updated`, `status`, fonte e links relacionados.
6. Responder citando apenas informacao suficientemente confiavel.

### Registrar atendimento ou evento

1. Confirmar a data absoluta do evento.
2. Buscar a entidade relacionada em `_entities/`.
3. Criar ou atualizar a nota em `_journal/reno/`.
4. Linkar as entidades mencionadas.
5. Promover para `_entities/` apenas fatos duraveis.
6. Promover para `_decisions/` apenas decisoes aprovadas.

### Atualizar fato duravel

1. Buscar a entidade canonica.
2. Conferir aliases, IDs externos e notas relacionadas.
3. Atualizar a entidade apenas se o fato for estavel.
4. Registrar incerteza quando houver ambiguidade.
5. Linkar o evento ou fonte que originou a atualizacao.

### Criar procedimento

1. Confirmar que a informacao e reutilizavel.
2. Buscar runbook existente com finalidade parecida.
3. Atualizar runbook existente se o procedimento for o mesmo.
4. Criar novo runbook se houver novo processo.
5. Linkar contexto, decisoes e entidades relevantes.

## Excecoes que exigem confirmacao

O Reno deve parar e pedir confirmacao ao Renato quando:

- houver conflito entre duas notas sobre o mesmo fato;
- houver risco de criar entidade duplicada;
- a informacao for sensivel, estrategica ou financeira;
- a escrita parecer alterar decisao aprovada;
- a escrita exigir novo tipo de documento, campo de schema ou mudanca de ownership;
- o MCP ou o ownership bloquear a operacao;
- a fonte for fraca, inferida ou contraditoria;
- a acao puder afetar operacao comercial, atendimento, campanha ou responsabilidade de pessoa.

## Checklist antes de escrever

- O Reno identificou o tipo de memoria?
- O Reno buscou nota existente antes de criar?
- O destino respeita a finalidade da pasta?
- A informacao tem fonte suficiente?
- A nota tera frontmatter curto compativel com o vault atual?
- Os links Obsidian apontam para notas existentes?
- A escrita respeita ownership em [[_shared/context/AGENTS]]?
- A escrita nao altera schema sem decisao em `_decisions/`?

## Checklist depois de escrever

- O arquivo ficou em kebab-case, sem acentos.
- O frontmatter tem `type`, `owner`, `created`, `updated` e `tags`.
- O corpo reintroduz o sujeito na primeira frase.
- A nota diferencia fato, evento, decisao e procedimento.
- A nota usa datas absolutas.
- Links internos apontam para notas existentes.
- A escrita nao criou duplicidade evidente.
- Se houve incerteza, ela ficou marcada no corpo.

## Ver tambem

- [[README]]
- [[_entities/README]]
- [[_journal/reno/README]]
- [[_runbooks/README]]
- [[_decisions/README]]
- [[_hubs/README]]
- [[_projects/README]]
- [[_meta/README]]
- [[_shared/context/README]]
- [[_shared/context/AGENTS]]
- [[schema]]
```

- [ ] **Step 3: Verify runbook files**

Run:

```powershell
Test-Path '_runbooks\README.md'
Test-Path '_runbooks\reno-vault-operacao.md'
rg -n "Regra principal|Checklist antes de escrever|Excecoes que exigem confirmacao" '_runbooks\reno-vault-operacao.md'
```

Expected: both `Test-Path` calls output `True`; `rg` finds the three runbook sections.

- [ ] **Step 4: Commit runbook files**

Run:

```powershell
git add -- '_runbooks\README.md' '_runbooks\reno-vault-operacao.md'
git commit -m "docs: add Reno vault operation runbook"
```

Expected: commit succeeds with only the two `_runbooks` files staged.

## Task 3: Create Content Memory Folder READMEs

**Files:**
- Create: `_entities/README.md`
- Create: `_journal/README.md`
- Create: `_journal/reno/README.md`
- Create: `_decisions/README.md`
- Create: `_hubs/README.md`

- [ ] **Step 1: Create `_entities/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [entities, reno, memoria]
---
# `_entities/`

## Finalidade

`_entities/` guarda a memoria semantica canonica sobre pessoas, imoveis, organizacoes, lugares e projetos tratados como entidades.

## Quando buscar aqui

- Quando o Reno precisar lembrar quem e uma pessoa.
- Quando precisar conferir dados duraveis de cliente, lead, broker, parceiro, imovel, empreendimento, bairro ou organizacao.
- Quando precisar verificar aliases, IDs externos, relacoes ou historico consolidado.
- Quando um evento citar alguem ou algo que pode ja ter nota canonica.

## Quando escrever aqui

- Quando surgir uma nova entidade real ainda sem nota canonica.
- Quando um fato duravel sobre entidade existente precisar ser acrescentado.
- Quando aliases, IDs externos ou relacoes precisarem ser consolidados.
- Quando um atendimento gerar aprendizado estavel sobre pessoa, imovel ou organizacao.

## Regras para o Reno

- Deve buscar por nome, telefone, aliases, empreendimento e IDs externos antes de criar entidade nova.
- Deve manter uma unica nota canonica por entidade real.
- Deve atualizar entidade existente antes de criar arquivo parecido.
- Deve registrar ambiguidade no corpo quando nao houver certeza se duas entidades sao a mesma.
- Nao deve colocar evento datado como fato principal da entidade; evento pertence a `_journal/reno/`.
- Nao deve tratar suposicao como fato duravel.
- Deve linkar eventos, decisoes ou projetos que sustentam a informacao.
- Deve pedir confirmacao antes de fundir entidades ambiguas.

## Ver tambem

- [[reno-vault-operacao]]
- [[_entities/index]]
- [[_journal/reno/README]]
- [[schema]]
```

- [ ] **Step 2: Create `_journal/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [journal, reno, eventos]
---
# `_journal/`

## Finalidade

`_journal/` guarda memoria episodica: eventos datados, logs operacionais, atendimentos, auditorias, calls, visitas e rotinas.

## Quando buscar aqui

- Quando o Reno precisar saber o que aconteceu em uma data.
- Quando precisar conferir atendimento, call, visita, auditoria ou plano datado.
- Quando uma resposta depender de sequencia temporal.
- Quando uma entidade tiver evento relacionado que explica a origem de um fato.

## Quando escrever aqui

- Quando houver novo evento datado.
- Quando o Reno registrar atendimento, auditoria, rotina ou plano operacional.
- Quando a informacao for historico de acontecimento, nao fato duravel.
- Quando uma fonte bruta precisar ser preservada antes de consolidacao.

## Regras para o Reno

- Deve usar data absoluta no nome e no corpo da nota.
- Deve escrever eventos do Reno em `_journal/reno/`.
- Deve linkar entidades mencionadas sempre que existirem.
- Deve promover fatos duraveis para `_entities/` quando forem confiaveis.
- Deve promover decisoes aprovadas para `_decisions/`.
- Nao deve usar journal como fonte canonica quando ja existir nota consolidada.
- Nao deve vetorizar mentalmente journal como verdade final; journal e trilha de evento.

## Ver tambem

- [[reno-vault-operacao]]
- [[_journal/index]]
- [[_journal/reno/README]]
- [[_entities/README]]
```

- [ ] **Step 3: Create `_journal/reno/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: reno
created: '2026-05-12'
updated: '2026-05-12'
tags: [reno, journal, atendimento]
---
# `_journal/reno/`

## Finalidade

`_journal/reno/` guarda eventos operacionais datados do Reno: atendimentos, auditorias, logs, rotinas, planos e observacoes de execucao.

## Quando buscar aqui

- Quando a pergunta envolver atendimento feito pelo Reno.
- Quando precisar reconstruir uma linha do tempo operacional.
- Quando uma entidade tiver historico de contato ou evento migrado.
- Quando a informacao buscada for acontecimento, nao perfil canonico.

## Quando escrever aqui

- Quando o Reno registrar novo atendimento ou follow-up.
- Quando houver auditoria, plano, rotina ou log datado.
- Quando uma informacao ainda for bruta e precisar ser preservada antes da consolidacao.
- Quando a acao do Reno gerar evidencia operacional.

## Regras para o Reno

- Deve nomear arquivos como `YYYY-MM-DD-{slug}.md`.
- Deve citar a data absoluta no corpo da nota.
- Deve linkar a entidade canonica em `_entities/` quando ela existir.
- Deve registrar apenas o evento aqui; fatos estaveis devem ser consolidados em `_entities/`.
- Deve marcar incerteza quando nome, telefone, status ou origem nao forem confiaveis.
- Nao deve criar decisao em journal; decisao aprovada pertence a `_decisions/`.
- Nao deve esconder pendencia operacional em texto solto; deve deixar proxima acao clara quando houver.
- Deve pedir confirmacao antes de registrar informacao sensivel ou contraditoria como fato.

## Ver tambem

- [[reno-vault-operacao]]
- [[_journal/README]]
- [[_entities/README]]
- [[reno-hub]]
```

- [ ] **Step 4: Create `_decisions/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [decisions, reno, governanca]
---
# `_decisions/`

## Finalidade

`_decisions/` guarda decisoes duraveis, uma decisao por nota, com data, contexto, responsavel e relacao com decisoes substituidas.

## Quando buscar aqui

- Quando o Reno precisar saber qual regra ou direcao esta valendo.
- Quando houver duvida entre pratica antiga e decisao nova.
- Quando uma acao depender de aprovacao, politica ou guardrail.
- Quando uma nota mencionar `supersedes`, `superseded_by` ou mudanca de direcao.

## Quando escrever aqui

- Quando Renato aprovar explicitamente uma decisao duravel.
- Quando uma decisao antiga for substituida por outra.
- Quando um guardrail operacional virar regra estavel.
- Quando uma escolha estrategica precisar ser preservada com data e rationale.

## Regras para o Reno

- Deve criar decisao apenas com aprovacao explicita ou evidencia clara de decisao tomada por Renato.
- Deve manter uma decisao por nota.
- Deve usar data absoluta no arquivo e no corpo.
- Deve preencher relacao de supersessao quando uma decisao substituir outra.
- Nao deve editar materialmente decisao antiga para mudar o historico.
- Nao deve registrar opiniao, sugestao ou plano como decisao aprovada.
- Deve pedir confirmacao quando a decisao afetar schema, ownership, campanha, atendimento ou responsabilidade.
- Deve linkar decisoes aos runbooks, entidades, projetos ou hubs relacionados.

## Ver tambem

- [[reno-vault-operacao]]
- [[_decisions/index]]
- [[_shared/context/AGENTS]]
- [[schema]]
```

- [ ] **Step 5: Create `_hubs/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [hubs, reno, navegacao]
---
# `_hubs/`

## Finalidade

`_hubs/` guarda mapas de navegacao e sinteses que conectam notas canonicas sem duplicar o conteudo delas.

## Quando buscar aqui

- Quando o Reno precisar descobrir quais notas pertencem a um assunto.
- Quando a pergunta for ampla e exigir mapa antes de detalhe.
- Quando precisar navegar por entidade, tema, tipo de nota ou operacao.
- Quando a duvida envolver o segundo cerebro do Reno como conjunto.

## Quando escrever aqui

- Quando um tema tiver notas suficientes para merecer mapa.
- Quando um hub ajudar a reduzir busca repetida.
- Quando uma entidade, tema ou operacao precisar de indice curado.
- Quando um conjunto de notas precisar de micro-resumo com links.

## Regras para o Reno

- Deve usar hubs como mapa, nao como deposito de conteudo duplicado.
- Deve linkar para notas existentes.
- Deve escrever micro-resumos de uma linha por link quando isso ajudar a navegacao.
- Deve manter [[reno-hub]] como hub canonico da operacao do Reno.
- Nao deve criar hub para assunto com uma unica nota clara.
- Nao deve substituir entidade, decisao, journal ou runbook por hub.
- Deve atualizar hub quando criar nota importante relacionada ao assunto.
- Deve pedir confirmacao antes de criar hub que mude a topologia principal do vault.

## Ver tambem

- [[reno-vault-operacao]]
- [[_hubs/index]]
- [[reno-hub]]
- [[README]]
```

- [ ] **Step 6: Verify content memory READMEs**

Run:

```powershell
$files = @('_entities\README.md','_journal\README.md','_journal\reno\README.md','_decisions\README.md','_hubs\README.md')
$files | ForEach-Object { "$_ => $(Test-Path $_)" }
rg -n "## Finalidade|## Quando buscar aqui|## Quando escrever aqui|## Regras para o Reno|## Ver tambem" $files
```

Expected: every file prints `True`; each file has the five standard sections.

- [ ] **Step 7: Commit content memory READMEs**

Run:

```powershell
git add -- '_entities\README.md' '_journal\README.md' '_journal\reno\README.md' '_decisions\README.md' '_hubs\README.md'
git commit -m "docs: add Reno content memory manuals"
```

Expected: commit succeeds with only the five README files staged.

## Task 4: Create Project, Governance And Context READMEs

**Files:**
- Create: `_projects/README.md`
- Create: `_meta/README.md`
- Create: `_shared/README.md`
- Create: `_shared/context/README.md`

- [ ] **Step 1: Create `_projects/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [projects, reno, operacao]
---
# `_projects/`

## Finalidade

`_projects/` guarda trabalho em andamento ou historico de projetos da Fama, do FamaChat e de iniciativas relacionadas.

## Quando buscar aqui

- Quando a pergunta envolver iniciativa, entrega, arquitetura ou trabalho em andamento.
- Quando o Reno precisar saber o estado de um projeto.
- Quando contexto operacional estiver organizado por projeto.
- Quando um documento citar FamaChat, Portal CEF ou outra iniciativa nomeada.

## Quando escrever aqui

- Quando houver novo projeto ou documento duravel de projeto.
- Quando uma iniciativa ativa precisar de arquitetura, decisao local, integracao ou historico.
- Quando um projeto mudar de estado e precisar ser atualizado.
- Quando uma nota nao for entidade, evento, decisao, runbook, hub, meta ou contexto institucional.

## Regras para o Reno

- Deve separar projeto ativo de historico arquivado quando essa estrutura existir.
- Deve linkar projetos a entidades, decisoes, runbooks e contexto relevante.
- Deve manter documentos de projeto focados em entrega ou operacao.
- Nao deve registrar atendimento individual como projeto.
- Nao deve usar projeto para substituir contexto institucional de `_shared/context/`.
- Deve pedir confirmacao antes de arquivar, renomear ou reestruturar projeto.

## Ver tambem

- [[reno-vault-operacao]]
- [[_projects/index]]
- [[_shared/context/README]]
- [[schema]]
```

- [ ] **Step 2: Create `_meta/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [meta, reno, governanca]
---
# `_meta/`

## Finalidade

`_meta/` guarda documentos que governam o proprio vault: schema, inventario, migracoes, avaliacao e estado tecnico da memoria.

## Quando buscar aqui

- Quando o Reno precisar entender schema, tipos de nota ou politica de indexacao.
- Quando houver duvida sobre migracao, inventario ou estrutura do vault.
- Quando a pergunta for sobre como o vault funciona, nao sobre a Fama.
- Quando for necessario conferir criterios de governanca antes de escrever.

## Quando escrever aqui

- Quando Renato aprovar documento de governanca do vault.
- Quando uma migracao, inventario ou avaliacao precisar ser registrada.
- Quando houver mudanca documentada no estado tecnico da memoria.
- Quando um arquivo for sobre o sistema de memoria, nao sobre operacao comercial.

## Regras para o Reno

- Deve tratar `_meta/` como area sensivel.
- Deve consultar [[schema]] antes de propor mudanca de tipo, frontmatter ou politica de indexacao.
- Deve pedir confirmacao antes de alterar schema, inventario, migracao ou avaliacao.
- Nao deve registrar atendimento, entidade, decisao comercial ou procedimento comum em `_meta/`.
- Nao deve usar pendencias de `_meta/` como desculpa para escrever fora do padrao atual.
- Deve linkar mudancas de governanca a decisoes em `_decisions/` quando houver aprovacao.

## Ver tambem

- [[reno-vault-operacao]]
- [[_meta/index]]
- [[schema]]
- [[_shared/context/AGENTS]]
```

- [ ] **Step 3: Create `_shared/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [shared, reno, contexto]
---
# `_shared/`

## Finalidade

`_shared/` guarda contexto compartilhado de alto nivel que pode orientar o Reno sem pertencer a um atendimento, entidade ou projeto especifico.

## Quando buscar aqui

- Quando o Reno precisar de contexto institucional ou tematico amplo.
- Quando a pergunta envolver Fama, modelo de negocio, credito imobiliario ou operacao geral.
- Quando a informacao nao for evento datado nem perfil de entidade.
- Quando um runbook ou decisao apontar para contexto comum.

## Quando escrever aqui

- Quando houver contexto duravel que sirva a mais de um fluxo.
- Quando um conceito, referencia ou material institucional precisar ser preservado.
- Quando a informacao for compartilhada entre areas e nao couber melhor em `_entities/`, `_journal/reno/`, `_decisions/`, `_runbooks/`, `_hubs/`, `_projects/` ou `_meta/`.

## Regras para o Reno

- Deve preferir `_shared/context/` para contexto textual compartilhado.
- Deve manter contexto institucional separado de atendimento individual.
- Deve linkar contexto a entidades, runbooks, decisoes ou projetos quando houver relacao.
- Nao deve usar `_shared/` como pasta generica para duvidas de destino.
- Nao deve criar nova subpasta compartilhada sem confirmar a finalidade.
- Deve respeitar ownership definido em [[_shared/context/AGENTS]].

## Ver tambem

- [[reno-vault-operacao]]
- [[_shared/context/README]]
- [[_shared/context/AGENTS]]
- [[schema]]
```

- [ ] **Step 4: Create `_shared/context/README.md`**

Use `apply_patch` to add this file:

```md
---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags: [contexto, reno, fama]
---
# `_shared/context/`

## Finalidade

`_shared/context/` guarda contexto institucional, comercial, conceitual e referencial da Fama que o Reno pode reutilizar em diferentes conversas e operacoes.

## Quando buscar aqui

- Quando a pergunta envolver a Fama como empresa.
- Quando precisar de contexto sobre credito imobiliario, produtos, pessoas, historia, mercado, stack ou modelo de negocio.
- Quando a duvida for conceitual ou institucional.
- Quando uma resposta depender de referencia duravel que nao e entidade individual.

## Quando escrever aqui

- Quando houver conceito, referencia ou contexto institucional duravel.
- Quando uma informacao for reutilizavel em varios atendimentos ou projetos.
- Quando uma atualizacao aprovada melhorar o entendimento geral da operacao.
- Quando o conteudo nao for evento, decisao, procedimento, projeto, hub, entidade ou meta.

## Regras para o Reno

- Deve buscar contexto existente antes de criar novo arquivo tematico.
- Deve manter documentos autocontidos, com assunto claro e links para notas relacionadas.
- Deve separar contexto institucional de fato individual de cliente.
- Deve linkar para [[fama-overview]] quando a informacao depender da visao geral da Fama.
- Deve consultar [[_shared/context/AGENTS]] antes de escrever em territorio com ownership especifico.
- Nao deve alterar contexto sensivel, comercial ou estrategico sem confirmacao do Renato.
- Nao deve promover inferencia nao verificada para contexto institucional.

## Ver tambem

- [[reno-vault-operacao]]
- [[fama-overview]]
- [[_shared/context/AGENTS]]
- [[schema]]
```

- [ ] **Step 5: Verify project, governance and context READMEs**

Run:

```powershell
$files = @('_projects\README.md','_meta\README.md','_shared\README.md','_shared\context\README.md')
$files | ForEach-Object { "$_ => $(Test-Path $_)" }
rg -n "## Finalidade|## Quando buscar aqui|## Quando escrever aqui|## Regras para o Reno|## Ver tambem" $files
```

Expected: every file prints `True`; each file has the five standard sections.

- [ ] **Step 6: Commit project, governance and context READMEs**

Run:

```powershell
git add -- '_projects\README.md' '_meta\README.md' '_shared\README.md' '_shared\context\README.md'
git commit -m "docs: add Reno governance and context manuals"
```

Expected: commit succeeds with only the four README files staged.

## Task 5: Final Verification And Cleanup

**Files:**
- Verify all files from Tasks 1-4.

- [ ] **Step 1: Verify all target files exist**

Run:

```powershell
$files = @(
  'README.md',
  '_entities\README.md',
  '_journal\README.md',
  '_journal\reno\README.md',
  '_runbooks\README.md',
  '_runbooks\reno-vault-operacao.md',
  '_decisions\README.md',
  '_hubs\README.md',
  '_projects\README.md',
  '_meta\README.md',
  '_shared\README.md',
  '_shared\context\README.md'
)
$missing = $files | Where-Object { -not (Test-Path $_) }
if ($missing) { $missing; exit 1 } else { "all target files exist" }
```

Expected: prints `all target files exist` and exits 0.

- [ ] **Step 2: Verify no pending placeholders**

Run:

```powershell
$patterns = @('TB' + 'D','TO' + 'DO','FIX' + 'ME','X' + 'XX','pendente inserir','preencher depois')
rg -n ($patterns -join '|') README.md _entities _journal _runbooks _decisions _hubs _projects _meta _shared
```

Expected: no matches from the new manuals. If existing unrelated files contain historical pending markers, inspect and confirm they are not in the files changed by this plan.

- [ ] **Step 3: Verify markdown sections in local manuals**

Run:

```powershell
$files = @(
  '_entities\README.md',
  '_journal\README.md',
  '_journal\reno\README.md',
  '_runbooks\README.md',
  '_decisions\README.md',
  '_hubs\README.md',
  '_projects\README.md',
  '_meta\README.md',
  '_shared\README.md',
  '_shared\context\README.md'
)
$required = @('## Finalidade','## Quando buscar aqui','## Quando escrever aqui','## Regras para o Reno','## Ver tambem')
foreach ($file in $files) {
  $text = Get-Content -Raw $file
  foreach ($section in $required) {
    if ($text -notmatch [regex]::Escape($section)) {
      Write-Error "$file missing $section"
      exit 1
    }
  }
}
"all local manuals have required sections"
```

Expected: prints `all local manuals have required sections` and exits 0.

- [ ] **Step 4: Verify Obsidian links used by new manuals resolve to files**

Run:

```powershell
$files = @(
  'README.md',
  '_entities\README.md',
  '_journal\README.md',
  '_journal\reno\README.md',
  '_runbooks\README.md',
  '_runbooks\reno-vault-operacao.md',
  '_decisions\README.md',
  '_hubs\README.md',
  '_projects\README.md',
  '_meta\README.md',
  '_shared\README.md',
  '_shared\context\README.md'
)
$all = Get-ChildItem -Recurse -File -Filter '*.md' | ForEach-Object {
  $rel = Resolve-Path -Relative $_.FullName
  $rel = $rel.TrimStart('.\').Replace('\','/')
  $noExt = $rel -replace '\.md$',''
  [pscustomobject]@{ Rel=$rel; NoExt=$noExt; Base=[IO.Path]::GetFileNameWithoutExtension($_.Name) }
}
$missing = @()
foreach ($file in $files) {
  $text = Get-Content -Raw $file
  [regex]::Matches($text, '\[\[([^\]|#]+)') | ForEach-Object {
    $target = $_.Groups[1].Value.Trim()
    $normalized = $target.Replace('\','/')
    $found = $all | Where-Object { $_.NoExt -eq $normalized -or $_.Rel -eq "$normalized.md" -or $_.Base -eq $normalized } | Select-Object -First 1
    if (-not $found) { $missing += "$file -> $target" }
  }
}
if ($missing.Count) { $missing; exit 1 } else { "all wikilinks in new manuals resolve" }
```

Expected: prints `all wikilinks in new manuals resolve` and exits 0.

- [ ] **Step 5: Verify git whitespace and status**

Run:

```powershell
git diff --check
git status --short
```

Expected: `git diff --check` exits 0. `git status --short` is empty if all task commits were made, or shows only intentional uncommitted verification edits if a previous step needed correction.

- [ ] **Step 6: If corrections were needed, commit them**

Run only if Step 5 shows intentional uncommitted changes:

```powershell
git add -- README.md _entities\README.md _journal\README.md _journal\reno\README.md _runbooks\README.md _runbooks\reno-vault-operacao.md _decisions\README.md _hubs\README.md _projects\README.md _meta\README.md _shared\README.md _shared\context\README.md
git commit -m "docs: polish Reno vault manuals"
```

Expected: commit succeeds and `git status --short` becomes empty.

## Self-Review

Spec coverage:
- Root portal requirement is covered by Task 1.
- Local README requirement is covered by Tasks 2, 3 and 4.
- Central runbook requirement is covered by Task 2.
- Reno-only scope is enforced in every document title, rule set and link target.
- Search, create, update, no-write and exception flows are covered in `_runbooks/reno-vault-operacao.md`.
- Verification criteria are covered by Task 5.

Placeholder scan:
- The plan contains no deferred implementation placeholders.
- The plan uses explicit file paths, exact markdown content and exact verification commands.

Consistency check:
- All local READMEs share the same five-section structure.
- Root README links to the central runbook and all local manuals.
- The plan preserves Reno-first architecture and does not recreate `_agents/`.
