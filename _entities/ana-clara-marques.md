---
type: entity
owner: renato
entity_type: person
entity_name: Ana Clara Marques
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
  - Ana
  - Ana Clara
external_ids:
  crm_client_id: 10943
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-ana-clara-marques|10943-ana-clara-marques]]'
mentions_property:
  - '[[union-vereda]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Ana Clara Marques
---
## Resumo

Ana Clara Marques é lead do Reno em status **Não Respondeu**, originária de SLA Cascata. Interesse em [[union-vereda]] (Jaraguá). Recebeu repescagem step 3 em 2026-04-30 com pergunta de uso (morar vs investir).

## Identificação

- **Nome:** Ana Clara Marques
- **CRM client id:** 10943
- **Broker responsável:** [[reno]] (broker_id: 35)

## Interesses imobiliários

- [[union-vereda]] (Jaraguá) — empreendimento HLTS Construtora ID 161, apartamento 2br, lazer, entrega Dez/2028

## Linha do tempo de interações

- 2026-04-24 — primeiro contato / backlog
- 2026-04-25 — reenvio inicial em 2 mensagens
- 2026-04-28 — repescagem step 1 (genérica)
- 2026-04-29 — repescagem step 2 (encaixe + viabilidade)
- 2026-04-30 — repescagem step 3 (morar vs investir) ([[2026-05-11-atendimento-ana-clara-marques|10943-ana-clara-marques]])

## Próximas ações sugeridas

- Próximo step (4) previsto pra 2026-05-01T19:10 com convite consultivo direto, sem repetir morar/investir.

## Migracao Reno batch 2 - 2026-05-11

Ana Clara Marques teve o atendimento CRM 10943 migrado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]]. Status consolidado na origem migrada: Arquivado.

### Atualizacao operacional

- CRM client id confirmado na origem migrada: 10943.
- Broker responsavel confirmado: [[reno]] (`broker_id=35`).
- Atendimento migrado para o journal [[2026-05-11-atendimento-ana-clara-marques]].
- Proximo passo: Sem nova ação automática de repescagem. Caso a cliente responda futuramente, reabrir atendimento pelo fluxo normal do Reno, validar o contexto atual, atualizar status conforme regra operacional e retomar de forma consultiva sem tratar como nova repescagem.
