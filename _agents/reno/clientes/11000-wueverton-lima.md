---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Wueverton Lima
client_id: 11000
flow: repescagem
status: Não Respondeu
broker_id: 35
tags:
  - reno
  - repescagem
  - nao-respondeu
  - union-vista
  - grand-ville
---
# Wueverton Lima

## Identificação
- Cliente: Wueverton Lima
- Client ID: 11000
- Broker: Reno (`broker_id=35`)
- Status operacional no FamaChat: Não Respondeu
- Origem: Facebook Ads
- Empreendimento/contexto associado: Union Vista, Grand Ville

## Contexto comercial curado
O primeiro contato do Reno foi enviado anteriormente via WhatsApp com abertura curta sobre a região do Union Vista / Grand Ville. Até esta execução, não havia resposta real registrada do cliente. O ângulo principal para repescagem foi **imóvel específico / região**, com reforço consultivo para organizar a busca e evitar perda de tempo com opção que talvez não encaixe no momento do cliente.

## Repescagem — histórico

### Step 1 — 2026-04-29 12:06:54 -03:00
- Fluxo: repescagem
- Intenção do step: criar novo motivo para responder, sem repetir primeiro contato.
- Ângulo usado: imóvel específico / Union Vista no Grand Ville.
- Envio: WhatsApp enviado com sucesso para o JID salvo no CRM.
- Mensagem enviada:

```text
Oi, Wueverton! Tudo bem? 🏡

Sobre o Union Vista, no Grand Ville, o mais importante agora é entender se a região e o perfil do imóvel realmente combinam com o que você está buscando — assim você evita perder tempo com opção que talvez não encaixe no seu momento.

Posso te ajudar a organizar esse caminho de forma **simples e sem pressão**. O Grand Ville faz sentido para você ou prefere comparar com outra região?
```

- Próximo `next_run_at`: 2026-04-30T08:00:00-03:00
- Próximo passo: se o cliente continuar sem resposta e permanecer em `Não Respondeu`, a próxima execução elegível deve avaliar o step 2 de repescagem. Se houver resposta real, parar repescagem e mover o atendimento para fluxo normal.
