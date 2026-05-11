---
type: entity-profile
owner: renato
entity_type: person
entity_name: Júlia
subtype: person
created: '2026-05-11'
updated: '2026-05-11'
tags:
  - cliente
  - atendimento
  - whatsapp
  - em-atendimento
  - union-vereda
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.6
aliases:
  - Júlia
external_ids:
  crm_client_id: 10979
  broker_id: 35
broker: '[[reno]]'
related:
  - '[[reno-hub]]'
  - '[[union-vereda]]'
  - '[[place-arbi]]'
  - '[[jardim-sul]]'
---
# Júlia

## Resumo

Júlia é lead/cliente atendido por [[reno]], vinculado ao cliente CRM 10979. Status consolidado na origem migrada: Em Atendimento. Vínculos semânticos identificados: [[union-vereda]], [[place-arbi]], [[jardim-sul]], [[shopping-park]].

## Estado atual

Status CRM registrado na origem migrada: Em Atendimento.

## Contexto comercial consolidado

Cliente Reno (`client_id=10979`) em `Em Atendimento`, sob responsabilidade operacional do Reno (`broker_id=35`), porém o ciclo de **Resgate está pausado para revisão manual** desde 2026-05-04. Motivo da pausa: ao revalidar o candidato vencido para o step 4, o worker encontrou risco de duplicidade/ownership e divergência de contexto.

Origem operacional registrada: SLA Cascata.

## Histórico resumido

- 2026-05-11: atendimento importado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]].

## Próximo passo

Revisão manual. Não há próximo `next_run_at` ativo para Resgate do cliente 10979.

## Links operacionais

- [[2026-05-11-atendimento-julia]]
