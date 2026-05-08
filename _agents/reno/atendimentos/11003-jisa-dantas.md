---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jisa Dantas
client_id: 11003
broker_id: 35
source: SLA Cascata
status_crm: Em Atendimento
created: '2026-04-24'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vista
  - viabilidade-financiamento
  - visita-pendente
  - manual-review
  - duplicate-ownership
  - paused
---
# Atendimento — Jisa Dantas

Vínculos: [[reno]], [[playbook-atendimento]], [[jisa-dantas]], [[union-vista]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Cliente em `Em Atendimento`, interessada no Union Vista (Grand Ville). O atendimento começou com perguntas sobre valor, planta e parcelamento da entrada e evoluiu para a régua de Resgate. O fluxo chegou ao step 5, com bucket `visita_pendente`, mas em 2026-05-07 a revalidação do CRM encontrou outro cadastro ativo com o mesmo telefone/JID em `Em Atendimento` fora do escopo do Reno (cliente 10915, broker 24). Resultado: Resgate pausado sem novo WhatsApp, com `manual_review_duplicate_active_broker`.

## Dados operacionais
- Cliente ID: 11003
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: final 3733; JID confirmado no CRM
- Empreendimento vinculado: Union Vista — Grand Ville — ID 22
- Última interação relevante: 2026-05-07 — pausa operacional por duplicidade/ownership; nenhum WhatsApp enviado nesta execução
- Estado Resgate atual: `step=5`, `enabled=false`, `next_run_at=null`, `last_sent_at=2026-05-03T17:41:54-03:00`, `stopped_reason=manual_review_duplicate_active_broker`, `last_context_bucket=visita_pendente`

## Contexto comercial
A cliente demonstrou interesse no Union Vista, região do Grand Ville. O histórico comercial aponta dúvida recorrente em torno de valor, planta e principalmente parcelamento da entrada/viabilidade. O empreendimento trabalhado no atendimento tem opções a partir de R$292.400, plantas de 56,9m² / 58,4m² e térreo de 82,2m², com entrega prevista para Jul/2027.

## Diagnóstico
### Necessidade
Entender se o imóvel e a condição comercial cabem no momento da cliente.

### Momento
A conversa ficou silenciosa após o envio de informações consultivas e depois de várias retomadas por Resgate. Não há visita/agendamento ativo no CRM.

### Decisão
Não há decisor adicional identificado.

### Viabilidade
O bucket histórico principal foi `viabilidade_financiamento`, depois reclassificado para `visita_pendente` no step 5 porque a conversa já tinha girado bastante em torno de financiamento/entrada e o próximo passo com mais chance de avanço passou a ser visita presencial.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato e atendimento inicial
Reno abordou a cliente sobre o Union Vista. A cliente perguntou valor, planta e parcelamento da entrada. Foi respondido com faixa de preço, metragens, entrega prevista e orientação de que a entrada depende de simulação e pode ser parcelada conforme o fluxo da obra. Planta pública foi enviada.

### 2026-04-25 — Reenvio inicial
Reforço da abertura e do interesse no Union Vista, mantendo o contato em atendimento sem mudar o status comercial.

### 2026-04-28 — Resgate step 1
Mensagem de retomada focada em viabilidade de compra antes da escolha do imóvel. Bucket legado `financiamento_sumiu`, normalizado para `viabilidade_financiamento`.

### 2026-04-30 — Resgate step 2
Bucket: `viabilidade_financiamento`.
Gancho: entrada, parcela ou aprovação, para tirar a conversa do genérico e qualificar a principal dúvida financeira.

### 2026-04-30 — Resgate step 3
Bucket: `viabilidade_financiamento`.
Gancho: prévia simples para a cliente entender se valia a pena vir à Fama e olhar o empreendimento com mais clareza.

### 2026-05-01 — Resgate step 4
Bucket: `viabilidade_financiamento`.
Gancho: olhar primeiro se a planta de 56/58m² e a entrada parcelada cabiam confortavelmente; CTA focada em resposta de baixa fricção.

### 2026-05-03 — Resgate step 5
Bucket: `visita_pendente`.
Mensagem com convite presencial para segunda-feira, priorizando almoço ou fim do dia, porque o contexto já pedia ver a opção pessoalmente em vez de seguir insistindo só em WhatsApp.

### 2026-05-07 — Resgate pausado por duplicidade/ownership
Na revalidação do CRM, o mesmo telefone/JID apareceu em outro cadastro ativo em `Em Atendimento` fora do escopo do Reno (cliente 10915, broker Maria Eduarda Moreira Rodrigues). O Resgate foi pausado sem envio, a branch ficou com `enabled=false`, `next_run_at=null` e `stopped_reason=manual_review_duplicate_active_broker`. Foi registrada nota CRM objetiva.

## Objeções e travas
- Trava histórica: viabilidade de financiamento, entrada e parcelamento.
- Possível dúvida secundária: planta/tamanho do Union Vista.
- Trava operacional atual: duplicidade/ownership recente com outro cadastro ativo impede novo envio até revisão manual.

## Próximo passo
Pausar a régua até revisão manual de ownership/duplicidade. Se o cadastro 11003 continuar como o operacional do Reno após regularização, o fluxo pode ser rearmado a partir de um novo outbound normal seguido de silêncio elegível. Enquanto isso, não enviar Resgate.

## Observações operacionais
- CRM recebeu nota ID 17190 em 2026-05-07.
- Não houve WhatsApp enviado nesta execução.
- Documento oficial mantido em `_agents/reno/atendimentos/11003-jisa-dantas.md`.
- Há outro cadastro ativo com o mesmo telefone/JID sob broker diferente; validar ownership antes de retomar.
