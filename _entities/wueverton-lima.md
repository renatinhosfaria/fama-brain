---
type: entity
owner: renato
entity_type: person
entity_name: Wueverton Lima
subtype: person
created: '2026-05-02'
updated: '2026-05-11'
tags:
  - cliente
  - lead
  - repescagem
  - duplicata-crm
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.75
aliases:
  - Wueverton
external_ids:
  crm_client_ids:
    - 11000
    - 11064
    - 11116
  crm_client_id_canonical: 11000
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-wueverton-lima|11000-wueverton-lima]]'
mentions_property:
  - '[[union-vista]]'
mentions_neighborhood:
  - '[[grand-ville]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Wueverton Lima
---
## Resumo

Wueverton Lima é lead do Reno em status **Não Respondeu** (cadastro canônico 11000), originário de Facebook Ads. Interesse em [[union-vista]] ([[grand-ville]]). Recebeu primeiro contato e três repescagens via WhatsApp.

**ALERTA DE DUPLICAÇÃO CRM:** Wueverton tem **3 cadastros distintos** no CRM (IDs 11000, 11064, 11116), todos com o mesmo telefone (34) 99213-3985 e todos em Não Respondeu. Sinaliza captura repetida via Facebook Ads.

## Identificação

- **Nome:** Wueverton Lima
- **CRM client ids:** **11000 (canônico)**, 11064, 11116
- **Telefone:** (34) 99213-3985
- **Broker responsável:** [[reno]] (broker_id: 35)

## Interesses imobiliários

- [[union-vista]] ([[grand-ville]]) — empreendimento principal
- Origem: Facebook Ads
- Forma de pagamento e objetivo de uso ainda não informados

## Linha do tempo de interações

- 2026-04-24 — primeiro cadastro (11000)
- 2026-04-26 — segundo cadastro (11064)
- 2026-04-27 — primeiro contato Reno (Union Vista / Grand Ville)
- 2026-04-29 — repescagem step 1 (região / perfil do imóvel)
- 2026-04-29 — terceiro cadastro (11116)
- 2026-04-30 — repescagem step 2
- 2026-05-01 — repescagem step 3 (morar vs investir) ([[2026-05-11-atendimento-wueverton-lima|11000-wueverton-lima]])

## Próximas ações sugeridas

- Se silêncio continuar, repescagem step 4 prevista pra 2026-05-02T19:10
- Se responder, mover pra Em Atendimento e seguir diagnóstico consultivo
- **Operacional:** consolidar 3 cadastros CRM e investigar por que Facebook Ads recapturou o mesmo lead 3 vezes
- Padrão Union Vista silente: somar ao caso para revisar criativo Facebook Ads

## Migracao Reno batch 3 - 2026-05-11

Resumo: atendimento CRM 11000 migrado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]]. Lead de Facebook Ads sob responsabilidade do Reno (`broker_id=35`). Interesse associado ao empreendimento Union Vista, no Grand Ville.

Status: Arquivado. Vínculos semânticos identificados: [[union-vista]], [[grand-ville]], [[wueverton-lima]].

Proximo passo: Sem nova ação automática de repescagem. Se o cliente responder futuramente, reativar atendimento por fluxo normal do Reno, registrar resposta no CRM, mover o status conforme regra operacional aplicável e retomar diagnóstico consultivo sem tratar como novo step de repescagem.

Atendimento migrado para o journal [[2026-05-11-atendimento-wueverton-lima]].

Origem migrada: `_agents/reno/atendimentos/11000-wueverton-lima.md`.
