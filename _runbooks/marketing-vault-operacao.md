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
- Fato duravel sobre entidade real: `_entities/`, apenas quando confirmado, com fonte rastreavel, ownership correto e read-back.
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
