---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Eva Neves
client_id: 10929
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
# Atendimento — Eva Neves

## Resumo atual
Cliente do Reno em status **Não Respondeu**, origem SLA Cascata, sem resposta real registrada no atendimento Reno após reenvio inicial e repescagens steps 1, 2, 3 e 4. Em 2026-05-02 foi enviada a repescagem step 4 por WhatsApp, com abordagem consultiva direta sobre aprovação/documentos e viabilidade antes de avançar no Union Vereda. Status CRM preservado.

## Dados operacionais
- Cliente ID: 10929
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: WhatsApp confirmado no CRM; envio feito pelo JID salvo.
- Última interação relevante: 2026-05-02 09:44:01-03:00 — repescagem step 4 enviada.

## Contexto comercial
O histórico operacional indica interesse no **Union Vereda**, na região do **Jaraguá**, em Uberlândia. O empreendimento tem entrega prevista para **dezembro/2028** e unidades disponíveis de 2 quartos, com faixa aproximada a partir de R$ 288 mil. No cliente original de origem da Cascata (10838), há contexto útil de que Eva começou a procurar agora, compraria sozinha e demonstrou intenção de fazer aprovação primeiro; esse contexto foi usado apenas como apoio consultivo, mantendo o cliente 10929 como entidade operacional da repescagem.

## Diagnóstico
### Necessidade
Busca associada a imóvel específico, possivelmente com necessidade de entender se o Union Vereda faz sentido antes de avançar.

### Momento
Cliente permanece silenciosa no fluxo Reno. A compra na planta e a entrega futura exigem confirmar se o timing e a viabilidade combinam com o momento real da cliente.

### Decisão
Há sinal do cliente original de compra individual, mas sem confirmação direta no atendimento Reno.

### Viabilidade
Há indicação contextual de interesse em aprovação/documentos no cliente original. Não há dados confirmados de renda, entrada ou capacidade de financiamento; abordagem deve orientar viabilidade sem prometer crédito.

## Histórico curado de interações
### 2026-04-25 — Reenvio inicial do Reno
Reno reenviou contato inicial mencionando o interesse no Union Vereda/Jaraguá. Status preservado como Não Respondeu.

### 2026-04-28 — Repescagem step 1
Reno enviou follow-up de repescagem step 1. O CRM registrou próximo follow-up posteriormente ajustado/migrado para a matriz atual.

### 2026-04-29 — Repescagem step 2 enviada
Fluxo: repescagem  
Step enviado: 2  
Ângulo/contexto usado: imóvel específico + evitar caminho errado/viabilidade inicial  
Mensagem enviada:

> Oi, Eva! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, antes de seguir olhando opções soltas, o mais importante é entender se ele combina com seu momento de compra — região, forma de pagamento e faixa de valor precisam fazer sentido pra não te fazer perder tempo.
>
> Posso fazer uma primeira leitura **bem simples e realista** pra te orientar por onde vale começar?

Registro CRM: envio registrado via tool específica do Reno (`mark_reno_followup_sent`).  
Próximo `next_run_at`: 2026-04-30T14:20:00-03:00.

### 2026-04-30 — Repescagem step 3 enviada
Fluxo: repescagem  
Step enviado: 3  
Ângulo/contexto usado: imóvel específico + diagnóstico leve de prazo/timing de compra  
Comparação com abordagem anterior: mudou de viabilidade/encaixe financeiro-região para prazo de entrega; mudou a pergunta de convite para análise para escolha objetiva entre mudança rápida e entrega futura; mudou o benefício de evitar perda de tempo com opções soltas para evitar orientação no timing errado.  
Mensagem enviada:

> Oi, Eva! Tudo bem? 🏡
>
> O Union Vereda tem um ponto importante: é um projeto com entrega mais pra frente, então ele pode fazer muito sentido dependendo do seu prazo e do tipo de compra que você está planejando.
>
> Pra eu não te orientar no caminho errado: você pensa em algo para **mudar mais rápido** ou consegue considerar uma entrega futura?

Registro CRM: envio registrado via tool específica do Reno (`mark_reno_followup_sent`).  
Próximo `next_run_at`: 2026-05-01T19:10:00-03:00.

### 2026-05-02 — Repescagem step 4 enviada
Fluxo: repescagem  
Step enviado: 4  
Ângulo/contexto usado: financiamento/aprovação + convite consultivo direto.  
Comparação com abordagem anterior: mudou o eixo de prazo de entrega para aprovação/documentos; mudou a pergunta de escolha sobre timing para permissão objetiva de orientar a análise; mudou o benefício de evitar orientação no timing errado para evitar expectativa errada antes de validar viabilidade.  
Mensagem enviada:

> Eva, tudo bem? 🔑
>
> Vou te falar de forma bem objetiva: como o Union Vereda é uma compra na planta, olhar só o imóvel pode não responder a parte mais importante — se o caminho de aprovação e documentos faz sentido pra você.
>
> Se sua ideia for comprar sozinha, dá pra começar pela **viabilidade da aprovação**, sem criar expectativa errada nem compromisso de decisão agora.
>
> Quer que eu te diga por onde começamos essa análise?

Registro CRM: envio registrado via tool específica do Reno (`mark_reno_followup_sent`).  
Próximo `next_run_at`: 2026-05-03T09:10:00-03:00.

## Objeções e travas
- Silêncio após contato inicial e repescagens; nenhuma objeção declarada no atendimento Reno.
- Falta de confirmação direta sobre prazo, aprovação, documentos e preferência real impede avanço consultivo mais assertivo.

## Próximo passo
Aguardar resposta da cliente. Se houver resposta real, parar repescagem, mover para atendimento normal do Reno e tratar qualificação fora desta skill. Se não houver resposta até `2026-05-03T09:10:00-03:00`, a próxima execução elegível da fila poderá enviar a repescagem step 5, com encerramento elegante da régua.

## Observações operacionais
- Cliente selecionada por fila exclusiva de repescagem: `broker_id=35`, `status=Não Respondeu`, branch `meta_data.reno_followup.repescagem.enabled=true`, `stopped_reason=null`, `step=3`, `next_run_at` vencido.
- Envio WhatsApp realizado pelo JID salvo no CRM, sem expor número completo no relatório operacional.
- Status CRM preservado como `Não Respondeu` após envio de repescagem.
- Próximo agendamento da régua: 2026-05-03 09:10 BRT, step 5, salvo resposta real antes disso.
