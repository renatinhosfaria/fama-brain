---
broker_id: 35
client_id: 11003
created: '2026-04-24'
entity_name: Jisa Dantas
entity_type: atendimento
owner: reno
source: SLA Cascata
status_crm: Em Atendimento
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vista
  - viabilidade-financiamento
  - visita-pendente
type: entity-profile
updated: '2026-05-03'
---
# Atendimento — Jisa Dantas

## Resumo atual
Cliente do Reno em `Em Atendimento`, interessada no Union Vista (Grand Ville). Já perguntou sobre valor, planta e parcelamento da entrada. O Resgate vinha no bucket `viabilidade_financiamento`, mas no step 5 foi reclassificado para `visita_pendente` porque a conversa já recebeu várias retomadas sobre financiamento/entrada sem resposta e o próximo passo comercial mais útil passou a ser visita presencial na Fama para olhar planta, entrada e simulação com mais segurança. Como o envio ocorreu em domingo, o CTA priorizou segunda-feira.

## Dados operacionais
- Cliente ID: 11003
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: final 3733; JID confirmado no CRM
- Empreendimento vinculado: Union Vista — Grand Ville — ID 22
- Última interação relevante: 2026-05-03 17:41 - Resgate step 5 enviado via WhatsApp
- Estado Resgate após último envio: `step=5`, `last_context_bucket=visita_pendente`, `next_run_at=2026-05-07T17:41:54-03:00`, `stopped_reason=null`

## Contexto comercial
A cliente demonstrou interesse no Union Vista, região do Grand Ville. O empreendimento possui apartamentos de 2 quartos com 1 suíte, opções a partir de R$292.400, plantas de 56,9m², 58,4m² e térreo de 82,2m², entrega prevista para Jul/2027. Foi enviada planta pública anteriormente. A dúvida anterior envolveu valor, planta e parcelamento da entrada.

## Diagnóstico
### Necessidade
Ainda não há necessidade declarada com clareza além do interesse no empreendimento/planta.

### Momento
Cliente entrou em atendimento e silenciou depois de receber informações sobre valor, planta, entrega e possibilidade de parcelamento da entrada. Segue sem visita/agendamento ativo no CRM.

### Decisão
Não há decisor adicional identificado.

### Viabilidade
Bucket histórico principal: `viabilidade_financiamento`. A cliente perguntou sobre parcelamento da entrada; foi explicado que depende de simulação, uso de FGTS, renda e financiamento. Não há dados suficientes para simulação real. Após steps 1 a 4 focados em viabilidade/entrada/planta, o step 5 mudou para `visita_pendente` com convite presencial de baixa fricção para segunda-feira.

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

### 2026-05-03 — Resgate step 5
Bucket: `visita_pendente`.
Mensagem enviada: "Jisa, como a dúvida era planta e entrada, acho mais seguro você ver isso aqui na Fama com mais clareza, sem ficar no chute pelo WhatsApp.\n\nSegunda no horário do almoço ou no fim do dia fica melhor pra você passar aqui?"
Contexto usado: CRM/FamaChat, notas do atendimento, sessão Hermes/WhatsApp individual, empreendimento Union Vista, meta_data de Resgate e documento oficial do atendimento.
Diferença em relação ao step anterior: mudou o ângulo de escolha entre planta/entrada para convite presencial; destacou clareza e segurança para não depender de chute pelo WhatsApp; trocou a pergunta diagnóstica por CTA de agenda para segunda-feira, conforme regra de fim de semana; reclassificou com segurança para `visita_pendente` sem aumentar pressão artificial.
Próximo `next_run_at`: 2026-05-07T17:41:54-03:00.

## Objeções e travas
- Trava provável: viabilidade de financiamento/entrada/parcelamento, ainda não qualificada.
- Possível dúvida secundária: tamanho/planta do Union Vista.
- Lacuna: não há confirmação de FGTS, renda, entrada disponível ou prioridade entre valor/planta/localização.
- Sem visita ou agendamento ativo no CRM no momento do step 5.

## Próximo passo
Aguardar resposta da cliente. Se responder, interromper a régua de Resgate (`client_replied`) e continuar atendimento normal via qualificação consultiva. Se aceitar a visita, registrar agendamento no FamaChat e manter condução para visita presencial na Fama. Se não responder até 2026-05-07T17:41:54-03:00 e os guardrails permanecerem verdadeiros, o próximo envio possível será step 6, sem mensagem de encerramento explícito ao cliente.

## Observações operacionais
Documento oficial criado em `_agents/reno/atendimentos/11003-jisa-dantas.md` em 2026-04-30. Existe documento legado/drift em `_agents/reno/clientes/jisa-dantas.md` com frontmatter mínimo e sem conteúdo útil; não continuar escrevendo no legado. CRM permaneceu como fonte de verdade. Resgate e Repescagem tratados como fluxos independentes. Não houve restart de gateway nesta execução.
