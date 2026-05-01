---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Maycon Olimpio
client_id: 10968
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-04-27'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
---
# Atendimento — Maycon Olimpio

## Resumo atual
Cliente CRM 10968 sob responsabilidade do Reno (`broker_id=35`), em status `Não Respondeu`. Lead veio de Facebook Ads com interesse no empreendimento Union Vista, no Grand Ville. Primeiro contato e repescagens steps 1 e 2 não geraram resposta; em 2026-05-01 foi enviada a repescagem step 3 com diagnóstico leve, mudando o ângulo para prazo de entrega e objetivo da compra (morar vs investir), sem pressionar visita.

## Dados operacionais
- Cliente ID: 10968
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- Telefone/WhatsApp: disponível no CRM; envio realizado via WhatsApp JID salvo
- Última interação relevante: 2026-05-01 18:14:07 -03:00 — repescagem step 3 enviada

## Contexto comercial
- Interesse identificado: Union Vista
- Região usada no atendimento: Grand Ville, Uberlândia
- Produto citado: apartamento em lançamento, 2 quartos, entrega prevista para jul/2027
- Contexto útil: cliente ainda não respondeu ao primeiro contato nem às repescagens anteriores. A abordagem do step 3 evitou repetir “encaixe/viabilidade” e trouxe um motivo novo para resposta: entender se o cliente olha o imóvel para morar, planejar mudança ou investir.

## Diagnóstico
### Necessidade
Ainda não diagnosticada diretamente, pois não houve resposta do cliente. Indício inicial: interesse em imóvel/empreendimento específico.

### Momento
Cliente silencioso após primeiro contato e repescagens steps 1 e 2. Fluxo atual é repescagem ativa, sem pressão por visita.

### Decisão
Não há informação confirmada sobre decisores.

### Viabilidade
Não há dados confirmados de financiamento, entrada, renda ou forma de pagamento. Não prometer crédito. Próxima leitura deve depender da resposta sobre finalidade da compra e, depois, prazo/forma de pagamento.

## Histórico curado de interações
### 2026-04-23 — Falha técnica anterior
Houve falha técnica no primeiro contato via WhatsApp, registrada no CRM. Caso depois entrou em recuperação operacional.

### 2026-04-27 — Primeiro contato de recuperação
Reno enviou primeiro contato de recuperação via WhatsApp, contextualizando Union Vista / Grand Ville e perguntando se a região combinava com a busca do cliente. Status permaneceu `Não Respondeu`.

### 2026-04-29 — Repescagem step 1
Repescagem step 1 enviada via WhatsApp com ângulo de imóvel específico e organização da busca: Union Vista, Grand Ville, leitura simples e sem pressão para entender se o empreendimento encaixava no momento do cliente.

### 2026-04-30 — Repescagem step 2
Repescagem step 2 enviada via WhatsApp com ângulo de evitar caminho errado: antes de insistir no imóvel, entender se a opção fazia sentido em região, valor e forma de compra.

Mensagem enviada:
> Oi, Maycon! Tudo bem? 🔑
>
> Como você tinha olhado o Union Vista, no Grand Ville, queria te chamar atenção para um ponto: antes de insistir em qualquer imóvel, vale entender se a opção encaixa bem em região, valor e forma de compra.
>
> Isso evita perder tempo com algo bonito no anúncio, mas que talvez não seja o melhor caminho para o seu momento.
>
> Quer que eu faça uma primeira leitura contigo para ver se o Union Vista faz sentido ou se vale ajustar a busca?

Data/hora de envio: 2026-04-30T10:07:38-03:00

### 2026-05-01 — Repescagem step 3
Fluxo: repescagem

Step enviado: 3

Ângulo comercial usado: imóvel específico + diagnóstico leve sobre finalidade da compra e prazo de entrega

Comparação com abordagem anterior: o step 2 falava de encaixe em região, valor e forma de compra. O step 3 mudou o ângulo para lançamento com entrega em jul/2027, mudou a pergunta para escolha objetiva entre morar ou investir e mudou o benefício para direcionar o caminho conforme finalidade da compra.

Mensagem enviada:
> Maycon, deixa eu te perguntar de forma objetiva 🏡
>
> O Union Vista é lançamento no Grand Ville, com entrega prevista para **jul/2027**. Isso muda bastante a análise: para morar, planejar mudança ou investir, o melhor caminho pode ser diferente.
>
> Você está olhando mais para **morar** ou para **investir**?

Data/hora de envio: 2026-05-01T18:14:07-03:00

Próximo `next_run_at`: 2026-05-02T19:10:00-03:00

## Objeções e travas
- Trava atual: silêncio inicial; nenhuma objeção explícita registrada.

## Próximo passo
Aguardar resposta do cliente. Se responder, parar repescagem, registrar a primeira resposta no CRM, alterar status de `Não Respondeu` para `Em Atendimento` somente se ainda estiver exatamente nesse status e seguir atendimento consultivo por outro fluxo do Reno.

Se não responder até o próximo horário elegível, a régua pode seguir para repescagem step 4 conforme fila exclusiva de repescagem.

## Observações operacionais
- Envio de 2026-05-01 registrado no CRM via tool específica `mark_reno_followup_sent`.
- Status CRM não foi alterado durante a repescagem.
- Documento mantido no caminho oficial `_agents/reno/atendimentos/10968-maycon-olimpio.md`.
