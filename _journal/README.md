---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-06-01'
tags: [journal, agentes, eventos]
---
# `_journal/`

## Finalidade

`_journal/` guarda memoria episodica: eventos datados, logs operacionais, atendimentos, auditorias, calls, visitas e rotinas.

## Quando buscar aqui

- Quando um agente precisar saber o que aconteceu em uma data.
- Quando precisar conferir atendimento, call, visita, auditoria ou plano datado.
- Quando uma resposta depender de sequencia temporal.
- Quando uma entidade tiver evento relacionado que explica a origem de um fato.

## Quando escrever aqui

- Quando houver novo evento datado.
- Quando um agente registrar atendimento, campanha, auditoria, rotina ou plano operacional.
- Quando a informacao for historico de acontecimento, nao fato duravel.
- Quando uma fonte bruta precisar ser preservada antes de consolidacao.

## Regras para agentes

- Devem usar data absoluta no nome e no corpo da nota.
- Devem escrever eventos no proprio territorio: `_journal/reno/` para Reno, `_journal/marketing/` para Marketing e `_journal/{agent_id}/` para agentes futuros.
- Devem linkar entidades mencionadas sempre que existirem.
- Devem promover fatos duraveis para `_entities/` apenas quando forem confirmados, com fonte rastreavel, ownership correto e read-back.
- Devem promover decisoes aprovadas para `_decisions/`.
- Nao devem usar journal como fonte canonica quando ja existir nota consolidada.
- Nao devem editar o journal primario de outro agente.

## Ver tambem

- [[reno-vault-operacao]]
- [[marketing-vault-operacao]]
- [[_journal/index]]
- [[_journal/reno/README]]
- [[_journal/marketing/README]]
- [[_entities/README]]
