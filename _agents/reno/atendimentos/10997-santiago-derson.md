---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Santiago Derson
client_id: 10997
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-04-27'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
  - union-vista
  - grand-ville
---
# Atendimento — Santiago Derson

## Resumo atual
Cliente de Facebook Ads sob responsabilidade do Reno (`broker_id=35`), status CRM atual `Não Respondeu`. Interesse identificado no empreendimento Union Vista, no Grand Ville. Primeiro contato e repescagens steps 1, 2, 3 e 4 enviados; até esta atualização, não há resposta real do cliente registrada no CRM.

## Dados operacionais
- Cliente ID: 10997
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- Telefone/WhatsApp: WhatsApp identificado no CRM; número omitido neste documento curado
- Última interação relevante: 2026-05-02 — repescagem step 4 enviada pelo Reno

## Contexto comercial
Interesse associado ao Union Vista, no Grand Ville, em Uberlândia. Empreendimento em lançamento, entrega prevista para Jul/2027, com apartamentos em faixa aproximada a partir de R$ 292 mil conforme CRM de empreendimentos. As abordagens anteriores já trabalharam região/prazo/faixa de investimento, forma de viabilização da compra e finalidade de uso do imóvel. No step 4, a abordagem mudou para convite consultivo direto: organizar o caminho de compra do cliente, comparar o lançamento com possibilidades de entrega/condição diferente e levar a conversa para uma análise objetiva na Fama na segunda-feira, respeitando a regra de fim de semana.

## Diagnóstico
### Necessidade
Possível busca por imóvel específico ou empreendimento anunciado, ainda sem resposta do cliente para qualificação.

### Momento
Cliente silencioso após primeiro contato e quatro repescagens. Momento de compra ainda não identificado.

### Decisão
Sem informações sobre decisores ou influência familiar.

### Viabilidade
Sem dados de renda, entrada ou crédito. A repescagem step 2 buscou abrir conversa sobre compra financiada versus à vista sem prometer aprovação. A repescagem step 3 evitou repetir financiamento e buscou entender o objetivo principal da compra. A repescagem step 4 evoluiu para análise consultiva do caminho de compra e possível visita/conversa presencial na Fama na segunda-feira.

## Histórico curado de interações
### 2026-04-27 — Primeiro contato enviado
Primeiro contato enviado pelo Reno via WhatsApp com abertura curta sobre o Union Vista no Grand Ville, perguntando se a região combinava com o que o cliente estava buscando. Status CRM permaneceu `Não Respondeu`.

### 2026-04-29 — Repescagem step 1 enviada
Mensagem abordou Union Vista/Grand Ville, região, prazo de entrega e faixa de investimento, perguntando se o cliente preferia começar pela região do Grand Ville ou pela viabilidade da compra. Sem resposta registrada depois do envio.

### 2026-04-30 — Repescagem step 2 enviada
Fluxo: repescagem.
Step enviado: 2.
Ângulo/contexto usado: evitar caminho errado pela viabilização da compra; entrada, parcela e prazo como filtros para decidir se Union Vista/Grand Ville vale seguir ou se faz sentido comparar alternativas.
Mensagem enviada:

> Santiago, passando por aqui rapidinho 🏡
>
> No caso do Union Vista/Grand Ville, um ponto que costuma mudar tudo é a **forma de viabilizar a compra**: entrada, parcela e prazo acabam filtrando se esse caminho vale seguir ou se é melhor comparar outra alternativa.
>
> Pra eu te orientar sem te mandar opção aleatória: você imagina comprar financiado ou à vista?

### 2026-05-01 — Repescagem step 3 enviada
Fluxo: repescagem.
Step enviado: 3.
Ângulo/contexto usado: diagnóstico leve sobre objetivo de uso do imóvel; diferenciado do step anterior por trocar o foco de financiamento/entrada/parcela para intenção de compra — morar ou investir — considerando que o Union Vista é lançamento no Grand Ville com entrega futura.
Mensagem enviada:

> Santiago, pensando no Union Vista 📍
>
> Como ele é um lançamento no Grand Ville, com entrega prevista para 2027, o caminho pode mudar bastante dependendo se a ideia é **morar** ou **investir**.
>
> Pra eu não te direcionar errado: você está olhando esse imóvel mais para morar ou para investimento?

### 2026-05-02 — Repescagem step 4 enviada
Fluxo: repescagem.
Step enviado: 4.
Ângulo/contexto usado: convite consultivo direto, com mudança substancial em relação ao step 3; em vez de perguntar finalidade de uso, a mensagem propôs organizar o caminho de compra, comparar o Union Vista com alternativas de entrega/condição diferente e chamar para análise objetiva na Fama na segunda-feira por se tratar de fim de semana.
Mensagem enviada:

> Santiago, vou ser bem direto pra não te mandar mensagem solta 🔑
>
> Pelo Union Vista ser um lançamento no Grand Ville, o ponto agora não é só ver preço ou planta. É entender se esse caminho de compra até 2027 faz sentido pra você ou se vale comparar algo com entrega ou condição diferente.
>
> Na segunda, posso te receber na Fama para uma análise rápida e **bem objetiva** do melhor caminho de compra para o seu caso.
>
> Quer que eu veja um horário pra você na segunda?

Próximo follow-up previsto: 2026-05-03T09:10:00-03:00, caso o cliente permaneça em `Não Respondeu` e sem resposta real.

## Objeções e travas
- Silêncio após contato inicial e repescagens steps 1, 2, 3 e 4.
- Duplicidade operacional histórica já auditada, mas Renato autorizou o Reno a assumir o primeiro contato neste cadastro.

## Próximo passo
Aguardar resposta. Se o cliente responder, a repescagem deve parar e o status deve ser movido condicionalmente de `Não Respondeu` para `Em Atendimento`, seguindo o fluxo normal de qualificação do Reno. Se continuar sem resposta, a próxima execução elegível poderá enviar a repescagem step 5 no horário previsto, com encerramento elegante da régua.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/10997-santiago-derson.md`.
- Existe referência legada anterior sem prefixo de `client_id`; novas atualizações devem permanecer neste caminho oficial.
- Estado da repescagem step 4 registrado no CRM pela tool específica do Reno (`mark_reno_followup_sent`), sem mudança de status do cliente.
- `claim_expires_at` foi limpo após a marcação bem-sucedida do envio.
