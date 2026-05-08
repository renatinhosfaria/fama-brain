---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Liriel Fernandes
client_id: 11221
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-05-07'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - union-vereda
  - sla-cascata
---
# Atendimento — Liriel Fernandes

Vínculos: [[reno]], [[playbook-atendimento]], [[union-vereda]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem ativa do Reno para a cliente 11221. O step 3 foi enviado em 2026-05-08 16:22 BRT via WhatsApp, com foco em alinhar o objetivo da compra antes de insistir em qualquer opção. A cliente segue sem resposta e permanece em status `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11221
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Empreendimento: Union Vereda (id_empreendimento 161)
- WhatsApp: JID salvo no CRM
- Última interação relevante: repescagem step 3 enviada em 2026-05-08 16:22 BRT
- Próximo follow-up: 2026-05-09 19:10 BRT

## Contexto comercial
Lead vindo de SLA Cascata, com contexto do Union Vereda no Jaraguá. A repescagem mudou do eixo de viabilidade prática para o objetivo da compra: entender se a cliente quer morar ou investir antes de mandar qualquer sugestão mais fechada.

## Diagnóstico
### Necessidade
Entender se a compra no lançamento faz sentido no momento atual e qual é o objetivo principal da busca.

### Momento
Lead frio, ainda sem resposta ao primeiro contato e às repescagens anteriores.

### Decisão
Sem sinais de decisor adicional ou urgência definidos.

### Viabilidade
O step 2 já tratou entrada, parcela e financiamento. Agora o foco é qualificar a direção da busca sem prometer crédito.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato
Abertura curta sobre interesse no Union Vereda e pergunta se a cliente buscava imóvel na região. Status foi alterado para `Não Respondeu` e a régua de repescagem foi inicializada.

### 2026-05-06 — Repescagem step 1
Mensagem contextual sobre o lançamento com entrega prevista para Dez/2028 e pergunta sobre morar mais pra frente versus comparar com algo de entrega mais rápida.

### 2026-05-07 — Repescagem step 2
Mensagem enviada: "Liriel, pra eu não te mandar opção fora do seu momento 🏡

Como o Union Vereda é um lançamento com entrega mais pra frente, o ponto que mais ajuda agora é olhar a compra na prática: entrada, parcela e financiamento.

Você quer que eu te ajude a começar por qual deles?"

### 2026-05-08 — Repescagem step 3
Mensagem enviada: "Oi, Liriel. Pra eu te orientar melhor e não te mandar coisa fora do alvo: essa compra é pra morar ou investir?"

## Próximo passo
Aguardar resposta. Se houver retorno, seguir para qualificação consultiva; se não houver, manter a régua e aguardar o próximo horário elegível.

## Observações operacionais
- WhatsApp enviado com validação `onWhatsApp` usando o JID do CRM.
- A marcação de envio no wrapper do CRM/MCP teve timeout, então o estado foi persistido via fallback SQL no MCP Postgres e verificado em seguida.
- Registro CRM de apoio criado com o envio do step 3.
- Branch de repescagem agora está em `step=3`, `enabled=true`, `stopped_reason=null`, `claim_expires_at=null` e `next_run_at=2026-05-09T19:10:00-03:00`.
- Documento mantido de forma determinística neste atendimento para evitar duplicidade futura.
