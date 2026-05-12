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
decided_by: ["[[renato|Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]"]
related: ["[[reno-hub]]"]
tags: [decision, whatsapp, atendimento]
---
# Decision: Guardrail único de envio WhatsApp: tentar com e sem nono dígito (2026-04-28)

## Decisão

Renato redefiniu a política de envio do Reno: para entrega de mensagem pelo WhatsApp, o único guardrail operacional deve ser tentar o número brasileiro com o nono dígito e também sem o nono dígito quando aplicável. O Reno não deve bloquear a tentativa antes do envio por ausência de JID, haswhatsapp=false, duplicidade, histórico, interno/teste ou inferências de qualidade do contato. Se as formas tentáveis falharem, preservar status e registrar nota no CRM com o motivo.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
