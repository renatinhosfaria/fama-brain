---
type: entity
owner: renato
entity_type: person
entity_name: Andre Camilo
subtype: person
created: '2026-05-11'
updated: '2026-05-11'
tags:
  - cliente
  - atendimento
  - whatsapp
  - agendamento
  - union-vereda
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.6
aliases:
  - Andre Camilo
external_ids:
  crm_client_id: 11200
  broker_id: 35
broker: '[[reno]]'
related:
  - '[[reno-hub]]'
  - '[[union-vereda]]'
source: imported
name: Andre Camilo
---
# Andre Camilo

## Resumo

Andre Camilo e lead/cliente atendido por [[reno]], vinculado ao cliente CRM 11200. Status consolidado na origem migrada: Agendamento. Vinculos identificados: [[union-vereda]].

## Estado atual

Status CRM registrado na origem migrada: Agendamento.

## Contexto comercial consolidado

Cliente esta com visita presencial registrada no FamaChat para segunda-feira, 11/05/2026, as 16h, na Fama Negocios Imobiliarios. Busca imovel para morar, perfil de 2 quartos atende, regiao do Jaragua/zona Oeste atende a rotina, aceita entrega planejada/futura, pretende comprar por financiamento, informou entrada aproximada de R$ 5.

- Empreendimento de interesse: Union Vereda. - Bairro/regiao: Jaragua, zona Oeste de Uberlandia. - Origem operacional: cliente chegou ao Reno via SLA Cascata apos usuario anterior. - Primeiro contato do Reno contextualizou o Union Vereda e perguntou se a busca era para morar ou investir.

Origem operacional registrada: FamaChat.

## Historico resumido

- 2026-05-11: atendimento importado para o modelo duplo de entidade e journal do segundo cerebro do [[reno]].
- 2026-05-11: follow-up proativo de confirmacao da visita enviado com sucesso para o appointment_id 246; nota CRM `17490`.

## Proximo passo

Aguardar comparecimento na visita de 11/05/2026 as 16h. O follow-up proativo de Agendamento foi enviado e a branch `reno_followup.agendamento` foi encerrada com `enabled=false`, `step=1`, `next_run_at=null` e `stopped_reason=confirmacao_visita_enviada`.

## Links operacionais

- [[2026-05-11-atendimento-andre-camilo]]
