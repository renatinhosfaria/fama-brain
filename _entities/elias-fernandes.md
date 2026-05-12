---
type: entity
owner: renato
entity_type: person
entity_name: Elias Fernandes
subtype: person
created: '2026-05-02'
updated: '2026-05-11'
tags:
  - cliente
  - lead
  - repescagem
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.7
aliases: []
external_ids:
  crm_client_id: 10662
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-elias-fernandes|10662-elias-fernandes]]'
mentions_property:
  - '[[garden-sul]]'
mentions_neighborhood:
  - '[[jardim-sul]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Elias Fernandes
---
## Resumo

Elias Fernandes é lead em status **Não Respondeu**, mas a régua continua ativa: repescagem step 4 enviada 2026-05-01, próximo follow-up 2026-05-02 14:20. Origem: Facebook Ads — Garden Sul. **Histórico complicado:** lead nasceu em 2026-04-07 com falha de gateway WhatsApp severa (401/408), foi cadastrado manualmente, arquivado uma vez por "FAMAAAAA-99" sem evidência de resposta, e reativado. Telefone da Bahia (DDD 77).

## Identificação

- **Nome:** Elias Fernandes
- **CRM client id:** 10662
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 0972 (DDD 77 — Bahia)
- **Origem:** Facebook Ads — Garden Sul (lead campaign)

## Interesses imobiliários

- [[garden-sul]] ([[jardim-sul]] / Zona Sul) — empreendimento de origem do lead
- id_empreendimento: 25
- Finalidade: ainda não declarada (Reno pergunta morar vs investir no step 3)

## Travas conhecidas

- **Cliente nunca respondeu nenhum contato.** 
- Telefone da Bahia → possível compra remota ou cadastro genérico
- Histórico de problemas operacionais (gateway, arquivamento erroneo)

## Linha do tempo de interações

- 2026-04-07 — lead criado, falha gateway WhatsApp, cadastro manual
- 2026-04-19 — arquivado por FAMAAAAA-99 (sem evidência)
- 2026-04-27 — primeiro contato Reno enviado
- 2026-04-28 — repescagem step 1
- 2026-04-29 — repescagem step 2 (com falha gateway intermediária)
- 2026-04-30 — repescagem step 3
- 2026-05-01 — repescagem step 4

## Próximas ações sugeridas

- Aguardar step 4 (próximo 2026-05-02 14:20)
- Se não responder após step 4: encerrar repescagem
- Caso responda: validar se interesse Garden Sul é real ou se é compra remota Bahia → Uberlândia

## Migracao Reno batch 1 - 2026-05-11

Elias Fernandes e lead/cliente atendido por [[reno]], vinculado ao cliente CRM 10662 com vinculo a [[elias-fernandes]], [[garden-sul]], [[jardim-sul]]. Status consolidado na origem migrada: Arquivado.

### Atualizacao operacional

- CRM client id confirmado na origem migrada: 10662.
- Status consolidado na origem migrada: `Arquivado`.
- Atendimento migrado para o journal [[2026-05-11-atendimento-elias-fernandes]].
- Proximo passo: Sem nova acao automatica registrada; se o cliente responder futuramente, reabrir pelo fluxo normal do Reno e validar o contexto atual no CRM.
