---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Elias Mourão
client_id: 10928
broker_id: 35
status_crm: Em Atendimento
source: SLA Cascata
created: '2026-04-30'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
---
# Atendimento — Elias Mourão

## Resumo atual
Cliente em atendimento pelo Reno, com interesse em moradia no Place+Arbi/Shopping Park. Já respondeu anteriormente e refinou busca para uma condição mais leve. Resgate step 4 enviado em 2026-05-01 com foco em reduzir a decisão para uma opção mais pé no chão, comparando apartamento de 1 quarto versus casa sem pressionar visita neste momento.

## Dados operacionais
- Cliente ID: 10928
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: final 2708; envio do step 4 realizado para variação brasileira com nono dígito
- Empreendimento vinculado: Place+Arbi — Shopping Park, Uberlândia
- Última interação relevante: Resgate step 4 enviado pelo Reno em 2026-05-01 16:39 -03

## Contexto comercial
Elias demonstrou interesse para moradia e o empreendimento ativo no CRM é o Place+Arbi, no bairro Shopping Park. Histórico de CRM indica preferência atual por Shopping Park, busca de parcela mais leve, abertura para imóvel de 1 quarto e também casa se a condição ficar melhor.

## Diagnóstico
### Necessidade
Busca imóvel para morar, com atenção a uma opção que caiba no orçamento mensal.

### Momento
Já houve interação real e refinamento do perfil; cliente ficou silencioso após conduções sucessivas sobre viabilidade/financiamento.

### Decisão
Compra sozinho, conforme nota do CRM. Não há decisor terceiro registrado até o momento.

### Viabilidade
Notas do CRM indicam renda aproximada de R$ 3.700, sem FGTS e sem entrada no momento. A retomada deve priorizar faixa confortável, viabilidade e ajuste de condição, sem prometer aprovação ou encaixe.

## Histórico curado de interações
### 2026-04-22 — Interesse e perfil inicial
Cliente respondeu à abertura sobre o Place+Arbi dizendo que procura para morar. Depois refinou interesse: busca parcela mais leve, aceita 1 quarto e também casa se a condição ficar melhor. Sem FGTS, sem entrada no momento, compra sozinho e renda aproximada de R$ 3.700.

### 2026-04-28 — Resgate step 1
Reno enviou follow-up de Resgate step 1 com foco em financiamento/viabilidade: “Elias, sobre financiamento, o mais importante é ver se a compra fica viável antes de escolher imóvel. Quer que eu te ajude por esse caminho?”. Bucket legado `financiamento_sumiu`, normalizado operacionalmente para `viabilidade_financiamento`.

### 2026-04-30 — Resgate step 2
Reno enviou Resgate step 2 pelo WhatsApp. Bucket: `viabilidade_financiamento`.

Mensagem enviada:
“Elias, pensando no que você comentou de buscar uma parcela mais leve, eu não insistiria em opção que aperta seu mês.

Quer que eu veja contigo uma faixa mais confortável pra começar?”

Próximo `next_run_at` registrado no CRM: 2026-04-30T16:01:31.422-03:00.

### 2026-04-30 — Resgate step 3
Reno enviou Resgate step 3 pelo WhatsApp. Bucket: `viabilidade_financiamento`.

Mensagem enviada:
“Elias, só pra eu te direcionar sem apertar seu orçamento: hoje sua dúvida principal é entrada, parcela ou aprovação do financiamento?”

Contexto usado: CRM validou cliente `broker_id=35`, status `Em Atendimento`, sem agendamento/visita ativa; histórico curado indica busca para morar no Place+Arbi/Shopping Park, preferência por parcela mais leve, sem FGTS e sem entrada no momento. A mensagem mudou o ângulo em relação ao step 2: saiu de “faixa confortável” para identificação da dúvida principal entre entrada, parcela e aprovação.

Próximo `next_run_at` registrado no CRM: 2026-05-01T16:19:59-03:00.

### 2026-05-01 — Resgate step 4
Reno enviou Resgate step 4 pelo WhatsApp. Bucket: `viabilidade_financiamento`.

Mensagem enviada:
“Elias, pensando em parcela leve e no Shopping Park, acho melhor começar pelo que fica confortável no mês, não pelo imóvel mais bonito.

Se eu separar uma opção mais pé no chão, você prefere que eu priorize apartamento de 1 quarto ou casa?”

Contexto usado: CRM validou cliente `broker_id=35`, status `Em Atendimento`, sem visita/agendamento ativo; notas indicam busca para morar, foco em parcela leve, abertura para apartamento de 1 quarto ou casa, sem FGTS/entrada e renda aproximada de R$ 3.700. Histórico do Resgate mostrava silêncio após step 3, cuja pergunta era sobre entrada/parcela/aprovação. O step 4 mudou o ângulo para escolha simples de perfil mais viável (`apartamento de 1 quarto` versus `casa`) e benefício de não apertar o orçamento.

Próximo `next_run_at` registrado no CRM: 2026-05-03T16:39:26-03:00.

## Objeções e travas
- Viabilidade financeira sensível: sem entrada e sem FGTS no momento.
- Parcela mensal precisa ser leve; evitar condução para imóvel/condição que aperte o orçamento.
- Silêncio após perguntas sobre viabilidade indica necessidade de CTA simples e de baixa fricção.

## Próximo passo
Aguardar resposta ao Resgate step 4. Se Elias responder, interromper a régua de Resgate (`stopped_reason=client_replied`, `enabled=false`, `next_run_at=null`) antes de continuar atendimento normal; conduzir com foco na preferência indicada entre apartamento de 1 quarto e casa, e convidar para visita presencial quando houver sinal positivo.

## Observações operacionais
- CRM validado como fonte operacional: cliente existe, `broker_id=35`, status `Em Atendimento`, sem visitas/agendamentos ativos no momento da execução.
- Documento mantido em caminho oficial `_agents/reno/atendimentos/10928-elias-mourao.md`.
- Registro do envio persistido no CRM via `mark_reno_followup_sent`; nota CRM criada automaticamente para o step 4.
- Histórico de WhatsApp ativo individual não está disponível como tabela no CRM; contexto foi reconstruído a partir de CRM, notas, sessão Hermes anterior, vault e estado `meta_data.reno_followup.resgate`.
