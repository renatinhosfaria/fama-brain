---
schema_version: 1
type: decision
status: active
created: 2026-04-26
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]", "[[reno-registro-vault]]"]
related: ["[[reno-hub]]", "[[2026-05-11-reno-second-brain-vault]]"]
tags: [decision, atendimento, crm, vault]
---
# Decision: Persistência operacional por atendimento: status CRM, anotações e documento único no vault (2026-04-26)

## Decisão

Renato definiu que o Reno deve: (1) ao enviar a primeira mensagem WhatsApp, alterar o cliente de `Sem Atendimento` para `Não Respondeu`; (2) quando o lead responder pela primeira vez, alterar de `Não Respondeu` para `Em Atendimento`; (3) registrar no FamaChat tudo que for importante ou relevante do atendimento; (4) manter um documento único por atendimento no vault via mcp-obsidian, usando caminho determinístico por cliente para evitar duplicidade. Esta regra foi incorporada ao SOUL do Reno, à skill operacional `fama-reno-webhook-first-contact` e ao prompt da rota `famachat-created` para o primeiro envio.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
