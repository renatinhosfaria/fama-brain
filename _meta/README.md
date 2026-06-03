---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-06-01'
tags: [meta, agentes, governanca]
---
# `_meta/`

## Finalidade

`_meta/` guarda documentos que governam o proprio vault: schema, inventario, migracoes, avaliacao e estado tecnico da memoria.

## Quando buscar aqui

- Quando um agente precisar entender schema, tipos de nota ou politica de indexacao.
- Quando houver duvida sobre migracao, inventario ou estrutura do vault.
- Quando a pergunta for sobre como o vault funciona, nao sobre a Fama.
- Quando for necessario conferir criterios de governanca antes de escrever.

## Quando escrever aqui

- Quando Renato aprovar documento de governanca do vault.
- Quando uma migracao, inventario ou avaliacao precisar ser registrada.
- Quando houver mudanca documentada no estado tecnico da memoria.
- Quando um arquivo for sobre o sistema de memoria, nao sobre operacao comercial.

## Regras para agentes

- Agentes devem tratar `_meta/` como area sensivel.
- Agentes devem consultar [[schema]] antes de propor mudanca de tipo, frontmatter ou politica de indexacao.
- Agentes devem pedir confirmacao antes de alterar schema, inventario, migracao ou avaliacao.
- Agentes nao devem registrar atendimento, entidade, decisao comercial ou procedimento comum em `_meta/`.
- Agentes nao devem usar pendencias de `_meta/` como desculpa para escrever fora do padrao atual.
- Agentes devem linkar mudancas de governanca a decisoes em `_decisions/` quando houver aprovacao.

## Ver tambem

- [[reno-vault-operacao]]
- [[marketing-vault-operacao]]
- [[_meta/index]]
- [[schema]]
- [[_shared/context/AGENTS]]


## Regra literal de localização meta

Schema, inventário e política de retrieval ficam em `_meta/`.

Quando a pergunta for “onde registrar schema, inventário e política de retrieval?”, a resposta canônica é `_meta/`, consultando especialmente [[schema]], [[_meta/index]], [[retrieval-policy]], [[embedding-state]] e [[golden-queries]].
