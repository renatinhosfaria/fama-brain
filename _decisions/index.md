---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-05-13'
tags:
  - decisions
  - moc
  - decision-log
---
# `_decisions/` — Decision log

Vínculos: [[schema]], [[fama-overview]].
**1 decisão = 1 nota.** O log compilado do Reno foi dissolvido em decisões atômicas durante a migração Reno-first de 2026-05-11, preservando timestamps e rationale.

## Naming

Filename: `YYYY-MM-DD-{slug}.md` em kebab-case. Ex.: `2026-04-30-adotar-schema-vault-v1.md`.

Título: `Decision: {Sujeito} ({YYYY-MM})`. Ex.: `Decision: Adotar schema vault v1 (2026-04)`.

## Frontmatter mínimo

```yaml
type: decision
status: active | superseded | archived
decided_by: ["[[renato|Renato Faria]]"]
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

- [[2026-04-24-reno-backlog-sem-atendimento-lote-2]]
- [[2026-04-24-reno-conteudo-em-global-second-brain]]
- [[2026-04-24-reno-disparo-controlado-backlog-sem-atendimento]]
- [[2026-04-24-reno-documentos-operacionais-minimos]]
- [[2026-04-24-reno-nao-perde-timing-visita]]
- [[2026-04-24-reno-obsidian-segundo-cerebro]]
- [[2026-04-24-reno-prioriza-produto-antes-financeiro]]
- [[2026-04-26-reno-persistencia-operacional-atendimento]]
- [[2026-04-27-reno-plano-reversao-performance]]
- [[2026-04-28-reno-guardrail-whatsapp-nono-digito]]
- [[2026-04-28-reno-guardrail-whatsapp-tentar-envio]]
- [[2026-04-29-reno-handoff-pos-repescagem-worker-inbound]]
- [[2026-04-29-reno-resposta-repescagem-handoff-obrigatorio]]
- [[2026-04-29-reno-skill-repescagem-somente-envio-ativo]]
- [[2026-04-29-reno-status-em-atendimento-para-repescagem]]
- [[2026-04-29-reno-worker-inbound-whatsapp-criado]]
- [[2026-04-29-reno-worker-inbound-whatsapp-removido]]
- [[2026-04-30-reno-followups-independentes]]
- [[2026-04-30-reno-repescagem-muda-angulo-cta]]
- [[2026-05-02-reno-confirmar-nome-estranho-famachat]]
- [[2026-05-02-reno-repescagem-arquivamento-automatico-step-5]]
- [[2026-05-11-reno-second-brain-vault]]
- [[2026-05-12-reno-vault-memoria-autonoma]] — decisão canônica atual sobre a autonomia do Reno no vault com guardrails.
