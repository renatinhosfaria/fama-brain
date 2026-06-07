---
type: entity
name: Atendimento Reno - Cliente 11604 - Deivid Oliveira Santos
entity_type: reno-atendimento
aliases:
  - cliente-11604-deivid-oliveira-santos
  - Deivid Oliveira Santos - Union Vista
external_ids:
  famachat_client_id: '11604'
  famachat_duplicate_client_id: '11627'
  famachat_note_id: '19489'
mentions_entity:
  - reno-hub
  - reno-resgate-pausado-por-duplicidade-ativa
related:
  - '[[reno-hub]]'
  - '[[reno-resgate-pausado-por-duplicidade-ativa]]'
  - '[[2026-06-03-falha-no-primeiro-contato-cliente-11604]]'
  - '[[2026-06-03-primeiro-contato-enviado-cliente-11604-deivid-oliveira-santos]]'
  - '[[2026-06-03-resposta-inbound-de-deivid-sobre-union-vista]]'
  - '[[2026-06-03-deivid-confirmou-union-vista-para-morar]]'
  - '[[2026-06-03-deivid-priorizou-localizacao-e-valor-no-union-vista]]'
  - '[[2026-06-03-deivid-perguntou-metragem-do-union-vista]]'
  - '[[2026-06-03-resgate-step-1-enviado-para-deivid-oliveira-santos]]'
  - '[[2026-06-03-resgate-step-2-enviado-para-deivid-oliveira-santos]]'
  - '[[2026-06-03-resgate-step-3-enviado-cliente-11604-deivid-oliveira-santos]]'
  - '[[2026-06-06-resgate-pausado-por-duplicidade-ativa]]'
confidence: 0.93
verified_by: null
schema_version: 1
status: active
created: '2026-06-06'
updated: '2026-06-06'
source: agent-generated
tags:
  - reno
  - atendimento
  - resgate
  - union-vista
  - duplicidade-operacional
  - sla-cascata
  - manual-review
  - curado-brain
author_agent: brain
---
# Atendimento Reno — Cliente 11604 — Deivid Oliveira Santos

## Resumo curado

Atendimento do Reno para interesse no empreendimento Union Vista. O histórico mostra primeiro contato, respostas inbound de qualificação, avanço para convite de visita e sequência de Resgate até o step 4.

Em 2026-06-06, o Resgate foi interrompido sem novo WhatsApp após revalidação no CRM identificar cadastro duplicado ativo vindo de SLA Cascata no cliente 11627. O estado operacional validado no CRM indica `resgate.enabled=false`, `next_run_at=null` e `stopped_reason=manual_review_duplicate_active_broker`, preservando o status comercial em Em Atendimento.

## Classificação

- Tipo: entidade consolidada de atendimento Reno.
- Tema: Resgate / WhatsApp / duplicidade operacional / SLA Cascata.
- Estado: ativo, mas com automação de Resgate pausada para revisão manual de ownership/duplicidade.
- Prioridade: operacional média-alta, pois evita novo disparo automático para contato com ownership duplicado.

## Interpretação adotada

A duplicidade é tratada como bloqueio operacional do fluxo automático, não como encerramento comercial do cliente. O CRM/FamaChat permanece como fonte de verdade para estado atual, propriedade do atendimento e eventual reativação.

## Links úteis

- Hub operacional: [[reno-hub]]
- Padrão consolidado: [[reno-resgate-pausado-por-duplicidade-ativa]]
- Evento de pausa: [[2026-06-06-resgate-pausado-por-duplicidade-ativa]]
