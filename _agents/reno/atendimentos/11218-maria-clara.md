---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Maria Clara
client_id: 11218
broker_id: 35
status_crm: Em Atendimento
source: SLA Cascata
created: '2026-05-05'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - em-atendimento
  - repescagem-respondida
  - garden-sul
---
# Atendimento — Maria Clara

V?nculos: [[reno]], [[playbook-atendimento]], [[garden-sul]], [[jardim-sul]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Cliente respondeu pelo WhatsApp durante a repescagem e entrou em atendimento. Status CRM atualizado de `Não Respondeu` para `Em Atendimento` em 2026-05-07 porque ainda estava exatamente nesse status. A branch de repescagem foi interrompida para evitar novos follow-ups automáticos.

O diagnóstico inicial indica intenção ativa de compra e preferência por apartamento. Próxima condução: validar se o perfil de 2 quartos do Garden Sul atende ou se precisa de algo maior; depois avançar para momento, condição de entrada/parcela/financiamento e, se fizer sentido, visita presencial na Fama.

## Dados operacionais
- Cliente ID: 11218
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: (34) 99789-1120 / JID validado no CRM
- Cliente original relacionado: 11160, usado apenas como contexto consultivo
- Empreendimento relacionado: Garden Sul — Jardim Sul, Zona Sul
- Última interação relevante: 2026-05-07 — cliente respondeu e qualificação inicial começou

## Contexto comercial
Cliente entrou no ciclo atual do Reno por SLA Cascata com interesse no Garden Sul. O empreendimento é um lançamento da Opção Empreendimentos no Jardim Sul, em Uberlândia, com apartamentos de 2 quartos e opções cadastradas a partir de aproximadamente R$ 294.900 no CRM.

Contexto do cadastro original relacionado (11160), usado apenas como apoio consultivo: a cliente já havia indicado interesse no Garden Sul, busca para morar, critério principal de valor, intenção de compra financiada e preferência por entrada mais baixa/parcelada. O cliente operacional deste atendimento continua sendo o ID 11218.

## Diagnóstico
### Necessidade
Confirmado que busca apartamento. Validar se 2 quartos atende ou se precisa de algo maior.

### Momento
Confirmou que está pensando em comprar. Ainda falta entender prazo/urgência.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Há indício consultivo, vindo do cliente original relacionado, de compra financiada e preferência por entrada baixa/parcelada. Ainda falta validar faixa de parcela, entrada disponível e caminho de financiamento. Não prometer aprovação de crédito.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato enviado
Reno enviou mensagem curta e contextual, mencionando o interesse no Garden Sul/Jardim Sul e perguntando se a busca era para morar ou investir. Status foi atualizado de `Sem Atendimento` para `Não Respondeu`.

### 2026-05-06 — Repescagem step 1 enviada
Reno enviou follow-up de repescagem pelo WhatsApp usando o `whatsapp_jid` salvo e validado pelo bridge local. A mensagem mudou o ângulo para viabilidade prática do lançamento: entrada, parcelas durante a obra e financiamento depois.

Mensagem enviada:
> Oi, Maria Clara! Tudo bem? 🏡
>
> Sobre o Garden Sul, antes de olhar só planta ou fotos, vale entender se o caminho da compra faz sentido: entrada, parcelas durante a obra e financiamento depois.
>
> Assim você evita perder tempo com uma opção bonita, mas que talvez não encaixe bem no orçamento.
>
> Hoje pesa mais pra você **valor de entrada/parcelamento** ou **planta/localização na Zona Sul**?

### 2026-05-07 — Repescagem step 2 enviada
Reno enviou novo follow-up pelo WhatsApp com um ângulo diferente do step 1, evitando repetir a pergunta de comparação entre entrada e localização e trazendo o foco para a faixa de parcela compatível com o momento da cliente.

Mensagem enviada:
> Maria Clara, como o Garden Sul é um lançamento com entrega prevista pra set/2028, pra eu não te passar algo fora do seu momento, você já tem uma faixa de parcela em mente?

### 2026-05-07 — Cliente respondeu
Cliente respondeu no WhatsApp. Na qualificação inicial, confirmou que está pensando em comprar e que busca apartamento. Status CRM atualizado para `Em Atendimento`; repescagem marcada como interrompida com `stopped_reason=cliente_respondeu_em_atendimento`.

## Objeções e travas
- Possível trava comercial: valor de parcela, entrada e prazo de entrega do lançamento.
- Ainda não há objeção explícita.

## Próximo passo
Seguir em turnos curtos no WhatsApp. Perguntar se o perfil de apartamento de 2 quartos do Garden Sul atende ou se precisa de algo maior. Depois validar prazo de compra, faixa de parcela/entrada e decisão. Se houver sinal quente e viabilidade, conduzir para visita presencial no escritório da Fama.

## Observações operacionais
- Cliente validado no CRM com `broker_id=35`.
- Status atual verificado no CRM: `Em Atendimento`.
- Branch `meta_data.reno_followup.repescagem` verificada com `enabled=false`, `next_run_at=null`, `stopped_reason=cliente_respondeu_em_atendimento`.


## Atualização — 2026-05-07 — Perfil de imóvel confirmado
Cliente confirmou que apartamento de 2 quartos atende bem para a busca no Garden Sul.

### Diagnóstico atualizado
- Necessidade: apartamento de 2 quartos atende.
- Momento: pensando em comprar.
- Próximo ponto de qualificação: entender se pretende financiar e qual condição de entrada/parcela faz sentido.

### Próxima condução recomendada
Perguntar de forma simples se a ideia é fazer financiamento ou se já tem parte à vista/entrada separada. Manter um único ponto por mensagem.


## Atualização — 2026-05-07 — Caminho de compra
Cliente informou que pretende comprar por financiamento.

### Diagnóstico atualizado
- Viabilidade: caminho provável é financiamento; ainda falta entender faixa confortável de parcela e condição de entrada.
- Condução: explicar de forma simples que vale olhar entrada/parcelas durante a obra/financiamento depois, sem prometer crédito.

### Próxima condução recomendada
Perguntar a faixa de parcela mensal confortável ou a condição de entrada, um ponto por vez.


## Atualização — 2026-05-07 — Dúvida sobre renda
Cliente perguntou qual valor de renda é necessário para financiamento.

### Condução recomendada
Responder sem prometer aprovação: não existe renda única; depende da unidade escolhida, entrada e simulação. Explicar que bancos geralmente analisam capacidade de parcela sobre renda familiar. Perguntar a renda familiar aproximada ou faixa para orientar com mais segurança.
