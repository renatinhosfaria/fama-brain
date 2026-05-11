---
type: entity-profile
owner: renato
entity_type: person
entity_name: Andre Luiz Duca
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
  - Andre Luiz duca
  - Andre
external_ids:
  crm_client_id: 10975
  broker_id: 35
  lead_retorno_id: 2926
interactions:
  - '[[10975-andre-luiz-duca]]'
mentions_property:
  - '[[union-vista]]'
mentions_neighborhood:
  - '[[grand-ville]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Andre Luiz Duca é lead em status **Não Respondeu** com interesse no [[union-vista]] (Grand Ville). Repescagem step 3 enviada em 2026-05-01, próximo follow-up 2026-05-02 19:10. Email peculiar: refugiodosfocinhos2023@gmail.com → possível dono/voluntário de ONG animal. Cliente retornou como lead em 2026-04-24 (lead ID 2926) — segunda passagem pelo funil.

## Identificação

- **Nome:** Andre Luiz Duca
- **CRM client id:** 10975
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 0215 (DDD 34 — Uberlândia)
- **Email:** refugiodosfocinhos2023@gmail.com
- **Origem:** SLA Cascata + retorno Facebook Ads (lead 2926)

## Interesses imobiliários

- [[union-vista]] ([[grand-ville]]) — id_empreendimento 22
- Finalidade: ainda não declarada (Reno pergunta morar/investir + imediato vs lançamento)

## Travas conhecidas

- Falha jidDecode no primeiro contato (2026-04-23) — desbloqueado em 2026-04-27
- Cliente nunca respondeu apesar de 3 steps de repescagem
- Padrão de "lead silente" Union Vista (mesmo grupo de Bruno, Wueverton, Edson, Santiago)

## Linha do tempo de interações

- 2026-04-23 — primeiro contato falhou
- 2026-04-24 — retornou como lead Facebook Ads (segundo cadastro)
- 2026-04-27 — primeiro contato enviado após dup recovery
- 2026-04-29 a 2026-05-01 — repescagem step 1 → 3

## Próximas ações sugeridas

- Aguardar step 4 (próximo 2026-05-02 19:10)
- Se não responder: encerrar régua
- Padrão Union Vista silente: somar ao caso para revisar criativo Facebook Ads

## Migracao Reno batch 3 - 2026-05-11

Resumo: atendimento CRM 10975 migrado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]]. Cliente do Reno (`broker_id=35`) teve a régua de repescagem concluída sem resposta real. Em 2026-05-03 foi enviada a repescagem step 5 com encerramento elegante/porta aberta sobre o Union Vista, mudando a abordagem do step 4 que já havia feito convite consultivo/visita na segunda-feira.

Status: Arquivado. Vínculos semânticos identificados: [[union-vista]], [[grand-ville]], [[zona-leste]], [[andre-luiz-duca]].

Proximo passo: Sem nova ação automática de repescagem. Se o cliente responder futuramente, tratar como retomada/inbound fora desta skill, validar o status no CRM, registrar a resposta e seguir pelo fluxo normal de atendimento consultivo do Reno.

Atendimento migrado para o journal [[2026-05-11-atendimento-andre-luiz-duca]].

Origem migrada: `_agents/reno/atendimentos/10975-andre-luiz-duca.md`.
