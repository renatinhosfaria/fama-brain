---
broker_id: 35
client_id: 10982
created: '2026-04-29'
entity_name: Mateus Costa
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
# Mateus Costa — Repescagem Reno

## Identificação
- Cliente: Mateus Costa
- client_id: 10982
- Broker: Reno (35)
- Status operacional no momento do envio: Não Respondeu
- Fluxo: repescagem

## Contexto comercial curado
- Fonte operacional: FamaChat/CRM.
- Origem do caso: SLA Cascata.
- Interesse registrado: Union Vereda, no bairro Jaraguá, Uberlândia.
- Imóvel/contexto: empreendimento Union Vereda, apartamento, região do Jaraguá, entrega prevista para dez/2028; unidades disponíveis com 2 quartos e valores a partir de aproximadamente R$ 288 mil no CRM.
- Primeiro contato anterior do Reno foi enviado em 2026-04-27 com pergunta sobre a região; cliente permaneceu sem resposta real.

## Diagnóstico da repescagem
- Ângulo principal: imóvel específico.
- Intenção do step 1: criar um novo motivo para resposta, sem repetir o primeiro contato.
- Argumento usado: comparar se o Union Vereda combina com o momento do cliente antes de avançar, considerando valor, prazo e forma de pagamento.

## Evento mais recente
- Data/hora de envio: 2026-04-29T10:43:49-03:00
- Canal: WhatsApp
- Fluxo: repescagem
- Step enviado: 1

### Mensagem enviada
```text
Oi, Mateus! Tudo bem? 🏡

Sobre o Union Vereda, no Jaraguá, o mais importante agora é entender se ele combina com o que você procura — principalmente porque opções parecidas podem mudar bastante em valor, prazo de entrega e forma de pagamento.

Posso te ajudar a fazer essa leitura de um jeito **simples e sem pressão**.

Você quer que eu veja se o Union Vereda faz sentido para o seu momento?
```

## Continuidade
- Próximo next_run_at: 2026-04-30T08:00:00-03:00
- Próximo passo: se não houver resposta real do cliente até o próximo vencimento, seguir para step 2 da repescagem. Se houver resposta real, parar repescagem e seguir atendimento normal fora desta skill.
