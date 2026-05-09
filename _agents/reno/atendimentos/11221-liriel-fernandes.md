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
updated: '2026-05-09'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - union-vereda
  - sla-cascata
  - step-4
---
# Atendimento — Liriel Fernandes

Vínculos: [[reno]], [[playbook-atendimento]], [[union-vereda]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem ativa do Reno para a cliente 11221. O step 4 foi enviado em 2026-05-09 19:16 BRT via WhatsApp validado no bridge local (`onWhatsApp`), com foco em orientar o caminho mais viável entre entrada, financiamento e imóvel certo, e abrindo o próximo passo para segunda-feira. A cliente segue sem resposta e permanece em status `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11221
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Empreendimento: Union Vereda (id_empreendimento 161)
- WhatsApp: JID salvo no CRM
- Última interação relevante: repescagem step 4 enviada em 2026-05-09 19:16 BRT
- Próximo follow-up: 2026-05-10 09:10 BRT

## Contexto comercial
Lead vindo de SLA Cascata, com contexto do Union Vereda no Jaraguá. A repescagem saiu do eixo de objetivo da compra para um convite consultivo mais direto: a Fama pode organizar o caminho entre entrada, financiamento e o imóvel certo, sem pressionar fechamento cedo demais.

## Diagnóstico
### Necessidade
Entender o caminho de compra mais viável e o que pesa mais na decisão atual.

### Momento
Lead frio, ainda sem resposta ao primeiro contato e às repescagens anteriores.

### Decisão
Sem sinais de decisor adicional ou urgência definidos.

### Viabilidade
O step 2 já tratou entrada, parcela e financiamento. O step 3 confirmou que a conversa precisava ser mais consultiva. O step 4 abriu o próximo passo com CTA leve para segunda-feira.

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

### 2026-05-09 — Repescagem step 4
Mensagem enviada: "Liriel, pra eu te orientar sem te mandar coisa fora do seu momento, eu consigo te mostrar o caminho mais viável entre entrada, financiamento e o imóvel certo.

Se fizer sentido, eu já deixo a visita pra segunda-feira. Hoje o que pesa mais pra você: entrada/financiamento ou o imóvel em si?"

## Próximo passo
Aguardar resposta. Se houver retorno, seguir para qualificação consultiva; se não houver, manter a régua e aguardar o próximo horário elegível para step 5.

## Observações operacionais
- WhatsApp enviado com validação `onWhatsApp` usando o JID do CRM.
- O bridge local em `http://127.0.0.1:3000/health` respondeu `connected`.
- A marcação de envio do step 4 persistiu em `meta_data.reno_followup.repescagem` com `step=4` e `next_run_at=2026-05-10T09:10:00-03:00`.
- Documento mantido de forma determinística neste atendimento para evitar duplicidade futura.
