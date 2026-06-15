---
schema_version: 1
type: entity
status: active
created: '2026-06-15'
updated: '2026-06-15'
source: agent-generated
author_agent: brain
owner: brain
tags:
  - reno
  - whatsapp-inbound
  - qualificacao
  - viabilidade
  - levantamento-opcoes
  - investimento-locacao
  - crm-verified
  - curado-brain
name: Emilly
entity_type: lead
aliases:
  - emilly
  - cliente-11725
  - 'client:11725'
external_ids:
  client_id: '11725'
  broker_id: '35'
  empreendimento_id: '161'
  empreendimento_slug: union-vereda
  fonte: Facebook Ads
mentions_entity:
  - reno-hub
  - union-vereda
  - _shared/context/credito-imobiliario/index
related:
  - '[[reno-hub]]'
  - '[[union-vereda]]'
  - '[[_shared/context/credito-imobiliario/index]]'
  - '[[2026-06-15-whatsapp-inbound-primeira-resposta-registrada]]'
  - >-
    [[2026-06-15-emilly-inbound-whatsapp-cliente-informou-morar-no-palace-planalto]]
  - >-
    [[2026-06-15-emilly-primeira-resposta-inbound-registrada-cliente-perguntou-sobre-localizacao-ponto-de-referencia-do-anuncio-na-aspirante-mega]]
  - >-
    [[2026-06-15-emilly-inbound-duvida-sobre-comprar-agora-e-preferencia-pela-regiao]]
  - '[[2026-06-15-emilly-inbound-prefere-imovel-pronto-ou-entrega-proxima]]'
  - >-
    [[2026-06-15-emilly-resposta-inbound-cliente-informou-que-compraria-sozinha]]
  - '[[2026-06-15-emilly-inbound-renda-livre-e-clt-informadas]]'
  - '[[2026-06-15-emilly-inbound-renda-livre-e-custos-fixos-informados]]'
  - '[[2026-06-15-emilly-inbound-condicao-de-entrada-e-financiamento]]'
  - '[[2026-06-15-emilly-inbound-parcela-seria-novo-custo-de-moradia]]'
  - '[[2026-06-15-emilly-cliente-incluiu-aluguel-como-criterio]]'
  - >-
    [[2026-06-15-emilly-inbound-whatsapp-recebido-cliente-agradeceu-e-encerrou-com-boa-noite-primeiro-contato-ja-constava-respondido]]
confidence: 0.95
status_comercial: Em Atendimento
origem: Facebook Ads / WhatsApp inbound
interesse_atual: >-
  Busca apartamento pronto ou com entrega próxima nas regiões Planalto, Jaraguá,
  Tubalina e redondezas. A compra precisa ser leve, com parcela alvo por volta
  de R$ 1.000 e potencial de locação/liquidez caso ela mude de cidade.
objecoes_ativas:
  - >-
    Quer preservar liberdade financeira e não assumir uma parcela que limite
    troca de emprego ou cidade; R$ 1.500 é teto excepcional, não alvo.
  - >-
    Como mora com a mãe, a parcela seria novo custo de moradia, não substituição
    direta de aluguel.
  - >-
    Compra sozinha, com entrada limitada e pouco FGTS; exige filtro conservador
    antes de sugerir visita ou compromisso.
proximo_passo: >-
  Reno deve retornar com levantamento objetivo e conservador: opções prontas ou
  de entrega próxima, com potencial de aluguel, demanda de locação na região e
  parcela próxima ao alvo. Se não houver encaixe bom, dizer isso claramente
  antes de propor visita ou simulação mais forte.
---
[[reno-hub]] [[union-vereda]] [[_shared/context/credito-imobiliario/index]]

## Resumo curado

Lead Reno em **Em Atendimento** após resposta inbound ao primeiro contato em 2026-06-15. O CRM/FamaChat foi usado como fonte operacional de verdade nesta curadoria; a repescagem já estava encerrada por resposta do cliente (`client_replied`) e o broker operacional é Reno.

A conversa evoluiu de uma dúvida inicial sobre localização/ponto de referência do anúncio para uma qualificação financeira relativamente clara: compra sozinha, renda CLT informada, renda livre informada, entrada limitada, pouco FGTS, preferência por imóvel pronto ou de entrega próxima e foco em regiões próximas a Planalto/Jaraguá/Tubalina. O critério mais importante é **preservar liberdade financeira**: a parcela precisa ficar leve e o imóvel deve ter potencial de aluguel caso ela mude de cidade.

