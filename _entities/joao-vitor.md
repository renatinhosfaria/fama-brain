---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: João Vitor
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
confidence: 0.5
aliases: []
external_ids:
  crm_client_id: 10717
  broker_id: 35
interactions:
  - '[[10717-joao-vitor]]'
mentions_property:
  - '[[bella-vita]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
---
## Resumo

João Vitor é cliente em status **Arquivado** desde 2026-04-19 por **telefone de teste** (formato 90000-xxxx). Apesar do arquivamento, foi o primeiro lead canônico a mencionar o empreendimento [[bella-vita]] no funil. Origem: **Google Ads** ("Google - Bella Vita") — outro canal único no funil canônico.

## Identificação

- **Nome:** João Vitor
- **CRM client id:** 10717
- **Status:** Arquivado (telefone de teste)
- **Origem:** Google - Bella Vita
- **id_empreendimento CRM:** 116

## Contexto comercial capturado

- **Empreendimento de origem:** [[bella-vita]]
- **Forma de compra:** financiar
- **Dúvida principal:** se Bella Vita fica muito fora do MCMV
- **Próximo passo declarado:** quer saber próximo passo se gostar do Bella Vita

## Por que mantemos perfil canônico mesmo arquivado

- A nota carrega **canal único (Google Ads)** e **objeção MCMV** que podem informar campanhas Bella Vita futuras.
- Notas duplicadas no CRM (3 cópias de cada) revelam **bug operacional de duplicação** já registrado em [[larissa-martins]].

## Próximas ações sugeridas

- Manter `status: archived` — não vetorizar
- Insight para campanhas Bella Vita: percepção de cliente é "talvez fora do MCMV" → ajustar mensaging se Bella Vita estiver enquadrado
- Único caso Google Ads no funil — vale rastrear se há mais leads desse canal
