---
created: '2026-04-30'
owner: renato
tags:
  - meta
  - moc
  - governance
type: moc
updated: '2026-05-13'
---
# `_meta/` — Documentação do próprio vault

Pasta para o que **não** é conteúdo do segundo cérebro, mas governa seu funcionamento, migração, avaliação e estado técnico.

## Conteúdo atual

- [[schema]] — Schema v1 canônico e estado operacional dos types/frontmatter.
- [[migration-2026-05-11-reno-second-brain]] — ledger da migração Reno-first.
- [[reno-atendimentos-migration-manifest-2026-05-11]] — manifesto de migração dos atendimentos Reno para `_entities/` + `_journal/reno/`.
- [[inventory-2026-04-30]] — inventário pré-migração; snapshot histórico, não fonte única do estado atual.
- [[inventory-2026-05-13-reno-post-migration]] — inventário pós-migração e baseline atual do vault Reno-first.

## Pendências planejadas

- `embedding-state.md` — registrar estado de embeddings/retrieval, escopo indexado e exclusões operacionais.
- `golden-queries.md` — conjunto de perguntas reais com respostas esperadas e fontes canônicas.
- `retrieval-policy.md` — política para priorizar decisões/runbooks/READMEs e tratar specs/plans históricos como auditoria, não fonte operacional padrão.

## Regras

- `_meta/` **não vetoriza** nem entra no grafo operacional por padrão. Serve para auditoria, schema, migração e avaliação.
- Mudanças em `schema.md`, inventário, migração, avaliação ou política de indexação requerem aprovação de Renato.
- Arquivos aqui não seguem obrigatoriamente a convenção de título `{Tipo}: {Sujeito}` — são docs internos do vault.
- Referências históricas a `_agents/reno` podem permanecer em manifestos, inventários e linhas de proveniência, mas não devem aparecer como destino ativo de escrita.
