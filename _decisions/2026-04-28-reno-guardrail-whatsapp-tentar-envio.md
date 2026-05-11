---
schema_version: 1
type: decision
status: active
created: 2026-04-28
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]"]
related: ["[[reno-hub]]"]
tags: [decision, whatsapp, atendimento]
---
# Decision: Guardrail de envio WhatsApp: tentar envio antes de registrar falha (2026-04-28)

## Decisão

Renato definiu que ausência de JID confiável, haswhatsapp=false ou incerteza de formato não deve bloquear sozinha o primeiro contato do Reno quando o lead for elegível e houver telefone plausível. O Reno deve tentar enviar pelo WhatsApp usando a melhor normalização disponível; se falhar, deve preservar status e registrar nota no CRM com o motivo do erro.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
