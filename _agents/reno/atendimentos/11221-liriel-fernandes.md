---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Liriel Fernandes
client_id: 11221
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-05-05'
updated: '2026-05-06'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Liriel Fernandes

## Resumo atual
Reno enviou o primeiro contato em 2026-05-05 sobre o Union Vereda/Jaraguá e não houve resposta no ciclo operacional do cliente 11221. Em 2026-05-06, a repescagem step 1 foi enviada com novo ângulo: organizar prazo de entrega, forma de pagamento e comparação com opção mais rápida, sem repetir a pergunta inicial sobre região.

## Dados operacionais
- Cliente ID: 11221
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata (`sla_cascata`)
- Cliente original relacionado: 11169 (usar apenas como contexto consultivo; entidade operacional da repescagem é 11221)
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: 2026-05-06 19:34 BRT — repescagem step 1 enviada pelo WhatsApp
- Próxima repescagem prevista: 2026-05-07 09:10 BRT, se não houver resposta

## Contexto comercial
Entrada originada de SLA Cascata, com interesse vinculado ao Union Vereda, empreendimento no Jaraguá com entrega prevista para Dez/2028. O primeiro contato já havia perguntado sobre interesse na região, então a repescagem mudou para o ângulo de prazo do lançamento, forma de pagamento e comparação com algo de entrega mais rápida.

O cadastro original relacionado (11169) está em outro broker e possui notas humanas recentes indicando interação comercial sobre outro empreendimento/área de lazer. Esse histórico foi usado somente como contexto para evitar uma abordagem genérica; o ciclo operacional do Reno continua sendo o cliente 11221, em `Não Respondeu`.

## Diagnóstico
### Necessidade
Ainda não diagnosticada no ciclo Reno. O contexto sugere interesse por apartamento/lançamento e possível comparação entre opções.

### Momento
Cliente ainda silenciosa com o Reno. Como o Union Vereda tem entrega futura, o timing de compra e a tolerância ao prazo precisam ser esclarecidos antes de avançar.

### Decisão
Não identificada.

### Viabilidade
Não identificada. A repescagem abriu caminho para entender forma de pagamento e encaixe de prazo, sem prometer crédito ou aprovação.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato enviado
Reno enviou abertura curta e contextual sobre o Union Vereda/Jaraguá, perguntando se a cliente procurava imóvel naquela região. Envio técnico validado pelo WhatsApp. Status saiu de `Sem Atendimento` para `Não Respondeu` e a branch de repescagem foi criada com `step=0`, próxima execução prevista para 2026-05-06 às 19:10 BRT.

### 2026-05-06 — Repescagem step 1 enviada
Mensagem enviada via WhatsApp usando o JID salvo no CRM, com validação `onWhatsApp` pelo bridge local:

> Oi, Liriel! Tudo bem? 🏡
>
> Vi seu interesse no Union Vereda, no Jaraguá. Como ele é um lançamento com entrega prevista pra Dez/2028, vale olhar com calma **pra não comparar só foto e planta**, mas prazo, forma de pagamento e se isso encaixa no seu momento.
>
> Pra você faz mais sentido olhar o Union Vereda como opção pra morar mais pra frente ou comparar com algo de entrega mais rápida?

Estado registrado no FamaChat via `mark_reno_followup_sent`: `step=1`, `enabled=true`, `last_sent_at=2026-05-06T19:34:16-03:00`, `next_run_at=2026-05-07T09:10:00-03:00`, `stopped_reason=null`.

## Objeções e travas
- Sem objeção explícita no ciclo Reno.
- Trava principal: ausência de primeira resposta ao Reno.
- Ponto comercial a validar: se a cliente aceita prazo de lançamento/entrega Dez/2028 ou prefere comparar com alternativa de entrega mais rápida.

## Próximo passo
Aguardar resposta. Se a cliente responder, mover de `Não Respondeu` para `Em Atendimento` somente se o status ainda estiver exatamente assim, registrar a resposta no CRM e seguir o atendimento consultivo pelo fluxo de qualificação. Se não responder, seguir a régua de repescagem no step 2 em 2026-05-07 09:10 BRT.

## Observações operacionais
- Documento mantido no caminho oficial determinístico por `client_id`.
- Envio de 2026-05-06 feito por fallback operacional do bridge local porque `send_message` não estava exposto nesta sessão; bridge estava saudável e conectado.
- Cliente não foi arquivada porque este foi o step 1; status permanece `Não Respondeu`.
