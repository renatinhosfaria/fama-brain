---
agent: reno
broker_id: 35
client_id: 10951
client_name: Levi Santos
context_angle: imóvel específico
created: '2026-04-29'
entity_name: Levi Santos
entity_type: cliente
flow: repescagem
last_sent_at: '2026-04-29T08:31:35-03:00'
last_step: 1
next_run_at: '2026-04-30T12:00:00-03:00'
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - whatsapp
  - nao-respondeu
type: entity-profile
updated: '2026-04-29'
---
# Levi Santos — Repescagem Reno

## Identificação
- Cliente: Levi Santos
- Client ID: 10951
- Broker: Reno Agente de IA (`broker_id=35`)
- Status operacional no envio: Não Respondeu
- Fluxo: repescagem

## Contexto comercial usado
Lead de Facebook Ads associado ao empreendimento **Union Vereda**, no bairro Jaraguá, em Uberlândia. Primeiro contato anterior mencionou o Union Vereda e perguntou se a região combinava com a busca, sem resposta real do cliente.

Ângulo comercial principal: **imóvel específico**.

## Envio realizado
- Data/hora de envio: 2026-04-29T08:31:35-03:00
- Step enviado: 1
- Intenção do step: novo motivo para responder, usando o imóvel de interesse como ponto de partida e evitando repetir a abertura inicial.
- Canal: WhatsApp

### Mensagem enviada
```text
Oi, Levi! Tudo bem? 🏡

Sobre o Union Vereda, no Jaraguá, o mais importante agora é entender se esse apartamento realmente combina com o seu momento — às vezes olhar só o imóvel, sem organizar região, valor e forma de compra, acaba deixando a busca mais confusa.

Posso te ajudar a clarear esse caminho de um jeito **simples e sem pressão**. Você quer que eu veja com você se o Union Vereda faz sentido para o que você procura?
```

## Próximo passo
- Próximo `next_run_at`: 2026-04-30T12:00:00-03:00
- Próxima ação se não houver resposta: seguir para step 2 da repescagem, com foco em evitar caminho errado e filtrar viabilidade/região antes de avançar.
- Condição de parada: se o cliente responder, retirar da repescagem e tratar como atendimento ativo conforme regra operacional.

## Registro operacional
Envio registrado no CRM via tool específica do Reno (`mark_reno_followup_sent`). Não houve alteração manual de `meta_data` e o status do cliente foi preservado como Não Respondeu.
