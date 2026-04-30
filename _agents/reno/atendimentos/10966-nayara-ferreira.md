---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
tags:
  - reno
  - repescagem
  - whatsapp
  - nao-respondeu
entity_type: cliente
entity_name: Nayara Ferreira
status: Não Respondeu
broker_id: 35
client_id: 10966
flow: repescagem
---
# Nayara Ferreira — Repescagem Reno

## Identificação
- Cliente: Nayara Ferreira
- client_id: 10966
- Broker: Reno (`broker_id=35`)
- Status operacional no envio: Não Respondeu
- Fluxo: repescagem

## Contexto comercial curado
Cliente veio por SLA Cascata após interesse no empreendimento **Union Vista**, no bairro **Grand Ville**, em Uberlândia. Primeiro contato anterior mencionou o Union Vista e perguntou se a região combinava com a busca, mas não houve resposta real registrada.

Empreendimento relacionado: Union Vista — apartamentos em lançamento no Grand Ville, com opções de 2 quartos e lazer de condomínio. Como ainda não há dados de objetivo, renda, entrada ou prazo, o melhor ângulo é **imóvel específico + diagnóstico leve de intenção**.

## Última ação de repescagem
- Data/hora de envio: 2026-04-29T09:20:46-03:00
- Step enviado: 1
- Intenção do step: criar novo motivo para responder sem repetir a abertura inicial
- Ângulo usado: imóvel específico / busca ainda sem direção confirmada
- Próximo `next_run_at`: 2026-04-30T08:00:00-03:00
- Condição de continuidade: se não responder, próxima execução elegível deve seguir para step 2; se responder, parar repescagem e migrar para atendimento consultivo com `fama-reno-whatsapp-qualification`.

### Mensagem enviada
```text
Oi, Nayara! Tudo bem? 🏡

Sobre o Union Vista, no Grand Ville, o mais importante agora não é só ver fotos ou valores soltos — é entender se esse tipo de apê realmente combina com o seu momento e com o caminho de compra.

Posso te ajudar a olhar isso de forma **simples e sem pressão**, pra você não perder tempo com uma opção que talvez não encaixe.

Você está buscando algo mais para morar ou pensando em investimento?
```

## Registro operacional
Envio WhatsApp bem-sucedido e estado registrado pela tool específica `mark_reno_followup_sent`. Documento curado criado/atualizado em caminho determinístico para evitar duplicidade.
