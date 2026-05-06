---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Wilson Passos
client_id: 11158
broker_id: 35
status_crm: Em Atendimento
source: Facebook Ads
created: '2026-05-03'
updated: '2026-05-06'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
---
# Atendimento — Wilson Passos

## Resumo atual
Wilson é cliente do Reno (`broker_id=35`) em `Em Atendimento`, com interesse no Place+Arbi, no Shopping Park. Ele respondeu à Repescagem com “Como assim” em 2026-05-05; a repescagem foi interrompida e o Reno corrigiu o atendimento explicando o contexto do Place+Arbi e oferecendo seguir pela planta ou pela condição de compra.

Depois desse outbound normal, Wilson ficou em silêncio e o Resgate foi armado. Foram enviados três steps de Resgate em 2026-05-05, todos com bucket `viabilidade_financiamento`, mudando progressivamente o ângulo: condição de compra, escolha entre entrada/parcela/aprovação e convite prático para conversar presencialmente na Fama sobre entrada, prazo e financiamento.

Em 2026-05-06, o step 4 estava vencido pela cadência de 24h, mas a revalidação encontrou cadastro recente com o mesmo telefone/JID em outro broker (`cliente 11238`, broker 24, origem `SLA Cascata`, `usuario_anterior=35`, `cliente_original_id=11158`). Para evitar duplicidade/ownership e possível contaminação do atendimento, nenhum WhatsApp foi enviado. O ciclo de Resgate foi pausado para revisão manual, preservando `step=3`, `last_sent_at=2026-05-05T19:55:09-03:00` e bucket `viabilidade_financiamento`; estado atual: `enabled=false`, `next_run_at=null`, `stopped_reason=manual_review_duplicate_active_broker`.

## Dados operacionais
- Cliente ID: 11158
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: (34) 9127-1126 / `553491271126@s.whatsapp.net`
- Empreendimento de interesse: Place+Arbi — Shopping Park, Uberlândia
- Última interação relevante: 2026-05-06 20:01 BRT — Resgate pausado sem envio por duplicidade/ownership com cadastro recente de outro broker (`cliente 11238`, broker 24, SLA Cascata)

## Contexto comercial
O cliente veio de Facebook Ads com interesse vinculado ao Place+Arbi, empreendimento no Shopping Park, Zona Sul de Uberlândia. O histórico do atendimento cita lançamento, entrega prevista para 2027, plantas de 48m² a 50m² e faixa inicial próxima de R$ 220 mil, sempre com cuidado para não prometer crédito, aprovação ou condição.

A resposta “Como assim” indicou dúvida sobre a pergunta anterior, não rejeição ao imóvel. A correção do Reno explicou os pontos de decisão do Place+Arbi: localização no Shopping Park, planta 48/50m², valor/condição de compra e entrega em 2027. O Resgate posterior trabalhou a viabilidade como caminho consultivo para evitar chute de parcela pelo WhatsApp e tentar levar Wilson para uma conversa presencial na Fama.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. Wilson não informou se busca morar, investir ou comparar oportunidade.

### Momento
Ainda não diagnosticado. O prazo de entrega do Place+Arbi pode ser fator de decisão, mas o cliente ainda não indicou se isso pesa.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. O fluxo tratou viabilidade como pauta principal: entrada, parcela, aprovação, prazo e financiamento. Não há promessa de crédito nem simulação confirmada.

## Histórico curado de interações
### 2026-05-03 — Primeiro contato enviado
Reno enviou abertura curta pelo WhatsApp com contexto do interesse no Place+Arbi no Shopping Park e pergunta se o cliente procura imóvel nessa região. Após envio, status passou de `Sem Atendimento` para `Não Respondeu` e a Repescagem foi inicializada.

### 2026-05-03 — Repescagem step 1 enviada
Ângulo: lançamento, prazo e forma de compra. Pergunta principal: se Wilson olhava mais para morar ou comparar oportunidade de compra.

### 2026-05-04 — Repescagem step 2 enviada
Ângulo: viabilidade prática. A mensagem destacou faixa inicial próxima de R$ 220 mil e que o ponto real seria entrada, financiamento e parcela caberem no cenário do cliente.

### 2026-05-05 — Repescagem step 3 enviada
Ângulo: critério principal de escolha. A mensagem comparou localização no Shopping Park, planta 48/50m² com sacada e prazo de entrega em 2027, perguntando qual ponto pesava mais.

### 2026-05-05 — Cliente respondeu e atendimento foi retomado
Wilson respondeu “Como assim”. Persistência operacional: status atualizado para `Em Atendimento`, Repescagem interrompida com `enabled=false`, `next_run_at=null` e `stopped_reason=client_replied`, e nota CRM registrada.

### 2026-05-05 — Correção contextual enviada
Reno enviou nova mensagem explicando melhor a pergunta anterior e oferecendo continuar pela planta ou pela condição de compra.

Mensagem enviada:
> Wilson, deixa eu explicar melhor.
>
> No Place+Arbi, existem alguns pontos pra decidir se vale avançar: localização no Shopping Park, planta de 48/50m², valor/condição de compra e entrega em 2027.
>
> Pra começar do jeito mais útil pra você: quer que eu te explique primeiro a planta ou a condição de compra?

