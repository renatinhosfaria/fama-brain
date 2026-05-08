---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jeandra Cândido
client_id: 11208
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-05-06'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - repescagem
  - famachat
---
# Atendimento — Jeandra Cândido

Vínculos: [[reno]], [[playbook-atendimento]], [[garden-sul]], [[place-arbi]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem ativa para a cliente operacional `11208` segue em `Não Respondeu`. O fluxo já passou por três ângulos: step 1 organizou a busca entre Garden Sul e Place+Arbi; step 2 tratou viabilidade prática da compra; step 3 foi enviado hoje com foco no critério principal de escolha entre os lançamentos.

## Dados operacionais
- Cliente ID: 11208
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Cliente original de contexto: 11153 (apenas consultivo)
- Empreendimentos: Garden Sul; Place+Arbi
- Última interação relevante: envio da repescagem step 3 via WhatsApp validado no JID do CRM
- Próximo step previsto: step 4 em 2026-05-09T09:10:00-03:00

## Contexto comercial
Lead com interesse em Garden Sul e Place+Arbi. A conversa vem alternando entre organizar a busca entre opções, viabilidade prática e critério principal de escolha.

## Diagnóstico
### Necessidade
Escolher entre lançamentos com propostas diferentes sem perder o eixo de viabilidade.

### Momento
Ainda sem resposta direta ao ciclo de repescagem; segue em qualificação silenciosa.

### Decisão
Ainda comparando prioridade entre localização, prazo de entrega e condição de compra.

### Viabilidade
Step 2 já tocou entrada, financiamento e parcela; sem prometer crédito.

## Histórico curado de interações
### 2026-05-06 — Step 1
Reno abriu a conversa organizando a busca entre Garden Sul e Place+Arbi, perguntando qual critério pesava mais: localização, prazo de entrega ou condição de pagamento.

### 2026-05-07 — Step 2
Reno reforçou a viabilidade prática da compra, destacando entrada, financiamento e parcela como filtros antes de avançar.

### 2026-05-08 — Step 3
Reno mudou o ângulo e perguntou por outro critério de escolha entre Garden Sul e Place+Arbi: localização, prazo de entrega ou condição de compra.

## Objeções e travas
- Silêncio após os contatos anteriores.
- Nenhuma objeção explícita registrada ainda.

## Próximo passo
Aguardar resposta. Se a cliente seguir sem responder, o fluxo avança para step 4 na janela prevista.

## Observações operacionais
- Envio realizado via bridge local `http://127.0.0.1:3000/send`.
- Bridge validou o destino antes da marcação no CRM.
- CRM/meta_data persistidos com step 3 e próximo `next_run_at` calculado pela matriz.
- Status do cliente permaneceu `Não Respondeu`.
