---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-05-08'
tags:
  - decisions
  - moc
  - decision-log
schema_version: 1
status: active
source: human-curated
---

# `_decisions/` — Decision log

Vínculos: [[schema]], [[fama-overview]].
**1 decisão = 1 nota.** O log compilado por agente (`_agents/{agente}/decisions.md`) será dissolvido em N notas atômicas durante a migração FAM-16, preservando timestamps e rationale.

## Naming

Filename: `YYYY-MM-DD-{slug}.md` em kebab-case. Ex.: `2026-04-30-adotar-schema-vault-v1.md`.

Título: `Decision: {Sujeito} ({YYYY-MM})`. Ex.: `Decision: Adotar schema vault v1 (2026-04)`.

## Frontmatter mínimo

```yaml
type: decision
status: active | superseded | archived
decided_by: ["[[Renato Faria]]"]
supersedes: []
superseded_by: null
implements: []
mentions_entity: []
related: []
valid_until: null
```

## Bidirecional

Quando decisão A é substituída por B:

- A: `status: superseded`, `superseded_by: ["id-ou-slug-da-decisao-B"]`.
- B: `supersedes: ["id-ou-slug-da-decisao-A"]`.

O responsável pela governança enforça ambos os lados quando o autor só preenche um.

## Indexação

- Vetoriza: sim. Grafo: sim.
- `status: superseded` ou `archived` → não vetoriza, mantém grafo.

## Imutabilidade

Decisões nunca são editadas materialmente. Erro factual → criar decisão nova com `supersedes`. Nenhum agente altera conteúdo de decisão de outro agente.

## Reno

- [[2026-05-11-reno-second-brain-vault]]
- [[2026-05-02-reno-repescagem-arquivamento-automatico-step-5]]
- [[2026-05-02-reno-confirmar-nome-estranho-famachat]]
- [[2026-04-30-reno-repescagem-muda-angulo-cta]]
- [[2026-04-29-reno-skill-repescagem-somente-envio-ativo]]
- [[2026-04-29-reno-status-em-atendimento-para-repescagem]]
- [[2026-04-29-reno-worker-inbound-whatsapp-removido]]
- [[2026-04-28-reno-guardrail-whatsapp-nono-digito]]
- [[2026-04-28-reno-guardrail-whatsapp-tentar-envio]]
- [[2026-04-26-reno-persistencia-operacional-atendimento]]
- [[2026-04-24-reno-obsidian-segundo-cerebro]]
