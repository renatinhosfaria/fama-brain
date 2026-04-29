---
broker_id: 35
client_id: 10967
created: '2026-04-29'
entity_name: Flaviahair Especialista em Mechas e Loiro
entity_type: cliente
flow: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - whatsapp
  - union-vereda
type: entity-profile
updated: '2026-04-29'
---
# Flaviahair Especialista em Mechas e Loiro — Repescagem Reno

## Identificação
- Cliente: Flaviahair Especialista em Mechas e Loiro
- client_id: 10967
- Broker: Reno (`broker_id=35`)
- Status operacional atual: Não Respondeu
- Fluxo: repescagem

## Contexto comercial curado
- Origem operacional do cadastro atual: SLA Cascata, vindo do cliente original 10886.
- Origem comercial original: Facebook Ads.
- Interesse associado: Union Vereda, bairro Jaraguá, Uberlândia.
- Empreendimento: apartamento no Union Vereda, com opções de 2 quartos, suíte, varanda/sacada, lazer e entrega prevista para Dez/2028.
- Informações originais do lead: já olhou alguns imóveis e pretende comprar junto com alguém.
- Histórico: primeiro contato do Reno enviado em 2026-04-27 perguntando se a região do Union Vereda combinava com a busca. Cliente permaneceu sem resposta real.

## Repescagem enviada
- Data/hora de envio: 2026-04-29T09:25:36-03:00
- Step enviado: 1
- Intenção do step: novo motivo para responder, sem repetir a abertura inicial.
- Ângulo comercial usado: imóvel específico + busca para organizar melhor a decisão em conjunto.
- Canal: WhatsApp

### Mensagem enviada
```text
Oi, Flávia! Tudo bem? 🏡

Como você chegou pelo Union Vereda, no Jaraguá, e já vinha olhando alguns imóveis, talvez o melhor agora não seja sair vendo opções soltas — é entender qual caminho encaixa melhor para vocês, com localização, valor e forma de compra bem alinhados.

Posso te ajudar a organizar isso de um jeito **simples e sem pressão**. Você prefere começar olhando se o Union Vereda combina com o que vocês buscam ou comparar com opções parecidas na região?
```

## Próximo acompanhamento
- Próximo `next_run_at`: 2026-04-30T08:00:00-03:00
- Próximo step previsto se não houver resposta: step 2 — evitar caminho errado com opções fora do momento, região ou viabilidade.
- Condição de parada: se a cliente responder, parar repescagem (`client_replied`) e seguir atendimento consultivo pelo fluxo `fama-reno-whatsapp-qualification`.

## Registro operacional
- Envio WhatsApp confirmado e registrado no CRM pela tool específica do Reno `mark_reno_followup_sent`.
- Não alterar status durante repescagem: cliente permanece em `Não Respondeu` até resposta real.
