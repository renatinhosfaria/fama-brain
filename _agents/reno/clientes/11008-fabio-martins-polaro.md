---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Fabio Martins Polaro
client_id: 11008
flow: repescagem
status: Não Respondeu
broker_id: 35
tags:
  - reno
  - repescagem
  - whatsapp
  - garden-sul
---
# Fabio Martins Polaro

## Contexto comercial
- Cliente `client_id`: 11008
- Broker: Reno (`broker_id=35`)
- Status operacional no FamaChat: Não Respondeu
- Origem: Facebook Ads
- Interesse identificado no FamaChat: Garden Sul, Jardim Sul, Uberlândia
- Contexto do imóvel: lançamento na Zona Sul, apartamentos de 2 quartos com suíte, plantas entre 52,01 m² e 82,70 m², entrega prevista para set/2028.

## Diagnóstico de repescagem
- Fluxo: repescagem
- Step enviado: 1 — novo motivo para responder
- Ângulo comercial usado: imóvel específico / organizar busca antes de avaliar opções soltas
- Racional: cliente demonstrou interesse em empreendimento específico, mas não respondeu ao primeiro contato. A abordagem evitou repetir abertura de cadastro e trouxe um motivo novo: entender se o perfil do lançamento, plantas e prazo de entrega combinam com o momento do cliente.

## Último envio
- Data/hora de envio: 2026-04-29T12:50:05-03:00
- Canal: WhatsApp
- Mensagem enviada:

```text
Oi, Fabio! Tudo bem? 🏡

Sobre o Garden Sul, no Jardim Sul: mais do que só ver fotos ou valores, vale entender se o perfil do lançamento, as plantas e o prazo de entrega combinam com o que você está buscando agora.

Posso te ajudar a organizar isso de forma **simples e sem compromisso**.

Você está olhando esse imóvel mais para morar ou como investimento?
```

## Próximo passo
- Próximo `next_run_at`: 2026-04-30T08:00:00-03:00
- Se não houver resposta real do cliente até o próximo horário elegível, seguir para step 2 da repescagem.
- Se houver resposta real, parar repescagem e conduzir atendimento por outro fluxo do Reno, com status operacional apropriado no FamaChat.
