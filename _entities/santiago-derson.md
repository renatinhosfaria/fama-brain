---
type: entity-profile
owner: renato
entity_type: person
entity_name: Santiago Derson
subtype: person
created: '2026-05-02'
updated: '2026-05-11'
tags:
  - cliente
  - lead
  - repescagem
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.7
aliases:
  - Santiago
external_ids:
  crm_client_id: 10997
  broker_id: 35
interactions:
  - '[[10997-santiago-derson]]'
mentions_property:
  - '[[union-vista]]'
mentions_neighborhood:
  - '[[grand-ville]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Santiago Derson é lead em status **Não Respondeu**, com interesse declarado no [[union-vista]] (Grand Ville). Repescagem step 3 enviada em 2026-05-01, próximo follow-up 2026-05-02 19:10. Histórico operacional: primeiro contato falhou (jidDecode), múltiplas supressões por suspeita de lead automático, primeiro contato real só enviado em 2026-04-27 após auditoria.

## Identificação

- **Nome:** Santiago Derson
- **CRM client id:** 10997
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 6127 (DDD 34 — Uberlândia)
- **Origem:** Facebook Ads → Union Vista

## Interesses imobiliários

- [[union-vista]] ([[grand-ville]]) — id_empreendimento 22
- Finalidade: ainda não declarada (Reno perguntou morar/investir + financiado/à vista)

## Travas conhecidas

- Cliente nunca respondeu apesar de 3 steps de repescagem
- Existência de duplicata posterior por SLA Cascata atribuída a outro corretor — propriedade operacional disputada
- Falha jidDecode no primeiro contato

## Linha do tempo de interações

- 2026-04-24 — primeiro contato falhou
- 2026-04-27 — múltiplas auditorias → primeiro contato enviado após autorização manual
- 2026-04-29 — repescagem step 1 (região vs viabilidade)
- 2026-04-30 — repescagem step 2 (financiado vs à vista)
- 2026-05-01 — repescagem step 3 (morar vs investir)

## Próximas ações sugeridas

- Aguardar step 3 (próximo 2026-05-02 19:10)
- Se step 4 sem resposta: encerrar régua
- Padrão Union Vista silente similar a [[bruno-savio]], [[wueverton-lima]], [[edson-tolentino]] — vale revisar discurso/criativo Facebook Ads desse empreendimento (mesmo padrão de Garden Sul)

## Migracao Reno batch 3 - 2026-05-11

Resumo: atendimento CRM 10997 migrado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]]. Cliente de Facebook Ads sob responsabilidade do Reno (`broker_id=35`). Interesse identificado no empreendimento Union Vista, no Grand Ville.

Status: Arquivado. Vínculos semânticos identificados: [[union-vista]], [[grand-ville]], [[santiago-derson]].

Pr?ximo passo: Sem nova ação automática de repescagem. Se o cliente responder futuramente, reabrir o atendimento pelo fluxo normal do Reno, mover status conforme regra operacional aplicável e retomar a qualificação consultiva a partir do contexto Union Vista/Grand Ville.

Atendimento migrado para o journal [[2026-05-11-atendimento-santiago-derson]].

Origem migrada: `_agents/reno/atendimentos/10997-santiago-derson.md`.
