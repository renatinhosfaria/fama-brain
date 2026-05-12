---
schema_version: 1
type: decision
status: active
created: 2026-04-29
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
decided_by: ["[[renato|Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]"]
related: ["[[reno-hub]]"]
tags: [decision, repescagem, atendimento, skill]
---
# Decision: Skill de repescagem é somente envio ativo, não resposta inbound (2026-04-29)

## Decisão

Renato definiu que `repescagem-follow-up` deve ser uma skill apenas para envio proativo de follow-up a clientes silenciosos. Ela não deve responder mensagens recebidas de clientes, não deve chamar `send_message` para inbound, não deve acionar `fama-reno-whatsapp-qualification` a partir da repescagem e não deve tratar resposta recebida como próximo step. Quando cliente responde, a ação correta é externa à skill: mudar status para `Em Atendimento` quando aplicável e seguir por outro fluxo de atendimento.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
