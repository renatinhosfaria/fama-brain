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
