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
Repescagem ativa do Reno para a cliente 11221. O step 2 foi enviado em 2026-05-07 09:34 BRT via WhatsApp, com foco em viabilidade da compra do Union Vereda. Cliente segue sem resposta e permanece em status `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11221
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Empreendimento: Union Vereda (id_empreendimento 161)
- WhatsApp: JID salvo no CRM
- Última interação relevante: repescagem step 2 enviada em 2026-05-07 09:34 BRT
- Próximo follow-up: 2026-05-08 14:20 BRT

## Contexto comercial
Lead vindo de SLA Cascata, com contexto do Union Vereda no Jaraguá. A repescagem mudou de eixo do primeiro contato para uma leitura prática da compra, olhando entrada, parcela e financiamento antes de insistir em qualquer agenda.

## Diagnóstico
### Necessidade
Entender se a compra no lançamento faz sentido no momento atual.

### Momento
Lead frio, ainda sem resposta ao primeiro contato e à primeira repescagem.

### Decisão
Sem sinais de decisor adicional ou urgência definidos.

### Viabilidade
Ponto principal agora é leitura de entrada, parcela e financiamento. Não prometer crédito.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato
Abertura curta sobre interesse no Union Vereda e pergunta se a cliente buscava imóvel na região. Status foi alterado para `Não Respondeu` e a régua de repescagem foi inicializada.

### 2026-05-06 — Repescagem step 1
Mensagem contextual sobre o lançamento com entrega prevista para Dez/2028 e pergunta sobre morar mais pra frente versus comparar com algo de entrega mais rápida.

### 2026-05-07 — Repescagem step 2
Mensagem enviada: "Liriel, pra eu não te mandar opção fora do seu momento 🏡\n\nComo o Union Vereda é um lançamento com entrega mais pra frente, o ponto que mais ajuda agora é olhar a compra na prática: entrada, parcela e financiamento.\n\nVocê quer que eu te ajude a começar por qual deles?"

## Próximo passo
Aguardar resposta. Se houver retorno, seguir para qualificação consultiva; se não houver, manter a régua e aguardar o próximo horário elegível.

## Observações operacionais
- WhatsApp enviado com validação `onWhatsApp` usando o JID do CRM.
- Branch de repescagem permaneceu ativa após a marcação do envio, com `step=2`, `enabled=true`, `stopped_reason=null` e `claim_expires_at=null`.
- Documento criado de forma determinística neste atendimento para evitar duplicidade futura.
