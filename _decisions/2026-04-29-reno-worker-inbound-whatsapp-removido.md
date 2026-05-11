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
supersedes: ["[[2026-04-29-reno-worker-inbound-whatsapp-criado]]"]
related: ["[[reno-hub]]", "[[2026-04-29-reno-worker-inbound-whatsapp-criado]]"]
tags: [decision, whatsapp, atendimento, worker]
---
# Decision: Worker de inbound WhatsApp removido por risco de conflito (2026-04-29)

## Decisão

Renato solicitou desfazer a criação do worker `reno-whatsapp-inbound-monitor-production` porque avaliou que ele poderia gerar conflito e problemas futuros. O cronjob `4a98e0c3341e` foi removido, o script `reno_whatsapp_inbound_monitor.py` e o cursor de estado foram apagados. Permanece ativo apenas o worker de envio de repescagem existente.

O efeito operacional desta decisão é remover o worker específico de inbound WhatsApp como mecanismo ativo de handoff pós-repescagem.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