## Classificação

- **Tipo:** entidade/lead.
- **Origem:** Facebook Ads → WhatsApp inbound.
- **Estado comercial:** Em Atendimento.
- **Tema:** qualificação financeira, compra sozinha, parcela conservadora, liquidez/locação, imóvel pronto ou entrega próxima.
- **Prioridade operacional:** média/alta — há resposta ativa e critérios concretos, mas a objeção de liberdade financeira torna inadequada qualquer condução agressiva.
- **Área relacionada:** [[reno-hub]], [[union-vereda]], [[_shared/context/credito-imobiliario/index]].

## Interesse atual

Busca apartamento pronto ou com entrega próxima nas regiões Planalto, Jaraguá, Tubalina e redondezas. Quer uma compra leve e com potencial de locação/liquidez caso mude de cidade.

## Objeções, restrições e riscos

- Parcela alvo por volta de R$ 1.000; R$ 1.500 apenas como exceção se a opção chamar muito a atenção.
- Como mora com a mãe, a parcela seria custo adicional, não substituição de aluguel.
- Compra sozinha, com entrada limitada e pouco FGTS; precisa de pré-análise conservadora.
- Risco de perda de confiança se o atendimento insistir em imóvel fora do conforto financeiro declarado.

## Próximo passo recomendado

Retornar com levantamento enxuto e transparente: opções prontas ou de entrega próxima, com potencial de aluguel, região coerente e parcela próxima ao alvo. A resposta deve preservar a objeção de liberdade financeira e pode dizer explicitamente se não houver encaixe bom. Só depois faz sentido conduzir para simulação/visita presencial.

## Histórico consolidado de interações

- [[2026-06-15-whatsapp-inbound-primeira-resposta-registrada]] — primeira resposta inbound registrada; status movido/confirmado como Em Atendimento e repescagem encerrada por resposta.
- [[2026-06-15-emilly-inbound-whatsapp-cliente-informou-morar-no-palace-planalto]] — cliente informou referência de moradia/região.
- [[2026-06-15-emilly-primeira-resposta-inbound-registrada-cliente-perguntou-sobre-localizacao-ponto-de-referencia-do-anuncio-na-aspirante-mega]] — dúvida inicial sobre localização/ponto de referência do anúncio.
- [[2026-06-15-emilly-inbound-duvida-sobre-comprar-agora-e-preferencia-pela-regiao]] — dúvida sobre comprar agora e preferência pela região.
- [[2026-06-15-emilly-inbound-prefere-imovel-pronto-ou-entrega-proxima]] — preferência por pronto/entrega próxima.
- [[2026-06-15-emilly-resposta-inbound-cliente-informou-que-compraria-sozinha]] — compra seria sozinha.
- [[2026-06-15-emilly-inbound-renda-livre-e-clt-informadas]] / [[2026-06-15-emilly-inbound-renda-livre-e-custos-fixos-informados]] — qualificação de renda e custos.
- [[2026-06-15-emilly-inbound-condicao-de-entrada-e-financiamento]] — entrada/FGTS e financiamento.
- [[2026-06-15-emilly-inbound-parcela-seria-novo-custo-de-moradia]] — parcela como custo adicional.
- [[2026-06-15-emilly-cliente-incluiu-aluguel-como-criterio]] — critério de liquidez/locação.
- [[2026-06-15-emilly-inbound-whatsapp-recebido-cliente-agradeceu-e-encerrou-com-boa-noite-primeiro-contato-ja-constava-respondido]] — fechamento positivo da conversa e compromisso de retorno com opções.

## Interpretação assumida

Interpretei a busca como **exploração consultiva**, não como decisão imediata de compra. A curadoria prioriza o critério de liberdade financeira: encontrar opção segura e locável é mais importante do que acelerar visita. Homônimos antigos encontrados no CRM estão arquivados e não foram usados para inferir o estado atual deste ciclo; o identificador canônico desta nota é `client_id: 11725`.

## Verificação

- CRM consultado para `client_id: 11725` antes da consolidação.
- Journals Reno de 2026-06-15 usados como fontes operacionais write-once.
- PII bruta omitida; mantidos apenas IDs operacionais necessários para desambiguação.
