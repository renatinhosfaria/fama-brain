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
# Decision: Backlog Sem Atendimento lote 2 autorizado para mais 20 mensagens (2026-04-24)

## Decisão

Renato solicitou enviar pelo menos mais 20 mensagens hoje aos 56 clientes ainda em Sem Atendimento. A análise mostrou que muitos remanescentes têm source_details.origem=lead_automatico, mas com metadados de Facebook/Meta Lead Ads (lead_id, form_id, page_id, ad_id), indicando ingestão automática de leads externos, não autolead interno por si só. Foi criado um segundo lote com 20 execuções, uma a cada 3 minutos, mantendo supressão para contato real anterior, usuário interno, notas explícitas de origem interna/teste e ausência de WhatsApp válido. Cada envio deve registrar CRM, atualizar status para Não Respondeu após sucesso e registrar no vault.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
