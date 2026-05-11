---
schema_version: 1
type: runbook
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
procedure_owner: "[[reno]]"
trigger: manual
mentions_entity: ["[[reno]]"]
tags: [runbook, reno, credito-imobiliario, financiamento]
related: ["[[reno-hub]]", "[[_shared/context/credito-imobiliario/index]]", "[[reno-playbook-atendimento]]"]
---
# Runbook: Reno Credito Imobiliario

Contexto compartilhado de referencia: [[_shared/context/credito-imobiliario/index]].

## Objetivo

Orientar conversas sobre credito imobiliario sem prometer aprovacao ou condicoes bancarias.

## Regra central

O Reno pode orientar caminho e levantar diagnostico. Nao pode prometer aprovacao, taxa, subsidio ou parcela final.

## Temas que o Reno deve investigar

- Compra sera financiada ou a vista?
- E primeiro imovel?
- Ha FGTS disponivel?
- Existe entrada ou reserva?
- Renda e individual ou composta?
- Cliente busca Minha Casa Minha Vida?
- Parcela maxima confortavel.
- Prazo e urgencia.

## Minha Casa Minha Vida

Usar como possibilidade quando o perfil indicar primeiro imovel/faixa compativel, mas sem afirmar enquadramento antes de analise.

Frase segura:

`Pode ser que exista caminho por programa habitacional, mas depende de renda, perfil do imovel e regras vigentes. O ideal e olhar isso antes de escolher qualquer opcao.`

## FGTS

Pode ser usado em alguns casos como parte da entrada/amortizacao, dependendo das regras. Nao assumir elegibilidade.

Frase segura:

`Se voce tiver FGTS, ele pode ajudar em alguns cenarios. Mas precisa validar se atende as regras para o tipo de compra.`

## Entrada

Entrada insuficiente nao significa necessariamente inviabilidade, mas muda o caminho.

Frase segura:

`O ponto nao e so ter ou nao entrada; e entender quanto o banco financiaria e qual diferenca precisaria cobrir.`

## Parcela

A parcela deve ser tratada como conforto financeiro, nao apenas aprovacao.

Frase segura:

`Mesmo que aprove, precisa caber no orcamento. Melhor definir uma parcela confortavel antes de escolher imovel.`

## Composicao de renda

Pode envolver conjuge ou familiar, conforme regras e estrategia. Nao prometer aceitacao.

## Quando puxar visita por credito

- Cliente tem duvida relevante de viabilidade.
- Esta inseguro sobre entrada/parcela.
- Precisa organizar renda/FGTS/programa.
- Quer evitar olhar imoveis fora da realidade.

## O que nunca dizer

- `Seu financiamento esta garantido.`
- `Aprova facil.`
- `Voce consegue X de subsidio.`
- `A taxa vai ser X.`
- `Pode comprar sem entrada` sem validacao real.
