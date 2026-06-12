---
schema_version: 1
type: entity
status: active
created: '2026-06-12'
updated: '2026-06-12'
source: agent-generated
author_agent: brain
owner: brain
tags:
  - reno
  - atendimento
  - primeiro-contato
  - facebook-ads
  - union-vereda
  - nao-respondeu
  - crm-verified
  - curado-brain
name: Maclara Leite
entity_type: lead
aliases:
  - maclara-leite
  - cliente-11691
  - 'client:11691'
external_ids:
  client_id: '11691'
  broker_id: '35'
  empreendimento_id: '161'
  first_contact_id: '90'
  fonte: Facebook Ads
mentions_entity:
  - reno-hub
related:
  - '[[reno-hub]]'
  - '[[2026-06-11-primeiro-contato-enviado-cliente-11691-maclara-leite]]'
confidence: 0.94
status_comercial: Não Respondeu
origem: Facebook Ads
interesse_atual: 'Union Vereda, bairro Jaraguá, a partir de formulário Meta/Facebook Ads.'
objecoes_ativas:
  - Ainda sem resposta após o primeiro contato Reno.
proximo_passo: >-
  Aguardar primeira resposta; se responder, registrar first_contact.responded no
  CRM/FamaChat, mover condicionalmente para Em Atendimento e iniciar diagnóstico
  consultivo sem prometer aprovação ou condição.
---
[[reno-hub]]

# Maclara Leite — atendimento Reno

## Resumo curado
Cliente CRM 11691, origem Facebook Ads, em atendimento automatizado inicial pelo Reno. O CRM/FamaChat foi verificado nesta curadoria: o primeiro contato foi enviado em 2026-06-11 no contexto do empreendimento **Union Vereda** (Jaraguá), e o status atual permanece **Não Respondeu**.

## Classificação
- Tipo: entidade de lead/atendimento Reno.
- Tema: primeiro contato, Facebook Ads, Union Vereda.
- Prioridade: acompanhamento normal de repescagem inicial.
- Estado: aguardando primeira resposta.

## Linha do tempo consolidada
- 2026-06-11 — Primeiro contato Reno enviado pelo WhatsApp, registrado em [[2026-06-11-primeiro-contato-enviado-cliente-11691-maclara-leite]].
- CRM verificado nesta curadoria: ledger de primeiro contato `sent`, status **Não Respondeu**, repescagem inicial habilitada em step 0.

## Interesse atual
Union Vereda, bairro Jaraguá, a partir de formulário Meta/Facebook Ads.

## Objeções ativas
- Ainda sem resposta após o primeiro contato Reno.

## Próximo passo
Aguardar primeira resposta; se responder, registrar `first_contact.responded` no CRM/FamaChat, mover condicionalmente para **Em Atendimento** e iniciar diagnóstico consultivo sem prometer aprovação ou condição.

## Interpretação adotada
Como ainda não há resposta da cliente no CRM, esta nota não trata o interesse como qualificado: preserva apenas o contexto do anúncio/empreendimento e o estado operacional confirmado.
