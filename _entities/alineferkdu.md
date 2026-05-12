---
type: entity
owner: renato
entity_type: person
entity_name: Alineferkdu
subtype: person
created: '2026-05-11'
updated: '2026-05-11'
tags:
  - cliente
  - atendimento
  - whatsapp
  - arquivado
  - union-vereda
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.6
aliases:
  - Alineferkdu
external_ids:
  crm_client_id: 10994
  broker_id: 35
broker: '[[reno]]'
related:
  - '[[reno-hub]]'
  - '[[union-vereda]]'
source: imported
name: Alineferkdu
---
# Alineferkdu

## Resumo

Alineferkdu é lead/cliente atendido por [[reno]], vinculado ao cliente CRM 10994. Status consolidado na origem migrada: Arquivado. Vínculos semânticos identificados: [[union-vereda]].

## Estado atual

Status CRM registrado na origem migrada: Arquivado.

## Contexto comercial consolidado

Cliente sob responsabilidade do Reno (`broker_id=35`) teve a régua de **5 repescagens** concluída em 2026-05-03 sem resposta real registrada. O atendimento foi arquivado automaticamente no CRM após o step 5, com branch de repescagem encerrada (`step=5`, `enabled=false`, `next_run_at=null`, `stopped_reason=max_steps`).

Origem operacional registrada: SLA Cascata.

## Histórico resumido

- 2026-05-11: atendimento importado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]].

## Próximo passo

Sem nova ação automática de repescagem. Se a cliente responder futuramente, reativar o atendimento por fluxo inbound adequado, confirmar como prefere ser chamada, atualizar o nome no CRM quando houver confirmação, registrar a resposta e seguir qualificação consultiva normal do Reno, sem continuar a régua de repescagem.

## Links operacionais

- [[2026-05-11-atendimento-alineferkdu]]
