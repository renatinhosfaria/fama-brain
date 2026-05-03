---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Pressendo
client_id: 11135
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Pressendo

## Resumo atual
Cliente do Reno em status operacional `Não Respondeu`. O primeiro contato foi enviado em 2026-05-02 sobre o Union Vereda, no Jaraguá. Em 2026-05-02 às 22:56 BRT, foi enviada a repescagem step 1. Como o nome cadastrado (`Pressendo`) parece inseguro para saudação personalizada, a abordagem priorizou confirmar como o cliente prefere ser chamado antes de avançar na qualificação.

## Dados operacionais
- Cliente ID: 11135
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: WhatsApp confirmado no CRM
- Empreendimento de interesse: Union Vereda, Jaraguá, zona Oeste de Uberlândia
- Última interação relevante: repescagem step 1 enviada pelo Reno via WhatsApp em 2026-05-02 22:56 BRT
- Próximo `next_run_at` de repescagem: 2026-05-03 09:10 BRT, se permanecer sem resposta

## Contexto comercial
O cliente veio de anúncio do Facebook Ads com interesse no empreendimento Union Vereda, no bairro Jaraguá. O empreendimento tem apartamentos de 2 quartos, suíte e varanda/sacada, com lazer de condomínio e entrega prevista para Dez/2028. A abertura inicial foi contextualizada pelo empreendimento e pela região, sem aprofundar qualificação financeira antes da primeira resposta.

## Diagnóstico
### Necessidade
Ainda não informada pelo cliente.

### Momento
Ainda não informado pelo cliente. Como o Union Vereda tem entrega prevista para Dez/2028, o momento de compra e a tolerância ao prazo ainda precisam ser entendidos quando houver resposta.

### Decisão
Ainda não informada pelo cliente.

### Viabilidade
Ainda não informada pelo cliente. Não houve abordagem de renda, entrada, FGTS ou financiamento. Não prometer crédito; quando responder, conduzir diagnóstico leve e consultivo.

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

Estado após envio no CRM: `repescagem.step=1`, `enabled=true`, `last_sent_at=2026-05-02T22:56:56-03:00`, `next_run_at=2026-05-03T09:10:00-03:00`, `stopped_reason=null`. Status do cliente preservado como `Não Respondeu`.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Nome cadastrado parece inseguro para uso comercial; primeira resposta esperada deve confirmar como o cliente prefere ser chamado.

## Próximo passo
Se o cliente responder informando o nome, interromper repescagem por status, atualizar o `full_name` no CRM quando aplicável, registrar nota objetiva e seguir pelo fluxo normal de qualificação do Reno. Se permanecer em silêncio até o próximo vencimento, executar repescagem step 2 conforme a régua.

## Observações operacionais
- Evento de origem: cliente.created / famachat-created.
- Referência operacional do primeiro contato: evt_3303 / 3303_1777734328940.
- Nota CRM de repescagem criada automaticamente pela marcação do envio: 16449.
- Documento mantido no caminho oficial do Reno para evitar duplicidade por cliente.
