---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - interaction
  - atendimento
  - whatsapp
  - qualification
  - renda
  - composicao-renda
  - investimento
  - convite-visita
  - crm-pending
title: Inbound WhatsApp — Luciana informa renda familiar aproximada
event_date: '2026-05-14'
channel: whatsapp
participants:
  - '[[luciana-sousa]]'
  - '[[reno]]'
mentions_entity:
  - '[[luciana-sousa]]'
  - '[[union-vereda]]'
  - '[[reno]]'
related:
  - >-
    _journal/reno/2026-05-14-inbound-whatsapp-luciana-informa-composicao-com-marido.md
  - '[[union-vereda]]'
confidence: 0.8
external_ids:
  client_id: '11375'
  crm_update_status: pending_mcp_unreachable
  declared_down_payment: '30000'
  income_composition: husband
  combined_income_approx: '5000'
  property_id: '161'
  target_construction_monthly_payment: '1000'
---
## Resumo
Luciana Sousa (cliente 11375) informou renda familiar aproximada de R$ 5.000 para composição com o marido.

## Contexto comercial
Cliente interessada no Union Vereda como investimento. Mora na região da Aspirante Mega/Jaraguá, aceita imóvel na planta, entrada aproximada de R$ 30 mil, parcela desejada durante obra em torno de R$ 1.000 e composição de renda com marido.

## Interpretação
Lead qualificado e com sinal positivo. O cenário merece simulação cuidadosa, mas não deve ser tratado como condição aprovada ou fechada por WhatsApp. Próximo passo comercial recomendado: convite para atendimento presencial na Fama para validar tabela, unidade, fluxo durante obra e saldo/financiamento com segurança.

## Resposta cliente-facing preparada
"Entendi, Luciana. Com renda familiar na faixa de R$ 5 mil, entrada de R$ 30 mil e tentando manter a obra por volta de R$ 1 mil, é um cenário que vale simular com cuidado.

O ponto principal vai ser ver qual unidade encaixa melhor e como fica o saldo lá na entrega.

Pra eu não te passar número errado por aqui, o ideal é vocês passarem aqui na Fama pra montar esse fluxo certinho. Hoje no fim do dia vocês conseguem, ou amanhã fica melhor?"

## Pendência operacional
CRM/FamaChat segue pendente se mcp-postgres continuar indisponível: registrar renda familiar aproximada, composição com marido, entrada, parcela desejada, atualizar status se aplicável e pausar Repescagem por resposta real.
