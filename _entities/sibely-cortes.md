---
type: entity
owner: renato
entity_type: person
entity_name: Sibely Cortes
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
  - Sibely
external_ids:
  crm_client_id: 10996
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-sibely-cortes|10996-sibely-cortes]]'
mentions_property:
  - '[[union-vereda]]'
mentions_neighborhood:
  - '[[jaragua]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Sibely Cortes
---
## Resumo

Sibely Cortes é lead em status **Não Respondeu**, com interesse declarado no [[union-vereda]] (Jaraguá). Repescagem step 3 enviada em 2026-05-01, próximo follow-up 2026-05-02 19:10. Tem **histórico operacional pesado:** primeiro contato falhou (jidDecode), múltiplas auditorias e supressões por duplicidade com outros corretores; Renato precisou dar override manual em 2026-04-27.

## Identificação

- **Nome:** Sibely Cortes
- **CRM client id:** 10996
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 5226 (DDD 34 — Uberlândia)
- **Origem:** Facebook Ads → Union Vereda

## Interesses imobiliários

- [[union-vereda]] ([[jaragua]] / Zona Oeste) — id_empreendimento 161
- Finalidade: ainda não declarada (Reno pergunta morar vs investir nos steps 2 e 3)

## Travas conhecidas

- **Cliente nunca respondeu** apesar de 3 steps de repescagem
- Histórico extenso de duplicidade no CRM (cadastro posterior com outro corretor)
- Falha jidDecode no primeiro contato em 2026-04-23

## Linha do tempo de interações

- 2026-04-23 — primeiro contato falhou
- 2026-04-27 — múltiplas auditorias e supressões → Renato override → primeiro contato enviado
- 2026-04-29 — repescagem step 1
- 2026-04-30 — repescagem step 2 (pergunta morar/investir)
- 2026-05-01 — repescagem step 3 (foco em prazo entrega 2028)

## Próximas ações sugeridas

- Aguardar step 3 (próximo 2026-05-02 19:10)
- Se step 4 sem resposta: encerrar régua e arquivar
- Padrão semelhante a [[carmen-vicente-santos]] e [[elias-fernandes]] — leads silentes da campanha Facebook Ads sem engajamento

## Migracao Reno batch 3 - 2026-05-11

Resumo: atendimento CRM 10996 migrado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]]. Cliente Reno (`client_id=10996`) teve a régua de repescagem concluída sem resposta real. Interesse contextual no CRM: Union Vereda, no Jaraguá.

Status: Arquivado. Vínculos semânticos identificados: [[union-vereda]], [[sibely-cortes]].

Proximo passo: Sem nova ação automática de repescagem. Se a cliente responder futuramente, retomar pelo atendimento normal do Reno, mover para `Em Atendimento` somente se a regra operacional aplicável permitir no momento e reconstruir diagnóstico antes de qualquer novo convite comercial.

Atendimento migrado para o journal [[2026-05-11-atendimento-sibely-cortes]].

Origem migrada: `_agents/reno/atendimentos/10996-sibely-cortes.md`.
