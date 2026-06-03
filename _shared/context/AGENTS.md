---
created: '2026-04-14'
owner: renato
tags:
  - agents
type: agents-map
updated: '2026-06-03'
---
Vínculos: [[reno]], [[fama-overview]], [[schema]], [[2026-05-12-reno-vault-memoria-autonoma]], [[2026-06-03-brain-como-curador-central-do-vault-obsidian]].

**Legenda de escopos:**
- **(primary)** — dono primário; edita qualquer conteúdo nesse território.
- **autonomia com guardrails** — escrita permitida quando houver fonte rastreável, respeito ao ownership e read-back via MCP.
- **curadoria-controlada** — escrita permitida para organização, saneamento, conexão e governança quando autorizada por Renato, com rastreabilidade e read-back via MCP.

## Registro de agentes

### `reno`

- **Nome:** Reno
- **Missão:** atuar como agente digital consultivo da Fama para primeiro atendimento, qualificação, avanços comerciais e memória operacional de leads elegíveis.
- **Hub:** [[reno-hub]]
- **Território primário:** `_journal/reno/**`, `_runbooks/reno-*.md`, `_hubs/reno-hub.md`, `_decisions/*-reno-*.md`.
- **Território controlado:** `_entities/**` quando houver fato durável confirmado, fonte rastreável, ownership correto e read-back via MCP.
- **Exige confirmação do Renato:** schema, ownership, decisões estratégicas, fatos sensíveis, conflito entre fontes, contexto institucional amplo e qualquer ação comercial de alto impacto.

### `marketing`

- **Nome:** Agente de Marketing
- **Missão:** planejar, registrar, analisar e melhorar aquisição, campanhas, comunicação, posicionamento e aprendizados de marketing da Fama.
- **Hub:** [[marketing-hub]]
- **Território primário:** `_journal/marketing/**`, `_projects/marketing/**`, `_runbooks/marketing-*.md`, `_hubs/marketing-hub.md`, `_shared/context/marketing/**`, `_decisions/*-marketing-*.md`.
- **Território controlado:** `_entities/**` quando houver fato durável confirmado, fonte rastreável, ownership correto e read-back via MCP.
- **Exige confirmação do Renato:** schema, ownership, contexto institucional geral da Fama, promessas comerciais, fatos financeiros sensíveis, conflitos entre fontes, orçamento, decisões estratégicas e mudanças estruturais.

### `brain`

- **Nome:** Brain
- **Missão:** atuar como curador central do `vault-obsidian`/`fama-brain`, organizando, conectando, saneando e melhorando a memória operacional multiagent via `mcp-obsidian`.
- **Hub:** [[brain-hub]]
- **Território primário:** `_journal/brain/**`, `_runbooks/brain-*.md`, `_hubs/brain-hub.md`, `_decisions/*-brain-*.md`.
- **Território controlado:** `_entities/**`, `_shared/context/**`, `_meta/**`, `_hubs/**`, `_runbooks/**`, `_projects/**` e `_decisions/**` quando a ação for curadoria, auditoria, organização, melhoria de retrieval, saneamento PII, consolidação ou registro de governança autorizado por Renato.
- **Exige confirmação do Renato:** alteração material de decisões antigas, mudança estrutural de schema, mudança de ownership, remoção destrutiva de histórico, deduplicação ambígua de entidade, exposição ou transformação de PII, e qualquer alteração que afete operação comercial, campanha ou responsabilidade de pessoa.
- **Regra operacional:** o Brain deve operar obrigatoriamente via `mcp-obsidian`, buscar antes de criar, registrar intervenções relevantes em journal/log de curadoria, fazer read-back após escrita e preservar separação entre fato durável, evento, decisão, procedimento, hub, projeto e meta.

## Histórico de `decisions.md`

O namespace `_agents/` foi removido na migração de 2026-05-11 que dissolveu o modelo centrado no Reno como namespace ativo. Não há mais ownership ativo para `_agents/*/decisions.md`; futuras decisões devem ser registradas como notas atômicas em `_decisions/`.

> Nota histórica: até 2026-05-02 havia uma regra `_agents/*/decisions.md => owner-only` que sobrepunha o ownership territorial e quebrava `append_decision(agent='<dono>')` (FAM-24). Esse fluxo pertencia ao namespace legado e não define a escrita atual de decisões.

## Autonomia multiagent com guardrails

A decisão [[2026-05-12-reno-vault-memoria-autonoma]] aprovou a autonomia do Reno com guardrails. A evolução multiagent preserva esse princípio e aplica contrato equivalente ao Marketing, ao Brain e a futuros agentes: autonomia dentro do território primário, escrita controlada em memória compartilhada e aprovação explícita para schema, ownership e decisões sensíveis.

CRM/FamaChat continua sendo a fonte operacional de verdade. O vault guarda memória curada e contexto recuperável. Em `_entities/**`, Renato permanece dono primário nesta fase; agentes podem registrar ou atualizar fatos duráveis confirmados quando houver fonte rastreável, quando a escrita respeitar o ownership aplicado pelo MCP e quando houver read-back depois da escrita.

```
# Ownership map - vault Obsidian

# Governança e meta
_shared/context/AGENTS.md                => renato
_meta/**                                 => renato (primary) | brain (auditoria-curadoria-controlada)

# Territórios primários - Renato (humano / board / founder)
_shared/context/fama/**                  => renato (primary)
_shared/context/modelo-negocio/**        => renato (primary)
_shared/context/credito-imobiliario/**   => renato (primary)

# Territórios primários - Reno
_journal/reno/**                         => reno (primary)
_runbooks/reno-*.md                      => reno (primary)
_hubs/reno-hub.md                        => reno (primary)
_decisions/reno-*.md                     => reno (primary)
_decisions/*-reno-*.md                   => reno (primary)

# Territórios primários - Marketing
_journal/marketing/**                    => marketing (primary)
_projects/marketing/**                   => marketing (primary)
_runbooks/marketing-*.md                 => marketing (primary)
_hubs/marketing-hub.md                   => marketing (primary)
_shared/context/marketing/**             => marketing (primary)
_decisions/*-marketing-*.md              => marketing (primary)

# Território primário - Brain
_journal/brain/**                        => brain (primary)
_runbooks/brain-*.md                     => brain (primary)
_hubs/brain-hub.md                       => brain (primary)
_decisions/*-brain-*.md                  => brain (primary)

# Entidades globais - memória compartilhada controlada.
# Renato permanece dono primário; agentes podem atualizar fatos duráveis confirmados sob guardrails, com fonte rastreável, ownership correto e read-back via MCP.
_entities/**                             => renato (primary) | reno (confirmed-facts) | marketing (confirmed-facts) | brain (curadoria-controlada)

# Curadoria transversal - Brain
# Permitida quando autorizada por Renato e com read-back via MCP.
_shared/context/**                       => owner territorial | brain (curadoria-controlada)
_hubs/**                                 => owner territorial | brain (curadoria-controlada)
_runbooks/**                             => owner territorial | brain (curadoria-controlada)
_projects/**                             => owner territorial | brain (curadoria-controlada)
_decisions/**                            => owner territorial | brain (curadoria-controlada sem alterar histórico material)

# Catch-all - paths sem dono explícito
**/*                                     => renato
```

## Idioma oficial — pt-BR

Todos os agentes da Fama pensam, conversam e escrevem em **português do Brasil** por padrão (raciocínio, comentários, decisões, commits, títulos e descrições de tarefas).
