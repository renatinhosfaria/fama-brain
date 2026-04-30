---
type: moc
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - journal
  - moc
  - timeline
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
---

# `_journal/` — Atividade do dia / log operacional

Journals capturam eventos crus. Atendimentos, calls, visitas, auditorias diárias, daily notes.

## Tipos canônicos aqui

- `journal` — diário do agente ou daily note.
- `interaction` — comunicação registrada (atendimento WhatsApp, call, visita).

## Naming

Filename: `YYYY-MM-DD-{slug}.md`. Ex.: `2026-04-30-bootstrap-sanity.md`, `2026-04-29-bruno-savio-call-comissao.md`.

Subpastas permitidas por agente: `_journal/{agente}/YYYY-MM-DD-{slug}.md` (opcional, para volume alto). Ex.: `_journal/reno/2026-04-30-atendimento-elias.md`.

## Indexação

- **Não vetoriza** (alto volume, baixo sinal).
- Vetoriza no grafo: sim — útil para timeline e backlinks.
- Override por `status` mantém regra padrão.

## Promoção

Quando um aprendizado de journal vira reutilizável, autor cria nota em `_curated/` (concept) e backlinks o journal de origem.
