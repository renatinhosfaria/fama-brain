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
tags: [decision, repescagem, atendimento, crm]
---
# Decision: Status Em Atendimento é a barreira suficiente para parar repescagem (2026-04-29)

## Decisão

Renato esclareceu que, como o worker de repescagem já é restrito a clientes `broker_id=35` em `status = Não Respondeu`, não é necessário encerrar manualmente o ramo operacional da repescagem quando o cliente responde. A ação necessária é alterar o status para `Em Atendimento` e registrar a transição; a repescagem deixa de selecionar o cliente pelo filtro de status.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
