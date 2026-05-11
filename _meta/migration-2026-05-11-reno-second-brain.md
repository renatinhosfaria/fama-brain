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
related: ["[[schema]]", "[[reno]]"]
---
# Migração Reno Second Brain — 2026-05-11

## Objetivo

Migrar o conteúdo operacional do Reno de `_agents/reno/**` para a arquitetura global por tipo definida na spec `docs/superpowers/specs/2026-05-11-reno-second-brain-vault-design.md`.

## Escopo

- Migrar runbooks, decisões, atendimentos, auditorias e journals operacionais do Reno.
- Atualizar índices e mapas do vault.
- Remover `_agents/` como namespace permanente após auditoria.

## Fora de escopo

- Mudanças no MCP.
- Mudanças no CRM/FamaChat.
- Mudanças em produção.

## Inventário inicial

| Área | Contagem inicial | Observação |
| --- | ---: | --- |
| `_agents/reno/atendimentos/` | 153 | Migrar para `_entities/` + `_journal/reno/`. |
| `_agents/reno/auditorias/` | 15 | Migrar para `_journal/reno/`. |
| `_agents/reno/context/` | 5 | Migrar para `_runbooks/reno-*.md`. |
| `_agents/reno/journal/` | 6 | Migrar para `_journal/reno/`. |
| `_agents/reno/decisions.md` | 1 log compilado | Dividir em decisões atômicas em `_decisions/`. |
| `_agents/reno/decisions/` | 1 | Migrar para `_decisions/`. |
| `_agents/reno/procedimentos/` | 1 | Migrar para `_runbooks/`. |
| `_agents/reno/planos/` | 1 | Migrar para `_journal/reno/` se for plano datado, ou `_runbooks/` se virar procedimento durável. |

## Status por fase

- [ ] Fase 1 — mapas e schema
- [ ] Fase 2 — runbooks do Reno
- [ ] Fase 3 — decisões do Reno
- [ ] Fase 4 — atendimentos piloto
- [ ] Fase 5 — atendimentos em lote
- [ ] Fase 6 — auditorias, journals e planos
- [ ] Fase 7 — remoção de `_agents/`
- [ ] Fase 8 — auditoria final

## Decisões de migração

- `_entities/` guarda o perfil consolidado de pessoa, imóvel, empreendimento, construtora ou organização.
- `_journal/reno/` guarda eventos datados e histórico operacional.
- Quando houver risco de perda de nuance, preservar trecho original em seção `## Evidência original`.
- Quando houver risco de deduplicação incorreta, manter entidades separadas e registrar a ambiguidade.
