---
schema_version: 1
type: entity
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: medium
subtype: person
aliases: ["Mateus Silva"]
relationships:
  broker: "[[reno]]"
  interested_in: "[[place-arbi]]"
external_ids:
  crm_client_ids: [10934]
  crm_client_id_canonical: 10934
related: ["[[reno-hub]]", "[[place-arbi]]", "[[shopping-park]]"]
tags: [entity, lead, atendimento, place-arbi, resgate]
---
# Entity: Mateus Silva

Mateus Silva e lead/cliente atendido por [[reno]], vinculado ao cliente CRM 10934 com vinculo a [[place-arbi]], [[shopping-park]]. Status consolidado na origem migrada: Em Atendimento.

## Estado atual

Status CRM registrado na origem migrada: `Em Atendimento`.

Resgate pausado em 2026-05-11 para revisao manual de duplicidade/ownership. Nenhum WhatsApp foi enviado nessa execucao porque o mesmo telefone/JID tambem apareceu em outro cadastro ativo de outro broker. A branch ficou com `resgate.enabled=false`, `next_run_at=null` e `stopped_reason=manual_review_duplicate_active_broker`.

## Contexto comercial consolidado

Vinculos semanticos identificados no atendimento: [[place-arbi]], [[shopping-park]]. Quando o produto ou bairro ainda nao estava claro, a entidade preserva apenas o vinculo com [[reno]] e o CRM.

## Historico resumido

- 2026-05-11: atendimento importado para o modelo duplo de entidade e journal do segundo cerebro do [[reno]].
- Historico resumido: cliente respondeu ou permaneceu em atendimento ativo na origem migrada.
- 2026-05-11: Resgate pausado sem envio por revisao manual de duplicidade ativa em outro broker; nota CRM `17208` preservada na origem.

## Links operacionais

- [[2026-05-11-atendimento-mateus-silva]]
