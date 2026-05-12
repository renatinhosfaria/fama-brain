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
