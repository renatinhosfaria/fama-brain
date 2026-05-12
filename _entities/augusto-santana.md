---
type: entity
owner: renato
entity_type: person
entity_name: Augusto Santana
subtype: person
created: '2026-05-02'
updated: '2026-05-11'
tags:
  - cliente
  - lead
  - agendamento
  - duplicata-crm
schema_version: 1
status: active
provenance: agent-generated
verified_by: null
verified_at: null
confidence: 0.8
aliases:
  - Augusto
external_ids:
  crm_client_ids:
    - 10246
    - 10395
    - 10954
    - 11046
  crm_client_id_canonical: 11046
  broker_id: 35
interactions:
  - '[[2026-05-11-atendimento-augusto-santana|10954-augusto-santana]]'
  - 11046-augusto-santana
mentions_property:
  - '[[union-vista]]'
regions_of_interest:
  - Segismundo Pereira
  - '[[grand-ville]]'
  - Brasil
  - '[[martins]]'
  - '[[roosevelt]]'
  - Umuarama
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
source: imported
name: Augusto Santana
---
## Resumo

Augusto Santana é cliente do Reno em status **Visita** (cadastro CRM 11046, o canônico atual) após avanço pelo WhatsApp com [[union-vista]]. Tem aprovação de crédito da Caixa até R$230 mil. Visita presencial agendada na Fama em 27/04/2026 foi **cancelada** pelo cliente (precisou viajar) — pediu remarcação.

**ALERTA DE DUPLICAÇÃO CRM:** Augusto tem **4 cadastros distintos** no CRM (IDs 10246, 10395, 10954, 11046), todos com o mesmo telefone (34) 99680-5316. Os 3 primeiros são Arquivado; o atual ativo é 11046 (Visita). Sinaliza falha de dedup do FamaChat.

## Identificação

- **Nome:** Augusto Santana
- **CRM client ids:** 10246, 10395, 10954, **11046 (canônico)**
- **Telefone:** (34) 99680-5316
- **Broker responsável:** [[reno]] (broker_id: 35)

## Interesses imobiliários

- [[union-vista]] ([[grand-ville]]) — empreendimento principal de interesse
- Regiões mencionadas: Segismundo Pereira, [[grand-ville]], Brasil, [[martins]], [[roosevelt]], Umuarama
- Preferência: imóvel menor, com acesso fácil ao Tibery
- Crédito: aprovação Caixa até R$230k

## Linha do tempo de interações

- 2026-03-11 — primeiro cadastro (10246) → Arquivado
- 2026-03-16 — segundo cadastro (10395) → Arquivado
- 2026-04-23 — terceiro cadastro (10954) → Arquivado
- 2026-04-25 — quarto cadastro (11046) → combinou visita via WhatsApp
- 2026-04-26 — status CRM corrigido pra Agendamento
- 2026-04-27 — confirmação enviada; cliente cancelou (viagem); appointment id 232 → Cancelado
- 2026-05-02 — aguardando retorno do cliente pra remarcação ([[2026-05-11-atendimento-augusto-santana|10954-augusto-santana]])

## Próximas ações sugeridas

- Aguardar retorno do cliente pra propor remarcação objetiva
- Status preservado em Visita (canônico 11046) pra não regredir automação
- **Operacional:** consolidar 4 cadastros CRM em 1 (limpar 10246, 10395, 10954) — pedir Renato

## Migracao Reno batch 2 - 2026-05-11

Augusto Santana teve a origem migrada CRM 10954 registrada no modelo duplo de entidade e journal do segundo cérebro do [[reno]]. A origem 10954 indicava status Agendamento, mas é histórica/duplicada e não substitui o canônico atual CRM 11046/status Visita, com cancelamento de visita e remarcação pendente.

### Atualizacao operacional

- CRM client id confirmado na origem migrada: 10954.
- Broker responsavel confirmado: [[reno]] (`broker_id=35`).
- Atendimento migrado para o journal [[2026-05-11-atendimento-augusto-santana]].
- Proximo passo: Manter o canônico 11046 em Visita, aguardar retorno/remarcação do cliente e revisar/deduplicar 10954 antes de qualquer automação ou outbound.
