---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Ana Clara Marques
client_id: 10943
broker_id: 35
status_crm: Não Respondeu
source: FamaChat / SLA Cascata
created: '2026-04-24'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
---
# Atendimento — Ana Clara Marques

## Resumo atual
Cliente do Reno em `Não Respondeu`, originada por SLA Cascata, com interesse associado ao empreendimento Union Vereda, no bairro Jaraguá, em Uberlândia. Primeiro contato, reenvio inicial e três steps de repescagem já foram enviados sem resposta real registrada. Em 2026-04-30 foi enviada a repescagem step 3 com diagnóstico leve, mudando a abordagem de encaixe/viabilidade para objetivo de compra: morar ou investir.

## Dados operacionais
- Cliente ID: 10943
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: disponível no CRM; JID salvo usado no envio
- Empreendimento vinculado: Union Vereda (ID 161), Jaraguá, Uberlândia
- Última interação relevante: repescagem step 3 enviada em 2026-04-30 17:07 -03

## Contexto comercial
A cliente demonstrou interesse no Union Vereda, empreendimento da HLTS Construtora no Jaraguá, em Uberlândia. O empreendimento tem apartamentos de 2 quartos, lazer e entrega prevista para Dez/2028. O contexto útil para retomada é entender se a busca é para morar ou investir antes de aprofundar planta, prazo, região, forma de compra ou comparação com alternativas.

## Diagnóstico
### Necessidade
Possível busca por apartamento no Union Vereda/Jaraguá, ainda sem confirmação verbal da cliente.

### Momento
Cliente silenciosa após primeiro contato, reenvio inicial e repescagens anteriores. Repescagem ativa para gerar a primeira microresposta.

### Decisão
Sem informações confirmadas sobre decisores, urgência ou critérios de escolha. Step 3 buscou descobrir o objetivo principal da compra: morar ou investir.

### Viabilidade
Ainda não há dados de renda, entrada, modalidade de compra ou financiamento. Não prometer crédito; manter abordagem consultiva e diagnóstica.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato / backlog
Reno enviou mensagem inicial mencionando o interesse no Union Vereda, na região do Jaraguá, e perguntou se a região combinava com a busca. Status preservado/atualizado como `Não Respondeu`.

### 2026-04-25 — Reenvio inicial
Reno reenviou a abertura inicial em duas mensagens pelo WhatsApp, reforçando o interesse no Union Vereda/Jaraguá. Cliente permaneceu sem resposta real.

### 2026-04-28 — Repescagem step 1
Reno enviou follow-up de repescagem step 1. A mensagem foi genérica e buscou reabrir conversa sobre ajuda na busca do imóvel. Próximo step foi reagendado pela régua de repescagem.

### 2026-04-29 — Repescagem step 2 enviada
Fluxo: repescagem.

Step enviado: 2.

Ângulo/contexto usado: imóvel específico + evitar caminho errado. A mensagem usou o Union Vereda/Jaraguá como contexto e trouxe a ideia de avaliar encaixe do empreendimento no momento da cliente antes de avançar.

Mensagem enviada:

> Oi, Ana! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, às vezes o imóvel chama atenção pela estrutura e localização, mas o mais importante é entender se ele encaixa no seu momento — valor, entrada/financiamento e prazo de entrega.
>
> Posso te ajudar a fazer essa primeira leitura de forma **simples e sem pressão**.
>
> Você quer que eu veja se o Union Vereda faz sentido para o que você busca hoje?

Registro CRM: envio registrado via ferramenta específica `mark_reno_followup_sent`, preservando o status `Não Respondeu`.

Próximo `next_run_at`: 2026-04-30T14:20:00-03:00.

### 2026-04-30 — Repescagem step 3 enviada
Fluxo: repescagem.

Step enviado: 3.

Ângulo/contexto usado: imóvel específico + diagnóstico leve. A nova abordagem mudou pelo menos três elementos em relação ao step 2: saiu de encaixe/viabilidade para objetivo de compra, mudou a pergunta para escolha objetiva entre morar ou investir, e destacou o benefício de direcionar indicação/planta/prazo conforme uso pretendido.

Mensagem enviada:

> Ana, pensando no Union Vereda: antes de te mandar opções soltas, tem um ponto que muda bastante a indicação. 🏡
>
> Esse tipo de empreendimento pode fazer sentido tanto para morar quanto para investir, mas o caminho muda conforme o objetivo — região, planta, prazo e forma de compra.
>
> Hoje você está olhando mais para **morar** ou para **investir**?

Registro CRM: envio registrado via ferramenta específica `mark_reno_followup_sent`, preservando o status `Não Respondeu`.

Próximo `next_run_at`: 2026-05-01T19:10:00-03:00.

## Objeções e travas
- Sem resposta real da cliente até o momento.
- Sem dados de viabilidade financeira ou critérios de busca confirmados.

## Próximo passo
Aguardar resposta da cliente. Se não houver resposta até 2026-05-01T19:10:00-03:00, executar repescagem step 4 com convite consultivo mais direto, sem repetir o argumento de encaixe usado no step 2 nem a pergunta morar/investir usada no step 3.

## Observações operacionais
- Envio do step 3 feito para o JID salvo no CRM, sem expor telefone no vault além da indicação de que o JID está disponível no CRM.
- Status CRM preservado como `Não Respondeu`; a repescagem não altera status até haver resposta real da cliente.
