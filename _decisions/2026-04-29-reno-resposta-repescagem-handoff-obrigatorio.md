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
implements: ["[[reno-playbook-atendimento]]", "[[reno-operacao-crm-webhook]]"]
related: ["[[reno-hub]]"]
tags: [decision, repescagem, atendimento, handoff]
---
# Decision: Resposta à repescagem deve acionar handoff obrigatório para atendimento (2026-04-29)

## Decisão

Renato definiu que resposta de cliente após repescagem é um evento obrigatório de handoff, não apenas um sinal comercial. O sistema deve atualizar status para Em Atendimento, parar a repescagem, registrar CRM/Obsidian e continuar pela skill fama-reno-whatsapp-qualification. O worker atual de repescagem envia mensagens, mas não garante sozinho monitoramento de respostas; a garantia exige webhook/worker de mensagem recebida com checklist atômico e auditoria.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
