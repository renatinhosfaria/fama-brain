---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jeandra Cândido
client_id: 11208
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-05-05'
updated: '2026-05-05'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Jeandra Cândido

## Resumo atual
Primeiro contato do Reno enviado com sucesso via WhatsApp. Cliente estava em `Sem Atendimento`, foi avançada condicionalmente para `Não Respondeu` e a repescagem foi inicializada para retomada no próximo turno útil.

## Dados operacionais
- Cliente ID: 11208
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata / sla_cascata
- Telefone/WhatsApp: (34) 98821-5118 / 553488215118@s.whatsapp.net
- Empreendimentos vinculados no CRM: 25, 67
- Última interação relevante: 2026-05-05 — primeiro WhatsApp enviado pelo Reno

## Contexto comercial
Cliente chegou ao Reno por redistribuição da SLA Cascata, com dois empreendimentos vinculados no CRM. Como havia mais de um empreendimento, a abertura foi genérica e segura, sem inventar nome, bairro, preço ou disponibilidade.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A primeira pergunta enviada busca entender se a procura é para morar ou investir.

### Momento
Ainda não diagnosticado.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. Não houve promessa ou inferência de crédito.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato WhatsApp
Mensagem enviada pelo Reno: “Oi, Jeandra! Tudo bem? Aqui é o Reno, da Fama. Vi seu interesse em alguns imóveis e queria entender rapidinho: você procura pra morar ou investir?”

O envio foi feito para o JID priorizado `553488215118@s.whatsapp.net` e teve retorno técnico de sucesso. O status CRM mudou de `Sem Atendimento` para `Não Respondeu`.

### 2026-05-05 — Repescagem inicializada
Branch `meta_data.reno_followup.repescagem` criada com `enabled=true`, `step=0`, `entry_shift=noite`, `entry_reference_at=2026-05-05T21:04:36-03:00` e `next_run_at=2026-05-06T09:10:00-03:00`.

## Objeções e travas
- Nenhuma objeção registrada até o momento.

## Próximo passo
Aguardar resposta da cliente. Se não responder, seguir a repescagem programada conforme `meta_data.reno_followup.repescagem.next_run_at`.

## Observações operacionais
- Nome no CRM parece humano e confiável; foi usado na saudação.
- Como existiam dois empreendimentos vinculados, não foi citado empreendimento específico na abertura.
- Nota operacional registrada no CRM pelo usuário Reno (`user_id=35`).
