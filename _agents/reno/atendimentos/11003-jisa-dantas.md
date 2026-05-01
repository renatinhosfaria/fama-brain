---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jisa Dantas
client_id: 11003
broker_id: 35
status_crm: Em Atendimento
source: SLA Cascata
created: '2026-04-24'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vista
  - viabilidade-financiamento
---
# Atendimento — Jisa Dantas

## Resumo atual
Cliente do Reno em `Em Atendimento`, interessada no Union Vista (Grand Ville). Já perguntou sobre valor, planta e parcelamento da entrada; a retomada atual segue no bucket `viabilidade_financiamento`, sem promessa de aprovação. Resgate step 4 enviado em 2026-05-01 17:19, com abordagem diferente do step 3: em vez de oferecer uma prévia genérica para decidir se vale vir à Fama, reduziu a próxima decisão para escolher o que pesa mais hoje entre tamanho da planta e valor da entrada.

## Dados operacionais
- Cliente ID: 11003
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: final 3733; JID confirmado no CRM
- Empreendimento vinculado: Union Vista — Grand Ville — ID 22
- Última interação relevante: 2026-05-01 17:19 - Resgate step 4 enviado via WhatsApp

## Contexto comercial
A cliente demonstrou interesse no Union Vista, região do Grand Ville. O empreendimento possui apartamentos de 2 quartos com 1 suíte, opções a partir de R$292.400, plantas de 56,9m², 58,4m² e térreo de 82,2m², entrega prevista para Jul/2027. Foi enviada planta pública anteriormente. A dúvida anterior envolveu valor, planta e parcelamento da entrada.

## Diagnóstico
### Necessidade
Ainda não há necessidade declarada com clareza além do interesse no empreendimento/planta.

### Momento
Cliente entrou em atendimento e silenciou depois de receber informações sobre valor, planta, entrega e possibilidade de parcelamento da entrada.

### Decisão
Não há decisor adicional identificado.

### Viabilidade
Bucket principal: `viabilidade_financiamento`. A cliente perguntou sobre parcelamento da entrada; foi explicado que depende de simulação, uso de FGTS, renda e financiamento. Não há dados suficientes para simulação real. O step 4 buscou identificar a trava principal entre planta e entrada antes de retomar convite presencial.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato e atendimento inicial
Reno abordou a cliente sobre o Union Vista, no Grand Ville. A cliente perguntou valor, planta e parcelamento da entrada. Reno respondeu com faixas de valor, metragens, entrega Jul/2027, possibilidade de entrada parcelada conforme simulação e perguntou se ela pretendia usar FGTS. Planta pública do Union Vista foi enviada.

### 2026-04-25 — Reenvio inicial
Reno reenviou abertura em duas mensagens sobre o Union Vista e a região do Grand Ville, preservando status operacional da época.

### 2026-04-28 — Resgate step 1
Resgate enviado com bucket legado `financiamento_sumiu`, normalizado para `viabilidade_financiamento`. Mensagem focou em entender se a compra ficaria viável antes de escolher imóvel.

### 2026-04-30 — Resgate step 2
Bucket: `viabilidade_financiamento`.
Mensagem enviada: "Jisa, pra não ficar genérico: na parte do financiamento, sua maior dúvida hoje é entrada, parcela ou aprovação? Com isso eu consigo te direcionar melhor."
Contexto usado: CRM/FamaChat, histórico Hermes anterior, empreendimento Union Vista, meta_data de Resgate e documento oficial do atendimento.
Próximo `next_run_at`: 2026-04-30T16:17:29-03:00.

### 2026-04-30 — Resgate step 3
Bucket: `viabilidade_financiamento`.
Mensagem enviada: "Jisa, pensando no Union Vista, o caminho mais seguro é ver se ele encaixa antes de você decidir pela planta.\n\nSe eu te passar uma prévia simples, ajuda você a entender se vale vir na Fama?"
Contexto usado: CRM/FamaChat, notas do atendimento, histórico Hermes anterior, empreendimento Union Vista e documento oficial do atendimento.
Diferença em relação ao step anterior: mudou o ângulo de "qual dúvida financeira?" para "prévia simples para decidir se vale vir à Fama"; mudou o CTA para permissão de avanço; destacou segurança/clareza antes de decidir pela planta.
Próximo `next_run_at`: 2026-05-01T16:50:41-03:00.

### 2026-05-01 — Resgate step 4
Bucket: `viabilidade_financiamento`.
Mensagem enviada: "Jisa, pra avançar sem te tomar tempo: no Union Vista eu olharia primeiro se a planta de 56/58m² e a entrada parcelada ficam confortáveis para você.\n\nO que mais pesa hoje: tamanho da planta ou valor da entrada?"
Contexto usado: CRM/FamaChat, notas do atendimento, empreendimento Union Vista, meta_data de Resgate, propriedade ID 22 e documento oficial do atendimento.
Diferença em relação ao step anterior: mudou o ângulo de permissão para uma escolha simples; trocou o CTA de "quer uma prévia?" por diagnóstico de trava; destacou critérios concretos do Union Vista — planta de 56/58m² e entrada parcelada — para gerar resposta de baixa fricção.
Próximo `next_run_at`: 2026-05-03T17:19:53-03:00.

## Objeções e travas
- Trava provável: viabilidade de financiamento/entrada/parcelamento, ainda não qualificada.
- Possível dúvida secundária: tamanho/planta do Union Vista.
- Lacuna: não há confirmação de FGTS, renda, entrada disponível ou prioridade entre valor/planta/localização.

## Próximo passo
Aguardar resposta da cliente. Se responder, interromper a régua de Resgate (`client_replied`) e continuar atendimento normal via qualificação consultiva. Se indicar que o peso é entrada/valor, conduzir com prévia simples e convite para visita presencial na Fama para simulação segura. Se indicar que o peso é planta/tamanho, retomar com a planta mais adequada e ponte para validação presencial.

## Observações operacionais
Documento oficial criado em `_agents/reno/atendimentos/11003-jisa-dantas.md` em 2026-04-30. Existe documento legado/drift em `_agents/reno/clientes/jisa-dantas.md` com frontmatter mínimo e sem conteúdo útil; não continuar escrevendo no legado. CRM permaneceu como fonte de verdade. Resgate e Repescagem tratados como fluxos independentes. Não houve restart de gateway nesta execução.
