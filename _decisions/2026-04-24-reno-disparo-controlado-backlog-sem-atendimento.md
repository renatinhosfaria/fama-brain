---
schema_version: 1
type: decision
status: active
created: 2026-04-24
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]", "[[reno-operacao-crm-webhook]]"]
related: ["[[reno-hub]]"]
tags: [decision, atendimento, comercial, crm]
---
# Decision: Disparo controlado do backlog Sem Atendimento com registro CRM e Vault (2026-04-24)

## Decisão

Renato autorizou processar clientes vinculados ao Reno em status Sem Atendimento com cadência mínima de 3 minutos, um cliente por execução. A rotina foi configurada para validar elegibilidade no CRM antes do envio, mandar mensagem inicial curta via WhatsApp, registrar nota no CRM, alterar status para Não Respondeu após sucesso e registrar cada interação no vault Obsidian. Casos com contato real anterior, autolead/origem interna, ausência de WhatsApp válido ou correspondência com usuário interno devem ser suprimidos.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
