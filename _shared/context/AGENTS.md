---
created: '2026-04-14'
owner: renato
tags:
  - agents
type: agents-map
updated: '2026-05-13'
---
Vínculos: [[reno]], [[fama-overview]], [[schema]], [[2026-05-12-reno-vault-memoria-autonoma]].

**Legenda de escopos:**
- **(primary)** — dono primário; edita qualquer conteúdo nesse território.
- **autonomia com guardrails** — escrita permitida quando houver fonte rastreável, respeito ao ownership e read-back via MCP.

## Historico de `decisions.md`

O namespace `_agents/` foi removido na migracao Reno-first de 2026-05-11. Nao ha mais ownership ativo para `_agents/*/decisions.md`; futuras decisoes devem ser registradas como notas atomicas em `_decisions/`.

> Nota histórica: até 2026-05-02 havia uma regra `_agents/*/decisions.md => owner-only` que sobrepunha o ownership territorial e quebrava `append_decision(agent='<dono>')` (FAM-24). Esse fluxo pertencia ao namespace legado e não define a escrita atual de decisões.

## Autonomia do Reno em Opção C

A decisão [[2026-05-12-reno-vault-memoria-autonoma]] aprovou que o Reno opere o vault como segunda memoria autonoma com guardrails. O CRM/FamaChat continua sendo a fonte operacional de verdade. O vault guarda memoria curada e contexto recuperavel.

Em `_entities/**`, Renato permanece dono primario nesta fase. O Reno pode registrar ou atualizar fatos duraveis confirmados quando houver fonte rastreavel, quando a escrita respeitar o ownership aplicado pelo MCP e quando houver read-back depois da escrita. Decisoes canonicas, schema, ownership e mudancas estruturais continuam exigindo aprovacao explicita de Renato.

```
# Ownership map — vault Obsidian

# Governança e meta
_shared/context/AGENTS.md                => renato

# Territórios primários — Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary)
_shared/context/modelo-negocio/**        => renato (primary)
_shared/context/credito-imobiliario/**   => renato (primary)

# Territórios primários — Reno (corretor, OpenClaw)
_journal/reno/**                         => reno (primary)
_runbooks/reno-*.md                      => reno (primary)
_decisions/reno-*.md                     => reno (primary)
_decisions/*-reno-*.md                   => reno (primary)

# Entidades globais — Renato permanece dono primário; Reno pode atualizar fatos duráveis confirmados sob Opção C, com fonte rastreável, ownership correto e read-back via MCP.
_entities/**                             => renato (primary)

# Catch-all — paths sem dono explícito
**/*                                     => renato
```

## Idioma oficial — pt-BR

Todos os agentes da Fama pensam, conversam e escrevem em **português do Brasil** por padrão (raciocínio, comentários, decisões, commits, títulos e descrições de tarefas).
