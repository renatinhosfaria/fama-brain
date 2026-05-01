---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: Bruno Sávio
subtype: person
created: '2026-05-01'
updated: '2026-05-01'
tags:
  - cliente
  - lead
  - primeiro-contato
schema_version: 1
status: active
source: agent-generated
author_agent: VaultSteward
verified_by: null
verified_at: null
confidence: 0.7
aliases:
  - Bruno
  - Bruno S.
  - B. Sávio
external_ids:
  crm_client_id: 10971
interactions:
  - '[[10971-bruno-savio]]'
mentions_property:
  - '[[union-vista]]'
  - '[[grand-ville]]'
broker: null
related:
  - '[[_hubs/index|Hubs]]'
title: 'Entity: Bruno Sávio (lead — interesse Union Vista/Grand Ville)'
---
## Resumo

Bruno Sávio é um lead em fase de **primeiro contato**, capturado via WhatsApp em 2026-04-27. Demonstrou interesse em dois empreendimentos da FAMA: [[union-vista]] e [[grand-ville]]. Status CRM no momento: **Não Respondeu** após pergunta de aderência da região.

Esta nota é o **perfil canônico** dessa pessoa no vault. Toda interação com Bruno Sávio (call, WhatsApp, visita, e-mail) deve ser registrada como nota separada em `_agents/{agente}/atendimentos/` ou pasta análoga, e linkada aqui via `interactions`. Quando uma decisão comercial sobre Bruno Sávio for tomada, ela vira nota em `_decisions/` e linka este perfil em `mentions_entity`.

## Identificação

- **Nome:** Bruno Sávio
- **Aliases:** Bruno, Bruno S., B. Sávio
- **CRM client id:** 10971
- **Broker responsável:** ainda não atribuído

## Interesses imobiliários

Bruno Sávio sinalizou interesse em:

- [[union-vista]] — empreendimento FAMA
- [[grand-ville]] — empreendimento FAMA

Ainda não há perfis canônicos para essas propriedades — criar quando outros leads também as mencionarem.

## Linha do tempo de interações

Cada bullet linka a uma nota de interação isolada com seu próprio chunk:

- 2026-04-27 — [[10971-bruno-savio]] — primeiro contato WhatsApp; pergunta de aderência enviada; sem resposta até 2026-04-30.

## Próximas ações sugeridas

- Aguardar resposta do lead na fila `reno_dup_recovery_20260427_3min`.
- Se responder, conduzir qualificação leve (orçamento, prazo, região).
- Se não responder em 7 dias, mover para repescagem.

## Notas operacionais

- Perfil criado pelo VaultSteward como **piloto** da FAM-16 (frente 3: criar perfis canônicos cross-cutting em `_entities/`).
- Status `agent-generated` + `verified_by: null` — agente não pode citar este perfil como ground truth em decisão crítica até [[Renato Faria]] ou [[Edilene]] verificarem.
- Quando o MCP `obsidian` for atualizado para aceitar `type: entity` (schema v1), trocar `type: entity-profile` → `type: entity` aqui.
