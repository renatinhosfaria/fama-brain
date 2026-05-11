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
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-operacao-crm-webhook]]"]
related: ["[[reno-hub]]"]
tags: [decision, repescagem, atendimento, handoff]
---
# Decision: Handoff de resposta pós-repescagem deve ser via worker de inbound WhatsApp (2026-04-29)

## Decisão

Renato definiu que webhook do lado do FamaChat não garante o evento, porque o FamaChat não sabe quando o Reno recebeu uma mensagem diretamente no WhatsApp. A garantia operacional deve vir de um worker que monitore novas mensagens recebidas no WhatsApp/Hermes, detecte respostas de clientes broker_id=35 em repescagem e execute o checklist obrigatório: status Em Atendimento, parar repescagem com client_replied, registrar CRM/Obsidian e continuar pela skill fama-reno-whatsapp-qualification.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
