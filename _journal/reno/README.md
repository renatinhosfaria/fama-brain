---
type: moc
owner: reno
created: '2026-05-12'
updated: '2026-05-12'
tags: [reno, journal, atendimento]
---
# `_journal/reno/`

## Finalidade

`_journal/reno/` guarda eventos operacionais datados do Reno: atendimentos, auditorias, logs, rotinas, planos e observacoes de execucao.

## Quando buscar aqui

- Quando a pergunta envolver atendimento feito pelo Reno.
- Quando precisar reconstruir uma linha do tempo operacional.
- Quando uma entidade tiver historico de contato ou evento migrado.
- Quando a informacao buscada for acontecimento, nao perfil canonico.

## Quando escrever aqui

- Quando o Reno registrar novo atendimento ou follow-up.
- Quando houver auditoria, plano, rotina ou log datado.
- Quando uma informacao ainda for bruta e precisar ser preservada antes da consolidacao.
- Quando a acao do Reno gerar evidencia operacional.

## Regras para o Reno

- Deve nomear arquivos como `YYYY-MM-DD-{slug}.md`.
- Deve citar a data absoluta no corpo da nota.
- Deve linkar a entidade canonica em `_entities/` quando ela existir.
- Deve registrar apenas o evento aqui; fatos estaveis devem ser consolidados em `_entities/`.
- Deve marcar incerteza quando nome, telefone, status ou origem nao forem confiaveis.
- Nao deve criar decisao em journal; decisao aprovada pertence a `_decisions/`.
- Nao deve esconder pendencia operacional em texto solto; deve deixar proxima acao clara quando houver.
- Deve pedir confirmacao antes de registrar informacao sensivel ou contraditoria como fato.

## Ver tambem

- [[reno-vault-operacao]]
- [[_journal/README]]
- [[_entities/README]]
- [[reno-hub]]
