---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: João Pressendo
client_id: 11135
broker_id: 35
status_crm: Em Atendimento
source: Facebook Ads
created: '2026-05-02'
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
  - inbound
  - nome-corrigido
---
# Atendimento — João Pressendo

## Resumo atual
Cliente do Reno em `Em Atendimento`. Em 2026-05-03, respondeu ao pedido de confirmação de nome informando que se chama João e que Pressendo é o sobrenome. CRM atualizado para `João Pressendo`, status alterado de `Não Respondeu` para `Em Atendimento` e repescagem interrompida com `stopped_reason=client_replied`. Próximo passo: retomar a qualificação leve pelo interesse no Union Vereda, no Jaraguá.

## Dados operacionais
- Cliente ID: 11135
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: (34) 99956-2304 / 553499562304@s.whatsapp.net
- Empreendimento de interesse: Union Vereda, Jaraguá, zona Oeste de Uberlândia
- Última interação relevante: cliente respondeu ao WhatsApp em 2026-05-03 informando nome correto
- Repescagem: interrompida; `step=1`, `enabled=false`, `next_run_at=null`, `stopped_reason=client_replied`

## Contexto comercial
O cliente veio de anúncio do Facebook Ads com interesse no empreendimento Union Vereda, no bairro Jaraguá. O empreendimento tem apartamentos de 2 quartos, suíte e varanda/sacada, com lazer de condomínio e entrega prevista para Dez/2028. A abertura inicial foi contextualizada pelo empreendimento e pela região. Como o nome cadastrado (`Pressendo`) parecia inseguro para saudação, o Reno pediu confirmação de como o cliente prefere ser chamado antes de avançar.

## Diagnóstico
### Necessidade
Ainda não informada pelo cliente.

### Momento
Ainda não informado pelo cliente. Como o Union Vereda tem entrega prevista para Dez/2028, o momento de compra e a tolerância ao prazo ainda precisam ser entendidos quando houver resposta.

### Decisão
Ainda não informada pelo cliente.

### Viabilidade
Ainda não informada pelo cliente. Não houve abordagem de renda, entrada, FGTS ou financiamento. Não prometer crédito; conduzir diagnóstico leve e consultivo.

## Histórico curado de interações
### 2026-05-02 — Primeiro contato enviado
Reno enviou abertura curta pelo WhatsApp: apresentação como consultor da Fama, referência ao interesse no Union Vereda, no Jaraguá, e pergunta se o cliente procura imóvel nessa região. Status atualizado condicionalmente de Sem Atendimento para Não Respondeu. Repescagem inicializada com step 0 para 2026-05-02 às 19:10, caso permanecesse sem resposta.

### 2026-05-02 — Repescagem step 1 enviada
Mensagem enviada via WhatsApp usando o JID confirmado no CRM. Ângulo: nome cadastrado incomum/suspeito + contexto do imóvel específico. A mensagem criou novo motivo de resposta pedindo confirmação de como o cliente prefere ser chamado antes da qualificação.

Mensagem enviada:
> Oi, tudo bem? Aqui é o Reno, da Fama. Vi seu interesse no Union Vereda, no Jaraguá 🏡
>
> Antes de te orientar certinho sobre o imóvel, só quero confirmar uma coisa para não te atender pelo nome errado.
>
> Como posso te chamar?

### 2026-05-03 — Cliente respondeu e nome foi corrigido
Cliente respondeu pelo WhatsApp: “Boa noite, me chamo João, pressendo é o sobrenome”. CRM atualizado de `Pressendo` para `João Pressendo`. Status alterado de `Não Respondeu` para `Em Atendimento`. Repescagem interrompida por resposta do cliente: `enabled=false`, `next_run_at=null`, `stopped_reason=client_replied`. Nota CRM criada: 16450.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava anterior de nome inseguro resolvida: nome correto é João Pressendo.

## Próximo passo
Responder ao cliente de forma curta, agradecer a confirmação do nome e retomar a qualificação pelo contexto do Union Vereda: validar se o Jaraguá/região faz sentido para a busca dele.

## Observações operacionais
- Evento de origem: cliente.created / famachat-created.
- Referência operacional do primeiro contato: evt_3303 / 3303_1777734328940.
- Nota CRM de repescagem criada automaticamente pela marcação do envio: 16449.
- Nota CRM da resposta/nome corrigido: 16450.
- Documento mantido no caminho oficial existente por `client_id` para evitar duplicidade por mudança de nome/slug.
