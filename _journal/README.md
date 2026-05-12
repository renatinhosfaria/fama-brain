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
