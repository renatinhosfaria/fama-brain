---
schema_version: 1
type: entity
status: active
created: '2026-05-11T00:00:00.000Z'
updated: '2026-05-12T17:32:33.891Z'
source: imported
verified_by: null
verified_at: null
confidence: medium
subtype: person
aliases:
  - Marcia Maria
relationships:
  broker: '[[reno]]'
  interested_in: '[[garden-sul]]'
external_ids:
  crm_client_ids:
    - 11266
  crm_client_id_canonical: 11266
related:
  - '[[reno-hub]]'
  - '[[garden-sul]]'
  - '[[jardim-sul]]'
tags:
  - entity
  - lead
  - atendimento
  - garden-sul
owner: renato
---
# Entity: Marcia Maria

Marcia Maria e lead atendida pelo Reno, vinculada ao cliente CRM 11266 e interessada no empreendimento [[garden-sul]], no [[jardim-sul]].

## Estado atual

Status CRM atualizado na origem: `Arquivado`.

## Contexto comercial consolidado

Marcia demonstrou interesse no Garden Sul. Ate a ultima interacao, ainda nao havia confirmacao de necessidade, momento, decisao, entrada, orcamento ou forma de pagamento. Em 2026-05-12, a repescagem chegou ao step 5, foi enviada mensagem de encerramento e a origem foi arquivada apos `max_steps`.

## Historico resumido

- 2026-05-07: primeiro contato enviado pelo Reno sobre Garden Sul/Jardim Sul.
- 2026-05-08: repescagem step 1 enviada perguntando se a busca era para morar ou investir.
- 2026-05-10: repescagem step 2 enviada sobre faixa de entrada.
- 2026-05-10: repescagem step 3 enviada sobre financiamento ou compra a vista.
- 2026-05-11: repescagem step 4 enviada via WhatsApp validado; proximo step materializado para 2026-05-12 as 14:20.
- 2026-05-12: repescagem step 5 enviada com mensagem de encerramento; CRM alterado para Arquivado e regua encerrada.

## Evidencia operacional recente

- Mensagem step 5: "Oi, Marcia!\n\nVou deixar por aqui pra nao te incomodar. Quando quiser retomar o Garden Sul, me chama que eu te ajudo a olhar so o que faz sentido pro teu momento."
- Repescagem encerrada em `step=5`, `enabled=false`, `next_run_at=null`, `stopped_reason=max_steps`.
- Bridge local validado com JID confirmado e espelhamento ativo.

## Links operacionais

- [[2026-05-10-atendimento-marcia-maria]]
- [[2026-05-12-fechamento-marcia-maria-repescagem-step-5-2026-05-12]]
