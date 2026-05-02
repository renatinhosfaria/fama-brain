---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: Larissa Martins
subtype: person
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - cliente
  - arquivado
  - telefone-teste
schema_version: 1
status: archived
provenance: agent-generated
author_agent: VaultSteward
verified_by: null
verified_at: null
confidence: 0.6
aliases:
  - Larissa
external_ids:
  crm_client_id: 10716
  broker_id: 35
interactions:
  - '[[10716-larissa-martins]]'
mentions_property:
  - '[[bris]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Larissa Martins é cliente em status **Arquivado** desde 2026-04-19 (FAMAAAAA-99) por **telefone identificado como de teste** (formato 90000-xxxx). Apesar do arquivamento, foi o primeiro cliente a mencionar o empreendimento [[bris]] no funil canônico — informações capturadas valem como pista de mercado e contexto comercial mesmo sem cliente real.

## Identificação

- **Nome:** Larissa Martins
- **CRM client id:** 10716
- **Status:** Arquivado (telefone de teste)
- **Origem:** Instagram - Bris
- **id_empreendimento CRM:** 60

## Contexto comercial capturado (mesmo sendo lead-teste)

- **Empreendimento de origem:** [[bris]] (origem da campanha Instagram)
- **Objetivo declarado:** morar com o noivo
- **Forma de compra:** financiar
- **Dúvida principal:** necessidade de entrada alta
- **Disponibilidade:** atendimento no domingo
- **Pediu opções parecidas com [[bris]] também**

## Por que mantemos perfil canônico mesmo arquivada

- A nota carrega **dados de campanha real** ("Instagram - Bris") e **objeções de mercado** (dúvida entrada alta, financiamento, comprar com cônjuge) que podem informar próximas campanhas Bris.
- Notas duplicadas no CRM (4 vezes a mesma anotação registrada) revelam **bug operacional de duplicação** que vale sinalizar à plataforma.

## Próximas ações sugeridas

- Manter `status: archived` — não vetorizar
- Usar como insight: campanhas Bris devem reduzir percepção de entrada alta + reforçar "casal jovem morar"
- Sinalizar bug de duplicação de notas no FamaChat (4 cópias da mesma observação no mesmo cliente)
