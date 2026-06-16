---
schema_version: 1
type: entity
status: active
created: '2026-06-15'
updated: '2026-06-16'
source: agent-generated
author_agent: brain
owner: brain
tags:
  - reno
  - whatsapp-inbound
  - qualificacao
  - financiamento
  - moradia
  - union-vista
  - crm-verified
  - curado-brain
name: Alessandra Silva
entity_type: lead
aliases:
  - alessandra-silva
  - cliente-11640
  - 'client:11640'
external_ids:
  client_id: '11640'
  broker_id: '35'
  empreendimento_id: '22'
  empreendimento_slug: union-vista
  fonte: Facebook Ads
  regiao_preferida: Morumbi
mentions_entity:
  - reno-hub
  - union-vista
related:
  - '[[reno-hub]]'
  - '[[union-vista]]'
  - '[[2026-06-15-alessandra-silva-resposta-inbound-busca-para-morar]]'
  - '[[2026-06-15-alessandra-silva-inbound-whatsapp-recebido-financiamento]]'
confidence: 0.94
verified_by: CRM read-back via mcp_crm_postgres_get_client em 2026-06-16
verified_at: '2026-06-16'
status_comercial: Em Atendimento
origem: Facebook Ads / WhatsApp inbound
interesse_atual: >-
  Compra para moradia, pesquisando com calma, com prioridade declarada na região
  do Morumbi; busca imóvel de 2 quartos e pretende comprar via financiamento.
objecoes_ativas:
  - >-
    Ainda está pesquisando com calma; não há urgência explícita para visita ou
    reserva.
  - >-
    Viabilidade depende de diagnóstico de financiamento antes de avançar para
    proposta firme.
proximo_passo: >-
  Retomar qualificação consultiva com diagnóstico de financiamento e opções de 2
  quartos compatíveis com Morumbi/entorno e Union Vista quando fizer sentido,
  separando claramente parcela estimada, entrada e próximos dados necessários.
---
[[reno-hub]] [[union-vista]]

## Resumo
Lead do Reno em atendimento. A sequência recente saiu de repescagem/primeira resposta para qualificação: Alessandra informou que está pesquisando com calma, prioriza a região do Morumbi, busca imóvel para morar, prefere 2 quartos e indicou financiamento como caminho de compra.

Interpretação adotada: a mensagem curta “Financiamento” foi tratada como intenção de compra por financiamento e necessidade de diagnóstico, não como aprovação de crédito nem compromisso de avançar imediatamente.

## Classificação de curadoria
- **Tipo:** entidade/lead consolidada.
- **Tema:** WhatsApp inbound, qualificação, financiamento, moradia.
- **Projeto/contexto:** [[reno-hub]] / [[union-vista]].
- **Estado:** ativa, em atendimento no CRM.
- **Prioridade operacional:** média — há interesse real, mas com ritmo de pesquisa calma e dependência de viabilidade.

## Interesse atual
Compra para moradia, pesquisando com calma, com prioridade declarada na região do Morumbi; busca imóvel de 2 quartos e pretende comprar via financiamento.

## Objeções e cuidados ativos
- Ainda está pesquisando com calma; não há urgência explícita para visita ou reserva.
- Viabilidade depende de diagnóstico de financiamento antes de avançar para proposta firme.
- Não assumir aprovação, renda, teto de parcela ou disponibilidade sem nova qualificação.

## Próximo passo sugerido
Retomar qualificação consultiva com diagnóstico de financiamento e opções de 2 quartos compatíveis com Morumbi/entorno e Union Vista quando fizer sentido, separando claramente parcela estimada, entrada e próximos dados necessários.

## Evidências relacionadas
- [[2026-06-15-alessandra-silva-resposta-inbound-busca-para-morar]] — cliente declarou busca para morar.
- [[2026-06-15-alessandra-silva-inbound-whatsapp-recebido-financiamento]] — cliente respondeu “Financiamento”.
- CRM read-back em 2026-06-16 confirmou status **Em Atendimento**, origem Facebook Ads, vínculo com Reno e contexto operacional recente de repescagem encerrada por resposta.

## Histórico de interações
Mantido nos journals do Reno; esta nota funciona como síntese canônica recuperável para próximos agentes.
