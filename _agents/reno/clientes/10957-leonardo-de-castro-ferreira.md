---
broker_id: 35
client_id: 10957
cliente: Leonardo De Castro Ferreira
created: '2026-04-29'
entity_name: Leonardo De Castro Ferreira
entity_type: cliente
flow: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - whatsapp
  - garden-sul
  - nao-respondeu
type: entity-profile
updated: '2026-04-29'
---
# Leonardo De Castro Ferreira — Repescagem Reno

## Identificação
- Cliente: Leonardo De Castro Ferreira
- client_id: 10957
- Broker: Reno (broker_id=35)
- Status operacional: Não Respondeu
- Origem: Facebook Ads / lead automático
- Empreendimento de contexto: Garden Sul, Jardim Sul, Uberlândia-MG

## Contexto comercial curado
Lead veio associado ao Garden Sul, empreendimento no Jardim Sul/Zona Sul, em lançamento, com apartamentos de 2 quartos com suíte e lazer/portaria. Não há resposta real registrada do cliente após o primeiro contato. Contexto operacional indica primeiro contato anterior sobre Garden Sul e região do Jardim Sul, sem evolução.

Ângulo comercial usado: imóvel específico + busca confusa/sem direção.

## Repescagem enviada
- Fluxo: repescagem
- Step enviado: 1
- Intenção do step: novo motivo para responder, sem repetir a abertura inicial
- Data/hora de envio: 2026-04-29T09:02:03-03:00
- Canal: WhatsApp
- Mensagem enviada:

```text
Oi, Leonardo! Tudo bem? 🏡

Sobre o Garden Sul, no Jardim Sul, o ponto agora não é te mandar um monte de opção solta, e sim entender se esse caminho combina com o que você procura e com o seu momento.

Posso te ajudar a organizar isso de forma **simples**, começando pelo que realmente faz sentido pra você.

Você busca algo mais para morar ou está olhando como investimento?
```

## Estado operacional após envio
- Registro CRM realizado pela tool específica do Reno: `mark_reno_followup_sent`
- Último step registrado: 1
- Próximo next_run_at: 2026-04-30T12:00:00-03:00
- Condição de continuidade: se não houver resposta real do cliente, seguir para step 2 após o próximo horário elegível.
- Condição de parada/handoff: se o cliente responder, parar repescagem e conduzir para atendimento consultivo.
