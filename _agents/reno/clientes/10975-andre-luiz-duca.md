---
broker_id: 35
client_id: 10975
client_name: Andre Luiz duca
context_angle: imovel_especifico
created: '2026-04-29'
entity_name: Andre Luiz duca
entity_type: client-followup
flow: repescagem
last_sent_at: '2026-04-29T10:01:25-03:00'
last_step: 1
next_run_at: '2026-04-30T12:00:00-03:00'
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - nao-respondeu
  - union-vista
type: entity-profile
updated: '2026-04-29'
---
# Andre Luiz duca — Repescagem Reno

## Identificação
- Cliente: Andre Luiz duca
- client_id: 10975
- Broker: Reno (broker_id=35)
- Status operacional no FamaChat: Não Respondeu
- Fluxo atual: repescagem

## Contexto comercial curado
Lead reentrou por Facebook Ads/SLA Cascata com interesse no empreendimento **Union Vista**, no bairro **Grand Ville**, em Uberlândia. O primeiro contato registrado pelo Reno mencionou o Union Vista e perguntou se a região combinava com a busca do cliente. Até esta execução, não havia resposta real registrada do cliente.

Ângulo comercial usado na repescagem: **imóvel específico** — gerar novo motivo para resposta sem repetir a abertura inicial, ajudando o cliente a avaliar se região e perfil do apartamento fazem sentido antes de olhar opções soltas.

## Última repescagem enviada
- Data/hora de envio: 2026-04-29T10:01:25-03:00
- Step enviado: 1
- Intenção do step: novo motivo para responder
- Canal: WhatsApp

### Mensagem enviada
```text
Oi, Andre! Tudo bem? 🏡

Sobre o Union Vista, no Grand Ville, às vezes vale entender primeiro se a região e o perfil do apê realmente encaixam no seu momento, antes de ficar olhando opções soltas.

Posso te ajudar a organizar isso de um jeito bem **simples e sem pressão**.

Você está pensando mais em morar ou em investir?
```

## Próximo passo
- Próximo follow-up previsto: 2026-04-30T12:00:00-03:00
- Próximo step, se continuar sem resposta: step 2 — evitar caminho errado.
- Condição de parada: se houver resposta real do cliente, parar repescagem e mover para atendimento normal do Reno fora desta skill.

## Registro operacional
Envio registrado no CRM pela tool específica `mark_reno_followup_sent`, preservando o status do cliente como `Não Respondeu` e atualizando `clientes.meta_data.reno_followup.repescagem` sem SQL manual.
