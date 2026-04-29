---
broker_id: 35
client_id: 10978
created: '2026-04-29'
entity_name: Esther Osklen
entity_type: client
flow: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - nao-respondeu
  - union-vereda
type: entity-profile
updated: '2026-04-29'
---
# Esther Osklen — Repescagem Reno

## Identificação
- Cliente: Esther Osklen
- Client ID: 10978
- Broker: Reno (`broker_id=35`)
- Status operacional no CRM: `Não Respondeu`
- Fluxo: `repescagem`

## Contexto comercial curado
- Lead de origem SLA Cascata, herdado de atendimento anterior.
- Contexto operacional disponível no FamaChat indica interesse no empreendimento **Union Vereda**, bairro Jaraguá, Uberlândia/MG.
- Primeiro contato e reenvio inicial já foram enviados anteriormente sem resposta real registrada.
- Ângulo comercial usado nesta repescagem: **imóvel específico** + organizar a busca sem pressionar visita.

## Repescagem enviada — Step 1
- Data/hora de envio: 2026-04-29T10:19:02-03:00
- Step enviado: 1
- Intenção do step: criar novo motivo para resposta, sem repetir o primeiro contato.
- Mensagem enviada:

```text
Oi, Esther! Tudo bem? 🏡

Sobre o Union Vereda, no Jaraguá, antes de ficar olhando opção solta, vale entender se ele combina com o seu momento: região, tamanho e forma de pagamento.

Posso te ajudar a fazer essa leitura de forma **simples e sem compromisso**.

Você quer começar vendo se o Union Vereda encaixa no que você procura?
```

## Próximo estado operacional
- Próximo `next_run_at`: 2026-04-30T12:00:00-03:00
- Próximo passo: se permanecer sem resposta e elegível, seguir para Step 2 da repescagem a partir do próximo horário previsto.
- Condição de parada: se houver resposta real da cliente, sair da repescagem e mover atendimento para fluxo normal, mantendo status fora de `Não Respondeu` quando aplicável.
