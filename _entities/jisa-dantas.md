---
type: entity
owner: renato
entity_type: person
entity_name: Jisa Dantas
subtype: person
created: '2026-05-02'
updated: '2026-05-11'
tags:
  - cliente
  - em-atendimento
  - viabilidade-financiamento
  - duplicata-crm
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.85
aliases:
  - Jisa
external_ids:
  crm_client_ids:
    - 10915
    - 11003
    - 11068
  crm_client_id_canonical: 11003
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-jisa-dantas|11003-jisa-dantas]]'
mentions_property:
  - '[[union-vista]]'
mentions_neighborhood:
  - '[[grand-ville]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Jisa Dantas
---
## Resumo

Jisa Dantas é cliente do Reno em status **Em Atendimento** (cadastro canônico 11003), interessada em [[union-vista]] ([[grand-ville]]). Recebeu resgate step 4 em 2026-05-01 com pergunta de diagnóstico. Bucket atual: viabilidade_financiamento.

**ALERTA DE DUPLICAÇÃO CRM:** Jisa tem **3 cadastros distintos** no CRM (IDs 10915, 11003, 11068), todos com o mesmo telefone (34) 98805-3733. 11003 é o ativo (Em Atendimento); 11068 (Arquivado, mais recente, criado 2026-04-27); 10915 também Em Atendimento.

## Identificação

- **Nome:** Jisa Dantas
- **CRM client ids:** 10915, **11003 (canônico)**, 11068
- **Telefone:** (34) 98805-3733
- **WhatsApp:** final 3733
- **Broker responsável:** [[reno]] (broker_id: 35)

## Interesses imobiliários

- [[union-vista]] ([[grand-ville]]) — empreendimento ID 22
- Plantas vistas: 56,9m², 58,4m², 82,2m² (térreo)
- Valor a partir de R$292.400
- Já perguntou sobre valor, planta e parcelamento de entrada

## Status comercial

- Bucket: viabilidade_financiamento
- Trava provável: viabilidade de financiamento/entrada/parcelamento (não qualificada)
- Lacuna: sem confirmação de FGTS, renda, entrada disponível
- Origem: SLA Cascata

## Linha do tempo de interações

- 2026-04-22 — primeiro cadastro (10915)
- 2026-04-24 — segundo cadastro (11003) → primeiro contato e atendimento inicial
- 2026-04-25 — reenvio inicial em 2 mensagens
- 2026-04-27 — terceiro cadastro (11068) → Arquivado
- 2026-04-28 — resgate step 1
- 2026-04-30 — resgate step 2 e 3
- 2026-05-01 — resgate step 4

## Próximas ações sugeridas

- Aguardar resposta. Se responder, parar régua e seguir qualificação consultiva.
- **Operacional:** consolidar 3 cadastros CRM em 1 (canônico 11003) — pedir Renato
## Migracao Reno batch 4 - 2026-05-11

Resumo: Cliente em atendimento, interessada no Union Vista, Grand Ville. O atendimento tem duvidas sobre valor, planta e parcelamento da entrada; a regua de Resgate foi pausada por duplicidade/ownership com outro cadastro ativo.

Status na origem migrada: Em Atendimento. Origem operacional registrada: SLA Cascata.

Proximo passo: Pausar a regua ate revisao manual de duplicidade. Se 11003 continuar como cadastro operacional do Reno, rearmar fluxo apenas depois de novo outbound normal e silencio elegivel.

Link operacional: [[2026-05-11-atendimento-jisa-dantas]].
