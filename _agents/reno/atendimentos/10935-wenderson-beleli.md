---
type: entity-profile
owner: reno
created: '2026-04-24'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
entity_type: atendimento
entity_name: Wenderson Beleli
client_id: 10935
broker_id: 35
status_crm: Não Respondeu
source: FamaChat / Facebook Ads
---
# Atendimento — Wenderson Beleli

## Resumo atual
Cliente CRM 10935, broker Reno (35), permanece em **Não Respondeu** após primeiro contato e repescagens. Interesse original veio de Facebook Ads relacionado ao empreendimento Union Vereda, no bairro Jaraguá, em Uberlândia.

Em 2026-04-30 foi enviada a repescagem step 3 com diagnóstico leve, mudando o ângulo da tentativa anterior: em vez de insistir em viabilidade/forma de pagamento, a mensagem destacou compra na planta, prazo de entrega mais longo e diferença entre morar, investir ou se preparar para sair do aluguel.

## Dados operacionais
- Cliente ID: 10935
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: final 6821; JID CRM usado para envio
- Última interação relevante: 2026-04-30 15:07 -03 — repescagem step 3 enviada via WhatsApp

## Contexto comercial
- Empreendimento citado no primeiro contato: Union Vereda
- Região: Jaraguá, Uberlândia/MG
- Produto: apartamentos disponíveis no Union Vereda; CRM indica opções de 2 quartos, suíte, varanda/sacada e lazer de condomínio.
- Prazo de entrega do empreendimento no CRM: Dez/2028.
- Ainda não há resposta real do cliente nem diagnóstico confirmado de intenção, prazo, composição familiar, forma de pagamento ou faixa de entrada.

## Diagnóstico
### Necessidade
Provável interesse em apartamento no Union Vereda/Jaraguá a partir de anúncio. Necessidade ainda não confirmada por ausência de resposta.

### Momento
Lead silencioso desde o primeiro contato. A repescagem atual buscou gerar microresposta com uma escolha simples sobre finalidade de compra.

### Decisão
Sem dados sobre decisores ou influência familiar.

### Viabilidade
Ponto ainda aberto. A tentativa anterior perguntou sobre financiamento/à vista; a tentativa atual não repetiu esse caminho e priorizou entender finalidade de uso antes de aprofundar viabilidade.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato enviado
Reno enviou mensagem inicial mencionando o interesse no Union Vereda, na região do Jaraguá, perguntando se a região combina com a busca do cliente. Status atualizado para Não Respondeu.

### 2026-04-25 — Reenvio inicial suprimido
Reenvio automático foi suprimido por origem `lead_automatico/autolead`. Nenhuma mensagem foi enviada nesse evento; status preservado como Não Respondeu.

### 2026-04-28 — Repescagem step 1 enviada
Reno enviou follow-up de repescagem step 1. A mensagem anterior foi registrada no CRM. Cliente permaneceu sem resposta.

### 2026-04-29 — Repescagem step 2 enviada
Fluxo: repescagem
Step enviado: 2
Data/hora de envio: 2026-04-29 16:08:07 -03
Contexto/ângulo comercial: imóvel específico + viabilidade; usar Union Vereda/Jaraguá como contexto e conduzir para uma primeira leitura simples de forma de compra.
Mensagem enviada:

> Oi, Wenderson! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, antes de olhar só foto ou valor, o ideal é entender se ele realmente encaixa no seu momento — região, tamanho e principalmente viabilidade da compra.
>
> Posso fazer essa primeira leitura de forma **simples e sem compromisso**: você pensa em financiar ou comprar à vista?

Próximo `next_run_at`: 2026-04-30T14:20:00-03:00

### 2026-04-30 — Repescagem step 3 enviada
Fluxo: repescagem
Step enviado: 3
Data/hora de envio: 2026-04-30 15:07:12 -03
Contexto/ângulo comercial: imóvel específico + prazo/finalidade de compra; diferenciar da tentativa anterior evitando repetir financiamento/à vista e usando entrega futura do Union Vereda como argumento novo.
Comparação com a abordagem anterior: mudou o ângulo comercial de viabilidade para prazo/uso, mudou a pergunta para escolha morar/investir, destacou compra na planta e planejamento, e alterou abertura/CTA para gerar uma microresposta objetiva.
Mensagem enviada:

> Wenderson, pensando no Union Vereda, tem um ponto que muda bastante a análise 🏡
>
> Como é um projeto com entrega mais pra frente, não é só ver se o apartamento é bonito ou se o valor cabe. O ideal é entender se uma compra na planta combina com o seu plano — morar, investir ou se preparar para sair do aluguel.
>
> Pra eu te orientar melhor: você olhou esse imóvel mais para **morar** ou para **investir**?

Próximo `next_run_at`: 2026-05-01T19:10:00-03:00

## Objeções e travas
- Trava principal: ausência de resposta real após primeiro contato e repescagens.
- Finalidade da compra ainda desconhecida: morar, investir ou sair do aluguel.
- Viabilidade de compra ainda desconhecida.

## Próximo passo
Aguardar resposta. Caso não haja resposta até 2026-05-01T19:10:00-03:00 e a fila continue elegível, preparar repescagem step 4 com convite consultivo direto, sem repetir o mesmo argumento de viabilidade ou finalidade.

## Observações operacionais
- Envio de 2026-04-30 realizado pelo JID salvo no CRM, final 6821.
- CRM/meta_data atualizado via `mcp_mcp_postgres_mark_reno_followup_sent` para `step=3`, `last_sent_at=2026-04-30T15:07:12-03:00`, `next_run_at=2026-05-01T19:10:00-03:00`, `enabled=true`, `stopped_reason=null`.
- Há documento legado em `_agents/reno/clientes/10935-wenderson-beleli.md`; o caminho oficial atualizado é este documento em `_agents/reno/atendimentos/`.
