---
agent: reno
broker_id: 35
client_id: 10989
created: '2026-04-29'
entity_name: Erlania Silva
entity_type: cliente
fluxo: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - whatsapp
  - imovel-especifico
type: entity-profile
updated: '2026-04-29'
---
# Erlania Silva — Repescagem Reno

## Identificação
- Cliente: Erlania Silva
- Client ID: 10989
- Broker: Reno Agente de IA (`broker_id=35`)
- Status operacional no momento do envio: Não Respondeu
- Fluxo: repescagem

## Contexto comercial curado
- Fonte operacional: FamaChat / CRM.
- Primeiro contato registrado em 2026-04-27 informava interesse no **Union Vereda**, região do **Jaraguá**.
- Situação antes desta repescagem: aguardando primeira resposta real da cliente.
- Ângulo comercial usado: **imóvel específico** / validação de região e encaixe da busca.

## Repescagem enviada
- Data/hora de envio: 2026-04-29T11:15:03-03:00
- Step enviado: 1
- Intenção do step: novo motivo para responder sem repetir a abertura inicial.
- Canal: WhatsApp
- Registro operacional: envio marcado no CRM pela tool específica `mark_reno_followup_sent`.

### Mensagem enviada
```text
Oi, Erlania! Tudo bem? 🏡

Sobre o Union Vereda, na região do Jaraguá, às vezes o melhor primeiro passo não é sair vendo várias opções, e sim entender se esse caminho combina com o que você busca e com uma compra viável.

Posso te ajudar a organizar isso de forma **simples e sem pressão**. O Jaraguá é mesmo uma região que você quer considerar?
```

## Próximo passo
- Próximo `next_run_at`: 2026-04-30T08:00:00-03:00
- Se não houver resposta real da cliente até o próximo horário, seguir para o step 2 da régua de repescagem.
- Se houver resposta real, interromper repescagem e conduzir por fluxo normal de atendimento do Reno.
