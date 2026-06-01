---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-06-01'
tags:
  - entities
  - agentes
  - memoria
---
# `_entities/`

## Finalidade

`_entities/` guarda a memoria semantica canonica sobre pessoas, imoveis, organizacoes, lugares e projetos tratados como entidades.

## Quando buscar aqui

- Quando um agente precisar lembrar quem e uma pessoa.
- Quando precisar conferir dados duraveis de cliente, lead, broker, parceiro, imovel, empreendimento, bairro ou organizacao.
- Quando precisar verificar aliases, IDs externos, relacoes ou historico consolidado.
- Quando um evento citar alguem ou algo que pode ja ter nota canonica.

## Quando escrever aqui

- Quando surgir uma nova entidade real ainda sem nota canonica.
- Quando um fato duravel sobre entidade existente precisar ser acrescentado.
- Quando aliases, IDs externos ou relacoes precisarem ser consolidados.
- Quando um evento, atendimento, campanha ou projeto gerar aprendizado estavel sobre pessoa, imovel ou organizacao.

## Regras para agentes

- Devem buscar por nome, telefone, aliases, empreendimento e IDs externos antes de criar entidade nova.
- Devem manter uma unica nota canonica por entidade real.
- Devem atualizar entidade existente antes de criar arquivo parecido.
- Devem registrar ambiguidade no corpo quando nao houver certeza se duas entidades sao a mesma.
- Devem escrever em `_entities/**` apenas quando houver fato duravel confirmado, fonte rastreavel, ownership correto e read-back.
- Nao devem colocar evento datado como fato principal da entidade; evento pertence a `_journal/{agent_id}/`.
- Nao devem tratar suposicao como fato duravel.
- Devem linkar eventos, decisoes, projetos ou contexto que sustentam a informacao.
- Devem pedir confirmacao antes de fundir entidades ambiguas.

## Ver tambem

- [[reno-vault-operacao]]
- [[marketing-vault-operacao]]
- [[_entities/index]]
- [[_journal/reno/README]]
- [[_journal/marketing/README]]
- [[_shared/context/AGENTS]]
- [[schema]]
