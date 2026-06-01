---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-06-01'
tags:
  - journal
  - moc
  - timeline
---

# `_journal/` — Atividade do dia / log operacional

Vínculos: [[schema]], [[fama-overview]].
Journals capturam eventos crus. Atendimentos, calls, visitas, auditorias diárias, daily notes.

## Tipos canônicos aqui

- `journal` — diário do agente ou daily note.
- `interaction` — comunicação registrada (atendimento WhatsApp, call, visita).

## Naming

Filename: `YYYY-MM-DD-{slug}.md`. Ex.: `2026-04-30-bootstrap-sanity.md`, `2026-04-29-bruno-savio-call-comissao.md`.

Subpastas ativas por agente: `_journal/{agent_id}/YYYY-MM-DD-{slug}.md`. Ex.: `_journal/reno/2026-04-30-atendimento-elias.md`.

## Subpastas

- `_journal/reno/` — eventos operacionais de alto volume do Reno: atendimentos, auditorias, rotinas, logs e planos datados.
- `_journal/marketing/` — eventos datados de marketing: campanhas, leituras de resultado, experimentos e rotinas do agente de Marketing.
- Migracao 2026-05-11: alem dos atendimentos, `_journal/reno/` inclui 22 notas operacionais migradas de auditorias, journals antigos e planos datados.

## Indexação

- **Não vetoriza** (alto volume, baixo sinal).
- Vetoriza no grafo: sim — útil para timeline e backlinks.
- Override por `status` mantém regra padrão.

## Promoção

Quando um aprendizado de journal vira reutilizável, autor cria nota no contexto temático adequado e backlinks o journal de origem.
