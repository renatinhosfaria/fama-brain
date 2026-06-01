---
type: moc
owner: renato
created: '2026-05-12'
updated: '2026-06-01'
tags: [shared, agentes, contexto]
---
# `_shared/`

## Finalidade

`_shared/` guarda contexto compartilhado de alto nivel que pode orientar agentes sem pertencer a um atendimento, entidade ou projeto especifico.

## Quando buscar aqui

- Quando um agente precisar de contexto institucional ou tematico amplo.
- Quando a pergunta envolver Fama, modelo de negocio, credito imobiliario ou operacao geral.
- Quando a informacao nao for evento datado nem perfil de entidade.
- Quando um runbook ou decisao apontar para contexto comum.

## Quando escrever aqui

- Quando houver contexto duravel que sirva a mais de um fluxo.
- Quando um conceito, referencia ou material institucional precisar ser preservado.
- Quando a informacao for compartilhada entre areas e nao couber melhor em `_entities/`, `_journal/{agent_id}/`, `_decisions/`, `_runbooks/`, `_hubs/`, `_projects/` ou `_meta/`.

## Regras para agentes

- Devem preferir `_shared/context/` para contexto textual compartilhado.
- Devem manter contexto institucional separado de atendimento individual.
- Devem linkar contexto a entidades, runbooks, decisoes ou projetos quando houver relacao.
- Nao devem usar `_shared/` como pasta generica para duvidas de destino.
- Nao devem criar nova subpasta compartilhada sem confirmar a finalidade.
- Devem respeitar ownership definido em [[_shared/context/AGENTS]].

## Ver tambem

- [[reno-vault-operacao]]
- [[marketing-vault-operacao]]
- [[_shared/context/README]]
- [[_shared/context/AGENTS]]
- [[schema]]
