---
type: entity
owner: renato
entity_type: person
entity_name: Jonathan Barbosa
subtype: person
created: '2026-05-02'
updated: '2026-05-11'
tags:
  - cliente
  - em-atendimento
  - morar-investir
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.8
aliases:
  - Jonathan
external_ids:
  crm_client_id: 10955
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-jonathan-barbosa|10955-jonathan-barbosa]]'
mentions_property:
  - '[[union-vereda]]'
mentions_neighborhood:
  - '[[jaragua]]'
  - '[[chacara-tubalina]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Jonathan Barbosa
---
## Resumo

Jonathan Barbosa é cliente do Reno em status **Em Atendimento** com perfil **dual morar+investir**. Origem Union Vereda (Jaraguá), mas critério prioritário declarado é **proximidade do trabalho**: ele trabalha na **Chácara Tubalina** e quer imóvel próximo. Telefone DDD 31 (Belo Horizonte). Aguardando novo outbound do Reno.

## Identificação

- **Nome:** Jonathan Barbosa
- **CRM client id:** 10955
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 0793 (DDD 31 — Belo Horizonte)
- **Origem:** Facebook Ads → Union Vereda

## Interesses imobiliários

- [[union-vereda]] ([[jaragua]]) — empreendimento de origem
- **Critério crítico:** proximidade ao trabalho em [[chacara-tubalina]]
- Finalidade: morar **e** investir (declarou ambos)

## Trava de fit

- Trabalho em **Chácara Tubalina**, Union Vereda fica em **Jaraguá** — bairros próximos mas não idênticos
- Vale validar se Jaraguá serve "próximo" o bastante ou se ele prefere imóvel ainda mais perto

## Linha do tempo de interações

- 2026-04-23 — lead criado
- 2026-04-24 — primeiro contato bem-sucedido
- 2026-04-25 — reenvio inicial suprimido
- 2026-04-29 — repescagem step 1 → cliente respondeu "Bom dia / Sim"
- 2026-04-29 — diagnóstico: morar+investir, trabalho Chácara Tubalina, proximidade ao trabalho
- 2026-04-30 — branch resgate ativo, aguardando outbound normal

## Próximas ações sugeridas

- Reno deve apresentar Union Vereda explicando proximidade Jaraguá ↔ Chácara Tubalina
- Validar se Jaraguá atende critério de proximidade ou se cliente prefere bairros mais próximos do trabalho
- Cliente tem perfil dual morar+investir → Reno pode enquadrar com argumentos de valorização (similar [[eliseu]])

## Migracao Reno batch 2 - 2026-05-11

Jonathan Barbosa teve o atendimento CRM 10955 migrado para o modelo duplo de entidade e journal do segundo cérebro do [[reno]]. Status consolidado na origem migrada: Não Respondeu.

### Atualizacao operacional

- CRM client id confirmado na origem migrada: 10955.
- Broker responsavel confirmado: [[reno]] (`broker_id=35`).
- Atendimento migrado para o journal [[2026-05-11-atendimento-jonathan-barbosa]].
- Proximo passo: Sem nova ação automática registrada; se houver resposta futura, reabrir pelo fluxo normal do Reno e validar o contexto atual no CRM.
