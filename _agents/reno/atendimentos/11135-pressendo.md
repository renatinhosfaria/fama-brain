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
  - primeira-resposta
  - em-atendimento
---
# Atendimento — João Pressendo

## Resumo atual
Cliente do Reno em status operacional `Em Atendimento`. O primeiro contato foi enviado em 2026-05-02 sobre o Union Vereda, no Jaraguá. Em 2026-05-02 às 22:56 BRT, foi enviada a repescagem step 1 com pergunta de confirmação de nome porque o cadastro estava como `Pressendo`. Em 2026-05-03, o cliente respondeu pelo WhatsApp informando o nome correto: João; `Pressendo` é o sobrenome. O CRM foi corrigido para `João Pressendo`, o status saiu de `Não Respondeu` para `Em Atendimento` e a repescagem foi interrompida com `stopped_reason=client_replied`.

## Dados operacionais
- Cliente ID: 11135
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: WhatsApp confirmado no CRM
- Empreendimento de interesse: Union Vereda, Jaraguá, zona Oeste de Uberlândia
- Última interação relevante: primeira resposta inbound do cliente em 2026-05-03 informando o nome correto
- Repescagem: interrompida; `step=1`, `enabled=false`, `next_run_at=null`, `stopped_reason=client_replied`

## Contexto comercial
O cliente veio de anúncio do Facebook Ads com interesse no empreendimento Union Vereda, no bairro Jaraguá. O empreendimento tem apartamentos de 2 quartos, suíte e varanda/sacada, com lazer de condomínio e entrega prevista para Dez/2028. A abordagem atual deve retomar de forma curta e humana usando o nome correto e o contexto do Union Vereda/Jaraguá.

## Diagnóstico
### Necessidade
Ainda não informada pelo cliente.

### Momento
Ainda não informado pelo cliente. Como o Union Vereda tem entrega prevista para Dez/2028, o momento de compra e a tolerância ao prazo ainda precisam ser entendidos quando houver continuidade da conversa.

### Decisão
Ainda não informada pelo cliente.

### Viabilidade
Ainda não informada pelo cliente. Não houve abordagem de renda, entrada, FGTS ou financiamento. Não prometer crédito; quando responder, conduzir diagnóstico leve e consultivo.

## Histórico curado de interações
### 2026-05-02 — Primeiro contato enviado
Reno enviou abertura curta pelo WhatsApp: apresentação como consultor da Fama, referência ao interesse no Union Vereda, no Jaraguá, e pergunta se o cliente procura imóvel nessa região. Status atualizado condicionalmente de Sem Atendimento para Não Respondeu. Repescagem inicializada para caso permanecesse sem resposta.

### 2026-05-02 — Repescagem step 1 enviada
Mensagem enviada via WhatsApp usando o JID confirmado no CRM. Ângulo: nome cadastrado incomum/suspeito + contexto do imóvel específico. A mensagem pediu confirmação de como o cliente prefere ser chamado antes da qualificação.

Mensagem enviada:
> Oi, tudo bem? Aqui é o Reno, da Fama. Vi seu interesse no Union Vereda, no Jaraguá 🏡
>
> Antes de te orientar certinho sobre o imóvel, só quero confirmar uma coisa para não te atender pelo nome errado.
>
> Como posso te chamar?

Estado após envio no CRM: `repescagem.step=1`, `enabled=true`, `last_sent_at=2026-05-02T22:56:56-03:00`, `next_run_at=2026-05-03T09:10:00-03:00`, `stopped_reason=null`. Status do cliente preservado como `Não Respondeu`.

### 2026-05-03 — Primeira resposta inbound e correção operacional
Cliente respondeu pelo WhatsApp informando o nome correto: João; `Pressendo` é o sobrenome. O CRM foi atualizado de `Pressendo` para `João Pressendo`. O status foi alterado de `Não Respondeu` para `Em Atendimento`. A branch de repescagem foi interrompida com `enabled=false`, `next_run_at=null` e `stopped_reason=client_replied`, preservando `step=1` e `last_sent_at=2026-05-02T22:56:56-03:00`.

Nota operacional: a mensagem capturada nesta rotina silenciosa veio com conteúdo de sistema/skill no payload, então o conteúdo comercial útil foi preservado a partir da nota e do estado real do CRM, sem transcrever ruído técnico no atendimento.

## Objeções e travas
- Nenhuma objeção comercial registrada até o momento.
- Nome corrigido no CRM: `João Pressendo`.

## Próximo passo
Responder na sessão WhatsApp normal, sem envio por esta rotina silenciosa, retomando o contexto: `Perfeito, João. Vi que você olhou o Union Vereda, no Jaraguá. Você está procurando imóvel nessa região?`

## Observações operacionais
- Evento de origem: cliente.created / famachat-created.
- Referência operacional do primeiro contato: evt_3303 / 3303_1777734328940.
- Nota CRM de repescagem: 16449.
- Nota CRM de primeira resposta/correção operacional: 16450.
- Documento mantido no caminho oficial do Reno por `client_id` para evitar duplicidade por mudança de nome/slug.
