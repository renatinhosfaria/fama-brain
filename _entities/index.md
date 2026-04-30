---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - entities
  - moc
  - perfis-canonicos
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_entities/` — Perfis canônicos

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, não em arquivos separados.

## Subtypes

- `person` — clientes, brokers, parceiros, funcionários, leads.
- `org` — construtoras, parceiros institucionais, fornecedores.
- `property` — imóveis (apartamentos, terrenos, lotes específicos).
- `project` — projetos como entidades (raro — geralmente vai em `_projects/`).

## Naming

Filename = slug do nome canônico em kebab-case. Ex.: `bruno-savio.md`, `apartamento-304a-union-vista.md`, `construtora-xyz.md`.

ID externo do CRM **não é parte do filename canônico** — mora em `external_ids.crm_client_id`. Isso facilita encontrar a entidade por nome em vez de ID.

## Indexação

- Vetoriza: sim. Grafo: sim.
- Notas com `status: archived` (cliente perdido sem atividade > 12 meses) não vetorizam mas mantêm grafo.

## Dedup

Quando encontrar duplicatas (`bruno-savio.md` + `10971-bruno-savio.md`):

1. Consolidar conteúdo único de ambas em uma só (non-destructive merge).
2. Adicionar aliases.
3. Atualizar wikilinks que apontavam para a redundante.
4. Apagar a redundante.

VaultSteward executa dedup quando a decisão sobre qual conteúdo manter é estrutural. Quando há ambiguidade de conteúdo, escala ao dono.
