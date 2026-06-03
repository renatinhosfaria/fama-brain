---
type: runbook
owner: reno
created: '2026-05-12'
updated: '2026-06-03'
tags:
  - reno
  - vault
  - memoria
  - operacao
schema_version: 1
status: active
source: human-curated
procedure_owner: renato
trigger: >-
  duvida ou operacao do Reno sobre busca, criacao, atualizacao ou governanca de
  documentos no vault
---
# Runbook: Operacao do vault pelo Reno

## Objetivo

Este runbook orienta o Reno a buscar, criar, atualizar ou evitar documentos no `fama-brain` sem duplicar memoria, misturar tipos de informacao ou transformar incerteza em verdade duravel.

## Regra principal

O Reno deve buscar antes de criar, atualizar antes de duplicar e pedir confirmacao antes de alterar decisoes, ownership, schema ou fatos sensiveis.

Com a memoria semantica ativa no `mcp-obsidian`, "buscar antes de criar" agora significa combinar busca por significado, busca literal e leitura canonica: `semantic_search` encontra contexto por similaridade; `search_content` confirma termos exatos, IDs e strings; `read_note` valida a nota antes de usar o resultado como evidencia.

## Busca semantica e textual

### Quando usar `semantic_search`

Use `semantic_search` quando a pergunta for conceitual, contextual ou exploratoria, mesmo sem palavras exatas da nota. Exemplos:

- recuperar governanca relacionada a um problema novo;
- encontrar runbooks, decisoes ou journals sobre um comportamento parecido;
- buscar contexto comercial por significado, como objecoes, viabilidade, credito, visita ou handoff;
- descobrir notas candidatas antes de uma auditoria ou consolidacao.

Regras:

1. Fazer a query em linguagem natural com o objetivo completo da busca.
2. Restringir `path`, `type`, `tag` ou `owner` quando isso reduzir ruido sem esconder candidatos relevantes.
3. Usar `limit` baixo para exploracao inicial e aumentar apenas quando houver lacuna.
4. Tratar `score`, `preview` e `heading_path` como triagem, nao como prova final.
5. Abrir as notas candidatas com `read_note` antes de citar, atualizar ou tomar decisao.

### Quando usar `search_content`

Use `search_content` para busca literal e rastreabilidade exata:

- `client_id`, `lead_id`, `broker_id`, CPF, telefone, slug ou path;
- nomes de ferramentas, campos de schema, status CRM, strings de erro ou trechos exatos;
- verificacao de drift textual, como `_agents/reno`, `semantic_search`, `search_content` ou nomes de runbook.

Se uma busca composta falhar, repetir com uma busca literal simples pelo ID ou termo principal antes de concluir ausencia.

### Quando usar `read_note`

Use `read_note` para validar a fonte canonica e fazer read-back depois de escrita. Quando o retorno trouxer contexto semantico relacionado, tratar esses itens como candidatos auxiliares: eles ajudam a descobrir conexoes, mas nao substituem a nota lida nem a fonte operacional de verdade.

### Quando usar `rebuild_semantic_index`

Use `rebuild_semantic_index` quando notas importantes forem criadas ou alteradas e a recuperacao semantica parecer desatualizada. Se a ferramenta aceitar `path`, prefira reindexar o caminho especifico; reindexacao ampla e acao de manutencao, nao passo normal de cada atendimento.

## Ordem padrao de busca

1. Se a pergunta for por significado, contexto ou padrao parecido, iniciar com `semantic_search` no escopo mais provavel e abrir os candidatos com `read_note`.
2. Se houver ID, nome exato, path, status ou string tecnica, usar `search_content` ou a ferramenta estruturada apropriada antes de concluir ausencia.
3. Se a topologia do vault estiver incerta, consultar [[README]].
4. Se a duvida for sobre como operar o vault, consultar este runbook.
5. Se a duvida for sobre o proprio Reno, consultar [[reno-hub]] e [[reno-profile]].
6. Se a duvida for sobre pessoa, imovel, organizacao, lugar ou projeto como entidade, buscar em `_entities/`.
7. Se a duvida for sobre atendimento, call, auditoria, rotina ou evento datado, buscar em `_journal/reno/`.
8. Se a duvida for sobre regra aprovada ou mudanca de direcao, buscar em `_decisions/`.
9. Se a duvida for sobre modo de operar, buscar em `_runbooks/`.
10. Se a duvida for sobre mapa de navegacao ou sintese, buscar em `_hubs/`.
11. Se a duvida for sobre trabalho em andamento, buscar em `_projects/`.
12. Se a duvida for sobre schema, inventario, migracao ou governanca do vault, buscar em `_meta/`.
13. Se a duvida for sobre contexto institucional, comercial ou tematico da Fama, buscar em `_shared/context/`.

