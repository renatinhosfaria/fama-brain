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
