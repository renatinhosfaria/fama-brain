---
schema_version: 1
type: decision
status: active
created: 2026-05-11
updated: 2026-05-11
source: human-curated
author_agent: null
verified_by: "Renato Faria"
verified_at: 2026-05-11
confidence: high
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
supersedes: ["[[2026-04-24-reno-conteudo-em-global-second-brain]]"]
related: ["[[reno-hub]]", "[[schema]]"]
tags: [decision, vault, second-brain, governanca]
---
# Decision: Vault Reno-first como segundo cérebro (2026-05-11)

Renato aprovou que o `fama-brain` seja reestruturado, nesta fase, como segundo cérebro operacional do Reno, com memória organizada por tipo de conhecimento e sem `_agents/` como namespace permanente.

## Regras aprovadas

- Fatos duráveis sobre pessoas, imóveis e organizações ficam em `_entities/`.
- Eventos datados do Reno ficam em `_journal/reno/`.
- Procedimentos ficam em `_runbooks/`.
- Decisões duráveis ficam em `_decisions/`.
- Governança do vault fica em `_meta/`.
- MCP e CRM ficam fora desta primeira implementação.
