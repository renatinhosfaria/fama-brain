---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags:
  - entities
  - reno
  - memoria
---
# `_entities/`

## Finalidade

`_entities/` guarda a memoria semantica canonica sobre pessoas, imoveis, organizacoes, lugares e projetos tratados como entidades.

## Quando buscar aqui

- Quando o Reno precisar lembrar quem e uma pessoa.
- Quando precisar conferir dados duraveis de cliente, lead, broker, parceiro, imovel, empreendimento, bairro ou organizacao.
- Quando precisar verificar aliases, IDs externos, relacoes ou historico consolidado.
- Quando um evento citar alguem ou algo que pode ja ter nota canonica.

## Quando escrever aqui

- Quando surgir uma nova entidade real ainda sem nota canonica.
- Quando um fato duravel sobre entidade existente precisar ser acrescentado.
- Quando aliases, IDs externos ou relacoes precisarem ser consolidados.
- Quando um atendimento gerar aprendizado estavel sobre pessoa, imovel ou organizacao.

## Regras para o Reno

- Deve buscar por nome, telefone, aliases, empreendimento e IDs externos antes de criar entidade nova.
- Deve manter uma unica nota canonica por entidade real.
- Deve atualizar entidade existente antes de criar arquivo parecido.
- Deve registrar ambiguidade no corpo quando nao houver certeza se duas entidades sao a mesma.
- Nao deve colocar evento datado como fato principal da entidade; evento pertence a `_journal/reno/`.
- Nao deve tratar suposicao como fato duravel.
- Deve linkar eventos, decisoes ou projetos que sustentam a informacao.
- Deve pedir confirmacao antes de fundir entidades ambiguas.

## Ver tambem

- [[reno-vault-operacao]]
- [[_entities/index]]
- [[_journal/reno/README]]
- [[schema]]
