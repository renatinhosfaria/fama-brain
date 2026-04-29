---
broker_id: 35
client_id: 10949
created: '2026-04-29'
entity_name: Sonia Silva
entity_type: client
flow: repescagem
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
# Sonia Silva — Repescagem Reno

## Identificação
- Cliente: Sonia Silva
- Client ID: 10949
- Broker: Reno (`broker_id=35`)
- Status operacional no CRM: Não Respondeu
- Fluxo: repescagem

## Contexto comercial usado
- Origem: Facebook Ads / lead automático.
- Interesse identificado no CRM: empreendimento Union Vista, região do Grand Ville, Uberlândia.
- Primeiro contato anterior mencionou Union Vista e Grand Ville, sem resposta real registrada.
- Ângulo comercial principal: imóvel específico + organização da busca.

## Último envio de repescagem
- Data/hora de envio: 2026-04-29T08:19:01-03:00
- Step enviado: 1
- Intenção do step: criar novo motivo para resposta sem repetir a abertura inicial.
- WhatsApp: enviado com sucesso para o JID salvo no CRM.

### Mensagem enviada
```text
Oi, Sonia! Tudo bem? 🏡

Sobre o Union Vista, na região do Grand Ville, às vezes vale organizar primeiro se esse perfil de apartamento combina mesmo com seu momento antes de ficar olhando opções soltas.

Posso te ajudar a entender de forma **simples e sem pressão** se esse caminho faz sentido para você.

Você busca algo mais para morar ou está pensando em investimento?
```

## Próximo passo
- Próximo `next_run_at`: 2026-04-30T08:00:00-03:00
- Se não houver resposta real até lá e o cliente continuar elegível, avaliar envio do step 2 de repescagem.
- Se houver resposta real, parar repescagem e seguir atendimento consultivo.
