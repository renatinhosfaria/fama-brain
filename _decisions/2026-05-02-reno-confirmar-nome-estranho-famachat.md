---
schema_version: 1
type: decision
status: active
created: 2026-05-02
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
tags: [decision, famachat, atendimento, crm]
---
# Decision: Confirmar nome quando full_name do FamaChat parecer estranho antes da qualificação (2026-05-02)

## Decisão

Renato definiu que, quando o nome cadastrado no FamaChat parecer incomum, estranho, genérico, não humano ou inseguro, o Reno não deve iniciar a qualificação usando esse nome. O Reno deve perguntar de forma natural como o cliente prefere ser chamado; depois que o cliente responder corretamente, atualizar `clientes.full_name` no FamaChat/CRM via mcp-postgres, registrar nota objetiva e só então retomar a qualificação consultiva. A regra evita saudações robóticas como usar um nome incorreto no WhatsApp e preserva o tom humano do atendimento.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
