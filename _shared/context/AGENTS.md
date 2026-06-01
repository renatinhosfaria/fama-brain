---
created: '2026-04-14'
owner: renato
tags:
  - agents
type: agents-map
updated: '2026-06-01'
---
Vínculos: [[reno]], [[fama-overview]], [[schema]], [[2026-05-12-reno-vault-memoria-autonoma]].

**Legenda de escopos:**
- **(primary)** — dono primário; edita qualquer conteúdo nesse território.
- **autonomia com guardrails** — escrita permitida quando houver fonte rastreável, respeito ao ownership e read-back via MCP.

## Registro de agentes

### `reno`

- **Nome:** Reno
- **Missao:** atuar como agente digital consultivo da Fama para primeiro atendimento, qualificacao, avancos comerciais e memoria operacional de leads elegiveis.
- **Hub:** [[reno-hub]]
- **Territorio primario:** `_journal/reno/**`, `_runbooks/reno-*.md`, `_hubs/reno-hub.md`, `_decisions/*-reno-*.md`.
- **Territorio controlado:** `_entities/**` quando houver fato duravel confirmado, fonte rastreavel, ownership correto e read-back via MCP.
- **Exige confirmacao do Renato:** schema, ownership, decisoes estrategicas, fatos sensiveis, conflito entre fontes, contexto institucional amplo e qualquer acao comercial de alto impacto.

### `marketing`

- **Nome:** Agente de Marketing
- **Missao:** planejar, registrar, analisar e melhorar aquisicao, campanhas, comunicacao, posicionamento e aprendizados de marketing da Fama.
- **Hub:** [[marketing-hub]]
- **Territorio primario:** `_journal/marketing/**`, `_projects/marketing/**`, `_runbooks/marketing-*.md`, `_hubs/marketing-hub.md`, `_shared/context/marketing/**`, `_decisions/*-marketing-*.md`.
- **Territorio controlado:** `_entities/**` quando houver fato duravel confirmado, fonte rastreavel, ownership correto e read-back via MCP.
- **Exige confirmacao do Renato:** schema, ownership, contexto institucional geral da Fama, promessas comerciais, fatos financeiros sensiveis, conflitos entre fontes, orcamento, decisoes estrategicas e mudancas estruturais.

## Historico de `decisions.md`

O namespace `_agents/` foi removido na migracao Reno-first de 2026-05-11. Nao ha mais ownership ativo para `_agents/*/decisions.md`; futuras decisoes devem ser registradas como notas atomicas em `_decisions/`.

> Nota histórica: até 2026-05-02 havia uma regra `_agents/*/decisions.md => owner-only` que sobrepunha o ownership territorial e quebrava `append_decision(agent='<dono>')` (FAM-24). Esse fluxo pertencia ao namespace legado e não define a escrita atual de decisões.

## Autonomia multiagent com guardrails

A decisao [[2026-05-12-reno-vault-memoria-autonoma]] aprovou a autonomia do Reno com guardrails. A evolucao multiagent preserva esse principio e aplica o mesmo contrato ao Marketing e a futuros agentes: autonomia dentro do territorio primario, escrita controlada em memoria compartilhada e aprovacao explicita para schema, ownership e decisoes sensiveis.

CRM/FamaChat continua sendo a fonte operacional de verdade. O vault guarda memoria curada e contexto recuperavel. Em `_entities/**`, Renato permanece dono primario nesta fase; agentes podem registrar ou atualizar fatos duraveis confirmados quando houver fonte rastreavel, quando a escrita respeitar o ownership aplicado pelo MCP e quando houver read-back depois da escrita.

```
# Ownership map - vault Obsidian

# Governanca e meta
_shared/context/AGENTS.md                => renato
_meta/**                                 => renato

# Territorios primarios - Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary)
_shared/context/modelo-negocio/**        => renato (primary)
_shared/context/credito-imobiliario/**   => renato (primary)

# Territorios primarios - Reno
_journal/reno/**                         => reno (primary)
_runbooks/reno-*.md                      => reno (primary)
_hubs/reno-hub.md                        => reno (primary)
_decisions/reno-*.md                     => reno (primary)
_decisions/*-reno-*.md                   => reno (primary)

# Territorios primarios - Marketing
_journal/marketing/**                    => marketing (primary)
_projects/marketing/**                   => marketing (primary)
_runbooks/marketing-*.md                 => marketing (primary)
_hubs/marketing-hub.md                   => marketing (primary)
_shared/context/marketing/**             => marketing (primary)
_decisions/*-marketing-*.md              => marketing (primary)

# Entidades globais - memoria compartilhada controlada.
# Renato permanece dono primario; Reno e Marketing podem atualizar fatos duraveis confirmados sob guardrails, com fonte rastreavel, ownership correto e read-back via MCP.
_entities/**                             => renato (primary)

# Catch-all - paths sem dono explicito
**/*                                     => renato
```

## Idioma oficial — pt-BR

Todos os agentes da Fama pensam, conversam e escrevem em **português do Brasil** por padrão (raciocínio, comentários, decisões, commits, títulos e descrições de tarefas).
