---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Marcelo Escobar de Oliveira
client_id: 10938
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-04-29'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
---
# Atendimento — Marcelo Escobar de Oliveira

## Resumo atual
Cliente do Reno em status **Não Respondeu**. Primeiro contato e repescagens steps 1, 2, 3 e 4 foram enviados por WhatsApp, sem resposta real registrada até o momento. Em 2026-05-02 foi enviada a repescagem step 4 com convite consultivo direto, usando o contexto do Place+Arbi e mudando o ângulo para organizar entrada, parcela e prazo até a entrega prevista em 2027.

## Dados operacionais
- Cliente ID: 10938
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: salvo no CRM; envio realizado pelo JID cadastrado
- Última interação relevante: 2026-05-02 10:15:50-03 — repescagem step 4 enviada por WhatsApp

## Contexto comercial
Lead relacionado ao **Place+Arbi**, na região do **Shopping Park**, em Uberlândia. Empreendimento em lançamento, com entrega prevista para **junho/2027**. Apartamentos disponíveis no contexto consultado: plantas de 48m² e 50m², 2 quartos, com valores aproximados entre R$ 221 mil e R$ 240 mil. Não há resposta real do cliente após o primeiro contato. Contexto disponível indica interesse originado por anúncio/imóvel específico, sem dados adicionais sobre financiamento, renda, entrada ou prazo.

## Diagnóstico
### Necessidade
Possível interesse em imóvel específico/anúncio, ainda sem confirmação ativa do cliente.

### Momento
Cliente silencioso após primeiro contato e quatro repescagens. Como o empreendimento é lançamento com entrega em 2027, a abordagem mais útil é evitar conversa genérica e tentar abrir microresposta por uma análise objetiva de plano de compra.

### Decisão
Sem informação confirmada sobre decisores ou critérios de escolha.

### Viabilidade
Não há dados confirmados de financiamento, entrada, renda ou forma de compra. A repescagem step 4 abordou entrada, parcela e prazo apenas como pontos de organização, sem promessa de crédito ou aprovação.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato inicial
Reno enviou abordagem inicial citando interesse no Place+Arbi / região do Shopping Park. Cliente permaneceu sem resposta real registrada.

### 2026-04-28 — Repescagem step 1
Reno enviou follow-up de repescagem step 1 com abordagem curta de retomada. Cliente permaneceu em `Não Respondeu`.

### 2026-04-29 — Repescagem step 2 enviada
Fluxo: repescagem  
Step enviado: 2  
Ângulo/contexto usado: imóvel específico / Place+Arbi / Shopping Park, com argumento de evitar olhar anúncio solto sem avaliar encaixe de região, valor e forma de compra.  
Mensagem enviada:

> Oi, Marcelo! Tudo bem? 🏡
>
> Sobre o Place Arbi, na região do Shopping Park, o mais importante agora é não olhar só o anúncio solto. Vale entender se ele encaixa no seu momento — região, valor e forma de compra — pra você não perder tempo com uma opção que talvez não faça sentido.
>
> Quer que eu faça uma primeira análise **simples e realista** pra ver se esse caminho combina com o que você busca?

Próximo `next_run_at`: 2026-04-30T14:20:00-03:00.

### 2026-04-30 — Repescagem step 3 enviada
Fluxo: repescagem  
Step enviado: 3  
Ângulo/contexto usado: diagnóstico leve sobre finalidade da compra, mudando o foco da viabilidade/encaixe do step anterior para prazo de entrega e diferença entre morar futuramente ou investir.  
Mensagem enviada:

> Marcelo, só pra eu não te mandar opção no escuro 🏡
>
> O Place+Arbi é um lançamento no Shopping Park, com entrega prevista pra 2027. Isso muda bastante a análise: pode fazer sentido pra quem consegue planejar a compra com calma, mas não tanto pra quem precisa mudar logo.
>
> Nesse caso, você estava olhando mais para **morar no futuro** ou para **investimento**?

Próximo `next_run_at`: 2026-05-01T19:10:00-03:00.

### 2026-05-02 — Repescagem step 4 enviada
Fluxo: repescagem  
Step enviado: 4  
Ângulo/contexto usado: convite consultivo direto. A abordagem mudou do diagnóstico morar/investir para organização do plano de compra — entrada, parcela e prazo até 2027 — e trouxe a possibilidade de uma conversa presencial na Fama na segunda-feira somente se a análise fizer sentido.  
Mensagem enviada:

> Marcelo, vou ser bem direto por aqui 🔑
>
> O Place+Arbi pode ser um caminho interessante na Zona Sul, mas antes de olhar só planta e valor, vale organizar se a compra faz sentido no seu plano: entrada, parcela e prazo até 2027.
>
> Se essa análise encaixar, a gente pode até deixar uma conversa presencial na Fama para segunda, sem atropelar nada.
>
> Quer que eu veja esse caminho com você?

Próximo `next_run_at`: 2026-05-03T09:10:00-03:00.

## Objeções e travas
- Trava principal: silêncio / ausência de primeira resposta real.
- Informação comercial insuficiente para diagnóstico financeiro, decisão ou urgência.

## Próximo passo
Aguardar resposta do cliente. Se não responder até o próximo horário elegível, seguir régua de repescagem com step 5, usando encerramento elegante e porta aberta. Após envio bem-sucedido do step 5, a régua deverá encerrar por `max_steps` e, se o cliente ainda estiver exatamente em `Não Respondeu`, o status deverá ser arquivado automaticamente conforme regra defensiva do Reno.

## Observações operacionais
- WhatsApp enviado em 2026-05-02 pelo JID salvo no CRM.
- Status CRM preservado como `Não Respondeu`, conforme política da repescagem para steps 1 a 4.
- Branch `meta_data.reno_followup.repescagem` atualizada via ferramenta específica do Reno para `step=4`, `last_sent_at=2026-05-02T10:15:50-03:00` e `next_run_at=2026-05-03T09:10:00-03:00`.
