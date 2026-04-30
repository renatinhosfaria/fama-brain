---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Bruno Sávio
client_id: 10971
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-04-27'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
---
# Atendimento — Bruno Sávio

## Resumo atual
Cliente Bruno Sávio permanece em `Não Respondeu` após primeiro contato e repescagens do Reno. Interesse operacional associado ao empreendimento Union Vista, no Grand Ville, em Uberlândia. Em 2026-04-30, foi enviada a repescagem step 2 com novo ângulo comercial: prazo de entrega/formato de pagamento e distinção entre morar ou investir.

## Dados operacionais
- Cliente ID: 10971
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: JID salvo no CRM usado para envio; telefone não exposto neste resumo.
- Empreendimento vinculado: Union Vista — Grand Ville — Uberlândia/MG
- Última interação relevante: 2026-04-30 17:49 - repescagem step 2 enviada via WhatsApp.

## Contexto comercial
O cliente está vinculado ao Union Vista, empreendimento da HLTS Construtora no bairro Grand Ville, Zona Leste de Uberlândia, com entrega prevista para Jul/2027. Unidades cadastradas a partir de aproximadamente R$ 292 mil, com opções de 2 quartos, suíte, vaga coberta e lazer de condomínio.

Há histórico de primeiro contato e repescagem sem resposta. A mensagem anterior já explorou valores/opções e viabilidade geral; a repescagem atual mudou o foco para prazo, formato de pagamento e objetivo de uso do imóvel.

## Diagnóstico
### Necessidade
Ainda não há resposta real do cliente. A necessidade percebida vem do interesse no Union Vista, sem confirmação se busca moradia, investimento ou comparação de alternativas.

### Momento
Cliente silencioso após primeiro contato e repescagem step 1. Como o empreendimento é lançamento com entrega futura, o momento de compra precisa ser validado antes de insistir em detalhes de unidade.

### Decisão
Não há informação confirmada sobre decisores ou participação familiar.

### Viabilidade
Não há dados de renda, entrada ou financiamento. Evitar prometer crédito. Melhor abordagem: abrir conversa consultiva para entender objetivo e encaixe de prazo/pagamento.

## Histórico curado de interações
### 2026-04-27 — Primeiro contato
- Resultado: enviado.
- Contexto: interesse no Union Vista, no Grand Ville.
- Interação: WhatsApp de abertura enviado com pergunta sobre aderência da região.
- Status CRM: Não Respondeu.

### 2026-04-29 — Repescagem step 1
- Resultado: enviada via WhatsApp.
- Ângulo usado: Union Vista + valores/opções + viabilidade da compra.
- Mensagem: perguntou se o cliente preferia começar pelos valores/opções do Union Vista ou pela viabilidade da compra.
- Próximo follow-up posteriormente ajustado pela régua de repescagem.

### 2026-04-30 — Repescagem step 2
- Resultado: enviada via WhatsApp para o JID salvo no CRM.
- Ângulo usado: evitar caminho errado considerando que o Union Vista é lançamento com entrega prevista para 2027; validar prazo, formato de pagamento e objetivo do cliente.
- Mensagem enviada:

> Bruno, voltei aqui por um ponto importante sobre o Union Vista 🔑
>
> Como ele é um lançamento no Grand Ville, com entrega prevista para 2027, vale olhar não só o valor do apartamento, mas se o **prazo e o formato de pagamento** combinam com o que você quer fazer.
>
> Isso evita perder tempo com uma opção boa no papel, mas que talvez não encaixe no seu plano.
>
> Você está pensando nesse imóvel mais para morar ou como investimento?

- Próximo follow-up previsto no CRM/meta_data: 2026-05-01T19:10:00-03:00.

## Objeções e travas
- Silêncio após primeiro contato e repescagem step 1.
- Possível trava: falta de clareza sobre objetivo de uso, prazo de entrega e formato de pagamento.

## Próximo passo
Aguardar resposta. Se responder, parar repescagem e seguir atendimento consultivo normal do Reno, movendo para `Em Atendimento` quando aplicável. Se permanecer silencioso até o próximo vencimento da régua, executar repescagem step 3 com abordagem substancialmente diferente.

## Observações operacionais
- Cliente elegível para repescagem: broker_id=35, status `Não Respondeu`, branch `meta_data.reno_followup.repescagem.enabled=true`, step anterior 1 e `next_run_at` vencido.
- WhatsApp enviado com sucesso usando o JID salvo no CRM.
- CRM atualizado via `mcp_mcp_postgres_mark_reno_followup_sent`; status preservado em `Não Respondeu`.
- Estado após envio: step=2, enabled=true, stopped_reason=null, next_run_at=2026-05-01T19:10:00-03:00.
