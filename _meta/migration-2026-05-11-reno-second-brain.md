---
schema_version: 1
type: reference
status: active
created: 2026-05-11
updated: 2026-05-11
source: human-curated
author_agent: null
verified_by: null
verified_at: null
confidence: null
tags: [meta, migration, vault, second-brain]
related: ["[[schema]]", "[[reno-hub]]", "[[reno]]"]
---
# Migracao Reno Second Brain - 2026-05-11

## Objetivo

Migrar o conteudo operacional do Reno de `_agents/reno/**` para a arquitetura global por tipo definida na spec `docs/superpowers/specs/2026-05-11-reno-second-brain-vault-design.md`.

## Escopo

- Migrar runbooks, decisoes, atendimentos, auditorias e journals operacionais do Reno.
- Atualizar indices e mapas do vault.
- Remover `_agents/` como namespace permanente apos auditoria das referencias ativas.

## Fora de escopo

- Mudancas no MCP.
- Mudancas no CRM/FamaChat.
- Mudancas em producao.

## Inventario inicial

| Area | Contagem inicial | Observacao |
| --- | ---: | --- |
| `_agents/reno/atendimentos/` | 153 | Migrar para `_entities/` + `_journal/reno/`. |
| `_agents/reno/auditorias/` | 15 | Migrar para `_journal/reno/`. |
| `_agents/reno/context/` | 5 | Migrar para `_runbooks/reno-*.md`. |
| `_agents/reno/journal/` | 6 | Migrar para `_journal/reno/`. |
| `_agents/reno/decisions.md` | 1 log compilado | Dividir em decisoes atomicas em `_decisions/`. |
| `_agents/reno/decisions/` | 1 | Migrar para `_decisions/`. |
| `_agents/reno/procedimentos/` | 1 | Migrar para `_runbooks/`. |
| `_agents/reno/planos/` | 1 | Migrar para `_journal/reno/` se for plano datado, ou `_runbooks/` se virar procedimento duravel. |

## Status por fase

- [x] Fase 1 - mapas e schema
- [x] Fase 2 - runbooks do Reno
- [x] Fase 3 - decisoes do Reno
- [x] Fase 4 - atendimentos piloto
- [x] Fase 5 - atendimentos em lote
- [x] Fase 6 - auditorias, journals e planos
- [x] Fase 7 - remocao de `_agents/`
- [x] Fase 8 - auditoria final

## Status dos atendimentos

- `_entities/*.md`, excluindo `index.md`: 175 notas.
- `entity_type` explicito: `person: 138`, `property: 8`, `place: 10`, `org: 1`.
- Notas legadas sem `entity_type` explicito: 18.
- Status de entidades: `active: 172`, `archived: 3`.
- `_journal/reno/*.md`: 152 notas.
- Journals de atendimento `2026-05-11-atendimento-*.md`: 149.
- Manifesto de atendimentos: 153 fontes totais.
- Manifesto por status: `migrated-batch-1..6: 149`, `migrated-pilot: 2`, `migrated-pilot-journal-only: 1`, `skipped-user-approved-delete: 1`.
- `whatsapp-lua` foi descartado por decisao do Renato em 2026-05-12; nao foi criada entidade nem journal.
- `pending` normal no manifesto: 0.

## Status operacional Reno

- Destino canonico: `_journal/reno/`.
- Auditorias migradas: 15 notas.
- Journal files migrados: 6 notas.
- Plano datado migrado: 1 nota.
- Total operacional migrado na Fase 6: 22 notas.
- Escolha de migracao: o plano datado foi mantido como `type: journal`, nao promovido para runbook nesta etapa.

## Status da remocao do namespace legado

- 2026-05-11: `_agents/` removido apos verificacao do caminho absoluto `C:\fama-brain\_agents`.
- Wikilinks canonicos legados fora de `_agents/**` foram substituidos pelos destinos Reno-first: [[reno-hub]], [[reno-playbook-atendimento]], [[reno-second-brain-governance]], [[reno-operacao-crm-webhook]] e [[reno-registro-vault]].
- 2026-05-11: auditoria final executada; Fase 8 concluida.

## Auditoria final

Data: 2026-05-11.

Resultado: aprovado para encerramento da migracao Reno-first. A auditoria nao encontrou namespace `_agents/` ativo, nem wikilinks canonicos obsoletos fora de `docs/superpowers/**`. As referencias restantes ao antigo namespace do Reno foram classificadas como evidencias historicas permitidas: paths de origem migrada em entidades/journals, manifesto, ledger, inventario antigo e decisoes historicas.

Checks executados:

- `git status --short --untracked-files=all`: limpo no inicio da auditoria.
- `Test-Path -LiteralPath '_agents'`: `False`.
- Busca pelos cinco wikilinks canonicos obsoletos e pelo wikilink de subpasta do Reno fora de `docs/superpowers/**`: sem resultados.
- Busca pelo namespace historico do Reno fora de `docs/**`: 435 referencias historicas totais. Excluindo o proprio ledger e o manifesto de atendimentos, restaram 272 referencias distribuidas em `_journal` (222), `_decisions` (27), `_entities` (10) e `_meta` (13); todas sao origem/evidencia/inventario/decisao historica permitida.
- Frontmatter em `.md`: somente `docs/superpowers/plans/2026-05-11-reno-second-brain-vault-migration.md` permanece sem `---` inicial; nenhum conteudo de vault relacionado a esta migracao precisou de correcao.
- Indices: `README.md`, `_hubs/index.md`, `_runbooks/index.md`, `_journal/index.md`, `_decisions/index.md` e `_meta/index.md` apontam para as areas canonicas Reno-first ou para o ledger/spec da migracao.
- Manifesto de atendimentos: 153 fontes; 152 migradas ou special-migrated (`migrated-batch-1..6: 149`, `migrated-pilot: 2`, `migrated-pilot-journal-only: 1`); `skipped-user-approved-delete: 1` para `whatsapp-lua`; `pending` normal: 0.
- `git diff --check`: executado antes do commit, sem erros.
- Revisao final pos-auditoria: saneadas duas instrucoes ativas antigas que ainda citavam `_agents/` como destino em `_shared/context/fama/stack.md` e `_entities/bruno-savio.md`.

Item descartado por decisao:

- `whatsapp-lua` foi descartado por decisao do Renato em 2026-05-12; nao foi migrado por falta de identificacao suficiente e porque o arquivo legado ja nao existe apos a remocao de `_agents/`.

Pendencias fora da migracao:

- A aplicacao em massa do schema v1/frontmatter continua fora de escopo enquanto depender de evolucao do MCP.

## Decisoes de migracao

- `_entities/` guarda o perfil consolidado de pessoa, imovel, empreendimento, construtora ou organizacao.
- `_journal/reno/` guarda eventos datados e historico operacional.
- Quando houver risco de perda de nuance, preservar trecho original em secao `## Evidencia original`.
- Quando houver risco de deduplicacao incorreta, manter entidades separadas e registrar a ambiguidade.
