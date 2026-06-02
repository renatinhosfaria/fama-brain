---
created: '2026-04-30'
owner: renato
tags:
  - meta
  - moc
  - governance
type: moc
updated: '2026-06-02'
---
# `_meta/` — Documentação do próprio vault

Pasta para o que **não** é conteúdo do segundo cérebro, mas governa seu funcionamento, migração, avaliação e estado técnico.

## Conteúdo atual

- [[schema]] — Schema v1 canônico, estado operacional dos types/frontmatter e política de transição.
- [[migration-2026-05-11-reno-second-brain]] — ledger da migração Reno-first.
- [[reno-atendimentos-migration-manifest-2026-05-11]] — manifesto de migração dos atendimentos Reno para `_entities/` + `_journal/reno/`.
- [[inventory-2026-04-30]] — inventário pré-migração; snapshot histórico, não fonte única do estado atual.
- [[inventory-2026-05-13-reno-post-migration]] — inventário pós-migração e baseline atual do vault Reno-first.
- [[embedding-state]] — estado conhecido de embeddings/retrieval e limitações atuais.
- [[golden-queries]] — perguntas canônicas para validar recuperação de contexto.
- [[retrieval-policy]] — política de prioridade de fontes, indexação operacional e tratamento de docs históricos.
- [[pii-redaction-policy]] — política de minimização e redaction de dados sensíveis em respostas e novas escritas.
- [[pii-scan-2026-06-02]] — auditoria redigida de ocorrências sensíveis no vault.

## Regras

- `_meta/` **não vetoriza** nem entra no grafo operacional por padrão. Serve para auditoria, schema, migração e avaliação.
- Mudanças em `schema.md`, inventário, migração, avaliação ou política de indexação requerem aprovação de Renato.
- Arquivos aqui não seguem obrigatoriamente a convenção de título `{Tipo}: {Sujeito}` — são docs internos do vault.
- Referências históricas a `_agents/reno` podem permanecer em manifestos, inventários e linhas de proveniência, mas não devem aparecer como destino ativo de escrita.
- Specs/plans históricos devem ser tratados como auditoria, não como fonte operacional superior a decisões, runbooks e READMEs locais.
- Relatórios PII devem registrar contagens e exemplos redigidos, nunca valores brutos.
