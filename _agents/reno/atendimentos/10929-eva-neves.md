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
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
---
# Atendimento — Eva Neves

## Resumo atual
Cliente do Reno em status **Não Respondeu**, origem SLA Cascata, sem resposta real registrada após reenvio inicial e repescagens steps 1, 2 e 3. Em 2026-04-30 foi enviada repescagem step 3 por WhatsApp, mantendo o status no CRM.

## Dados operacionais
- Cliente ID: 10929
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: WhatsApp confirmado no CRM; envio feito pelo JID salvo.
- Última interação relevante: 2026-04-30 15:51:20-03:00 — repescagem step 3 enviada.

## Contexto comercial
O histórico operacional indica interesse no **Union Vereda**, na região do **Jaraguá**, em Uberlândia. O empreendimento tem entrega prevista para **dezembro/2028** e unidades disponíveis de 2 quartos, com lazer e serviços de condomínio. Não há resposta da cliente nem dados adicionais sobre faixa de valor, forma de pagamento, prazo real de mudança ou motivação de compra.

## Diagnóstico
### Necessidade
Possível busca por imóvel específico, ainda sem diagnóstico confirmado devido ao silêncio.

### Momento
Cliente permanece silenciosa após primeiro contato e repescagens anteriores. A repescagem step 3 buscou gerar microresposta objetiva sobre prazo de mudança/aceitação de entrega futura, sem pressionar visita.

### Decisão
Sem informação confirmada sobre decisores ou urgência.

### Viabilidade
Sem dados confirmados de financiamento, entrada, renda ou pagamento. A repescagem step 2 já abordou encaixe, região, forma de pagamento e faixa de valor; o step 3 mudou o ângulo para prazo de entrega e timing de compra.

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

## Objeções e travas
- Silêncio após contato inicial e repescagens; nenhuma objeção declarada.
- Falta de contexto sobre prazo, viabilidade e preferência real pode dificultar sugestão assertiva de imóveis.

## Próximo passo
Aguardar resposta da cliente. Se houver resposta real, parar repescagem, mover para atendimento normal do Reno e tratar qualificação fora desta skill. Se não houver resposta até `2026-05-01T19:10:00-03:00`, a próxima execução elegível da fila poderá enviar a repescagem step 4 conforme a régua oficial.

## Observações operacionais
- Cliente selecionada por fila exclusiva de repescagem: `broker_id=35`, `status=Não Respondeu`, branch `meta_data.reno_followup.repescagem.enabled=true`, `stopped_reason=null`, `step=2`, `next_run_at` vencido.
- Envio WhatsApp realizado pelo JID salvo no CRM, sem expor número completo no relatório operacional.
- Status CRM preservado como `Não Respondeu` após envio de repescagem.
