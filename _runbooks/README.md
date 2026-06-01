---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-06-01'
tags: [runbooks, agentes, operacao]
---
# `_runbooks/`

## Finalidade

`_runbooks/` guarda procedimentos repetiveis, playbooks e manuais operacionais que orientam como agentes devem agir.

## Quando buscar aqui

- Quando um agente precisar saber como executar uma rotina.
- Quando a duvida for sobre processo, criterio de decisao ou sequencia de passos.
- Quando uma regra operacional precisar ser aplicada varias vezes.
- Quando um agente precisar entender como usar o vault antes de escrever.

## Quando escrever aqui

- Quando houver um procedimento duravel aprovado.
- Quando uma rotina de agente precisar virar manual reutilizavel.
- Quando um playbook de atendimento ou governanca precisar ser consultado por mais de uma sessao.
- Quando a informacao for sobre modo de operar, nao sobre evento ou entidade.

## Regras para agentes

- Devem consultar o runbook do proprio agente antes de criar ou atualizar documentos do vault quando houver duvida de destino.
- Devem escrever procedimentos como sequencias verificaveis de decisao ou acao.
- Devem nomear runbooks por agente quando o procedimento for territorial: `reno-*.md`, `marketing-*.md` ou `{agent_id}-*.md`.
- Devem manter procedimentos separados de eventos; evento datado pertence a `_journal/{agent_id}/`.
- Devem manter procedimentos separados de decisoes; decisao aprovada pertence a `_decisions/`.
- Nao devem registrar fato duravel de cliente, imovel ou organizacao apenas em runbook.
- Devem linkar runbooks a [[schema]] e ao contexto relevante quando a regra depender de governanca.
- Devem pedir confirmacao do Renato antes de alterar procedimento que muda responsabilidade, ownership ou criterio comercial.

## Ver tambem

- [[reno-vault-operacao]]
- [[marketing-vault-operacao]]
- [[reno-hub]]
- [[marketing-hub]]
- [[_shared/context/AGENTS]]
- [[schema]]
