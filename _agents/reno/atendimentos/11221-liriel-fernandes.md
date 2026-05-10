---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Liriel Fernandes
client_id: 11221
broker_id: 35
status_crm: Arquivado
source: FamaChat
created: '2026-05-07'
updated: '2026-05-10'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - union-vereda
  - sla-cascata
  - step-4
  - step-5
  - arquivado
  - max_steps
---
# Atendimento — Liriel Fernandes

Vínculos: [[reno]], [[playbook-atendimento]], [[union-vereda]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem encerrada no step 5. A última mensagem foi enviada via WhatsApp com validação `onWhatsApp` no bridge local. A branch de repescagem foi normalizada para `step=5`, `enabled=false`, `next_run_at=null` e `stopped_reason=max_steps`. Na checagem final, o cliente ainda estava exatamente em `Não Respondeu`, então o status foi arquivado defensivamente no CRM.

## Dados operacionais
- Cliente ID: 11221
- Broker ID: 35
- Status CRM: Arquivado
- Origem: SLA Cascata
- Empreendimento: Union Vereda (id_empreendimento 161)
- WhatsApp: JID salvo no CRM
- Última interação relevante: repescagem step 5 enviada em 2026-05-10 09:27 BRT
- Branch repescagem: encerrada (`max_steps`)

## Contexto comercial
Lead vindo de SLA Cascata, com contexto do Union Vereda no Jaraguá. A repescagem saiu do eixo de objetivo da compra para um convite consultivo mais direto, preservando espaço para retomada futura sem insistência excessiva.

## Diagnóstico
### Necessidade
Entender o caminho de compra mais viável e o que pesa mais na decisão atual.

### Momento
Lead frio, sem resposta ao primeiro contato e às repescagens anteriores.

### Decisão
Sem sinais de decisor adicional ou urgência definidos.

### Viabilidade
O step 2 tratou entrada, parcela e financiamento. O step 3 confirmou que a conversa precisava ser mais consultiva. O step 4 abriu o próximo passo com CTA leve para segunda-feira. O step 5 encerrou a régua de forma respeitosa.

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

### 2026-05-10 — Repescagem step 5 / encerramento
Mensagem enviada: "Oi, Liriel. Vou pausar por aqui pra não te incomodar. Quando fizer sentido retomar a compra com calma, eu te ajudo a organizar o caminho certo sem te mandar coisa fora do ponto."

## Próximo passo
Sem nova ação automática. Aguardar eventual resposta futura do cliente para reabrir a conversa comercial se houver interesse.

## Observações operacionais
- WhatsApp enviado com validação `onWhatsApp` usando o JID do CRM.
- O bridge local em `http://127.0.0.1:3000/health` respondeu `connected`.
- A branch de repescagem foi revalidada e encerrada com `step=5`, `enabled=false`, `next_run_at=null` e `stopped_reason=max_steps`.
- O cliente foi arquivado defensivamente após confirmação de que ainda estava em `Não Respondeu` na checagem final.
- Documento mantido de forma determinística neste atendimento para evitar duplicidade futura.