WhatsApp message_id: `3EB06D04A875C38B4F323A`.

### 2026-05-05 — Resgate step 1 enviado
Bucket: `viabilidade_financiamento`.

Mensagem enviada:
> Wilson, vou simplificar: antes de te passar um monte de coisa do Place+Arbi, acho melhor começar pela condição de compra, pra ver se faz sentido no seu cenário.
>
> Quer que eu te explique essa parte de entrada/financiamento primeiro?

Persistência: `step=1`, `last_sent_at=2026-05-05T16:15:29-03:00`, `next_run_at=2026-05-05T17:45:29-03:00`, `stopped_reason=null`.

### 2026-05-05 — Resgate step 2 enviado
Bucket mantido: `viabilidade_financiamento`. A abordagem mudou de pedido de permissão para explicação de entrada/financiamento para uma escolha simples entre entrada, parcela ou aprovação.

Mensagem enviada:
> Wilson, pra facilitar: você não precisa decidir o imóvel agora.
>
> No Place+Arbi, o primeiro filtro é entender se entrada, parcela ou aprovação é o ponto que mais pesa pra você.
>
> Qual desses três te preocupa mais hoje?

Persistência: `step=2`, `last_sent_at=2026-05-05T17:51:27-03:00`, `next_run_at=2026-05-05T19:51:27-03:00`, `stopped_reason=null`.

### 2026-05-05 — Resgate step 3 enviado
Bucket mantido: `viabilidade_financiamento`. A abordagem mudou de escolha entre travas para convite prático de conversa presencial na Fama, com foco em resolver viabilidade com segurança e sem chutar parcela por WhatsApp.

Mensagem enviada:
> Wilson, vou por um caminho mais prático.
>
> Como a dúvida aqui é viabilidade, o ideal é a gente não ficar chutando parcela pelo WhatsApp. Em uma conversa rápida aqui na Fama eu consigo te mostrar entrada, prazo e financiamento do Place+Arbi com mais segurança.
>
> Amanhã no almoço ou no fim do dia fica melhor pra você passar aqui?

Persistência: `step=3`, `last_sent_at=2026-05-05T19:55:09-03:00`, `next_run_at=2026-05-06T19:55:09-03:00`, `stopped_reason=null`.

### 2026-05-06 — Resgate pausado sem envio por duplicidade/ownership
O step 4 estava elegível pela cadência oficial de 24h após o step 3. Antes do envio, a revalidação encontrou o mesmo telefone/JID em cadastro recente de outro broker: `cliente 11238`, broker 24, status `Sem Atendimento`, origem `SLA Cascata`, `usuario_anterior=35`, `cliente_original_id=11158`, criado em 2026-05-06 16:18 BRT.

Ação tomada: nenhum WhatsApp foi enviado; o ciclo de Resgate do cliente 11158 foi pausado para revisão manual com `enabled=false`, `next_run_at=null`, `stopped_reason=manual_review_duplicate_active_broker`, preservando `step=3`, `last_sent_at=2026-05-05T19:55:09-03:00` e `last_context_bucket=viabilidade_financiamento`. Nota CRM registrada em 2026-05-06 20:01 BRT.

## Objeções e travas
- Nenhuma objeção comercial clara registrada.
- Trava anterior: silêncio após primeiro contato e repescagens.
- Trava corrigida: resposta inicial fora de contexto a “Como assim”; correção contextual já enviada.
- Trava comercial atual: Wilson ainda não confirmou se quer avançar pela viabilidade presencial, entrada, parcela ou aprovação.
- Trava operacional atual: duplicidade/ownership por cadastro recente em outro broker via SLA Cascata; Resgate pausado até revisão manual.

## Próximo passo
Não enviar novo Resgate automático enquanto o estado estiver pausado com `stopped_reason=manual_review_duplicate_active_broker`.

Revisão manual recomendada: decidir se o atendimento deve permanecer com Reno no cliente 11158, seguir com o broker 24 no cliente 11238, ou consolidar/ajustar a duplicidade de SLA Cascata. Se Wilson responder no WhatsApp, tratar como inbound normal: validar o cliente correto no CRM, interromper régua ativa se existir, registrar nota e conduzir por `fama-reno-whatsapp-qualification` sem enviar novo step de Resgate.

## Observações operacionais
- Cliente 11158 validado no CRM: `broker_id=35`, status `Em Atendimento`.
- Nome do CRM parece confiável.
- WhatsApp identificado pelo `whatsapp_jid` salvo no CRM.
- Não há agendamento, visita ou venda registrados no cliente 11158.
- O cadastro duplicado 11238 não recebeu alterações pelo Reno nesta execução; foi usado apenas como evidência operacional para pausar o Resgate do cliente 11158.
- Não houve envio de WhatsApp nesta execução.
- Não houve alteração de status do cliente; permanece `Em Atendimento`.
- Não expor ao cliente logs, justificativas internas ou erro operacional. A próxima ação depende de revisão manual da duplicidade/ownership.