## Como decidir entre criar, atualizar ou nao escrever

Criar nota nova apenas quando a informacao representar uma nova entidade, novo evento datado, nova decisao aprovada, novo procedimento reutilizavel, novo hub necessario, novo projeto ou novo documento de governanca.

Atualizar nota existente quando ja houver uma nota canonica e a nova informacao apenas acrescentar, corrigir ou qualificar o mesmo sujeito.

Nao escrever quando a informacao for passageira demais, duplicar conteudo existente, depender de confirmacao, exigir mudanca de schema ou pertencer a uma pasta sem ownership liberado.

## Regras por tipo de memoria

### Entidade

Fatos duraveis sobre pessoas, imoveis, organizacoes, lugares e projetos como entidade pertencem a `_entities/`. O Reno deve procurar por nome, telefone, aliases, empreendimento e IDs externos antes de criar entidade nova. Use `semantic_search` para descobrir entidades relacionadas por significado e `search_content` para confirmar IDs e aliases exatos.

### Evento

Atendimentos, calls, visitas, auditorias, planos datados e acontecimentos operacionais pertencem a `_journal/reno/`. O Reno deve usar data absoluta no nome e no corpo da nota. Use `semantic_search` para localizar eventos parecidos e `search_content` para localizar eventos por cliente, data ou status exato.

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
3. Se a busca for conceitual, rodar `semantic_search` com query natural e escopo apropriado.
4. Se houver identificador ou string exata, rodar `search_content` ou busca estruturada.
5. Abrir a nota mais canonica com `read_note` antes de usar notas derivadas.
6. Conferir `updated`, `status`, fonte e links relacionados.
7. Responder citando apenas informacao suficientemente confiavel.

### Registrar atendimento ou evento

1. Confirmar a data absoluta do evento.
2. Buscar a entidade relacionada em `_entities/` por ID/string e, quando util, por significado com `semantic_search`.
3. Criar ou atualizar a nota em `_journal/reno/`.
4. Linkar as entidades mencionadas.
5. Promover para `_entities/` apenas fatos duraveis.
6. Promover para `_decisions/` apenas decisoes aprovadas.
7. Fazer read-back via MCP e reindexar semanticamente apenas se a recuperacao futura imediata depender da nota nova.

### Atualizar fato duravel

1. Buscar a entidade canonica.
2. Conferir aliases, IDs externos e notas relacionadas.
3. Atualizar a entidade apenas se o fato for estavel.
4. Registrar incerteza quando houver ambiguidade.
5. Linkar o evento ou fonte que originou a atualizacao.

### Criar procedimento

1. Confirmar que a informacao e reutilizavel.
2. Buscar runbook existente com finalidade parecida por `semantic_search` e por termo literal.
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
- O Reno buscou semanticamente quando a duvida era por significado ou padrao parecido?
- O Reno buscou literalmente quando havia ID, nome exato, path ou string tecnica?
- O Reno abriu a nota candidata com `read_note` antes de tratar preview/score como evidencia?
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
- Houve read-back via MCP.
- Se a busca semantica precisa encontrar a nota imediatamente, o indice foi refeito ou a necessidade de reindexacao ficou registrada.

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

## Atualizacao 2026-05-12 — decisao de autonomia

A operacao autonoma do Reno no vault foi aprovada por Renato e registrada em `_decisions/2026-05-12-reno-vault-memoria-autonoma.md`.

Ao escrever, o Reno deve manter a separacao:

- evento ou auditoria em `_journal/reno/`;
- fato duravel em `_entities/`;
- procedimento em `_runbooks/`;
- navegacao em `_hubs/`;
- contexto institucional em `_shared/context/`;
- decisao aprovada em `_decisions/`;
- schema e ownership em `_meta/`, apenas com aprovacao.

Toda escrita relevante precisa de read-back via MCP.

## Atualizacao 2026-06-03 — memoria semantica ativa

Renato informou que o `mcp-obsidian` passou a ter memoria semantica ativa com Postgres dedicado, pgvector, `text-embedding-3-large` e embeddings de 1536 dimensoes para compatibilidade com HNSW. O indice inicial foi reconstruido e `semantic_search` ja retorna resultados.

Consequencia operacional: o vault deixou de ser apenas leitura/escrita e busca textual. A recuperacao padrao deve usar busca semantica para significado, busca literal para exatidao e read-back para evidencia. CRM/FamaChat continua sendo a fonte operacional da verdade.
