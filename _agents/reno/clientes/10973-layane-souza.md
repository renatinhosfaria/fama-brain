---
broker_id: 35
client_id: 10973
client_name: Layane Souza
created: '2026-04-29'
entity_name: Layane Souza
entity_type: reno-client-followup
flow: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - nao-respondeu
  - union-vereda
  - jaragua
type: entity-profile
updated: '2026-04-29'
---
# Layane Souza — Repescagem Reno

## Identificação
- Cliente: Layane Souza
- client_id: 10973
- Broker: Reno (`broker_id=35`)
- Status operacional no FamaChat: `Não Respondeu`
- Fluxo ativo: `repescagem`

## Contexto comercial curado
- Origem operacional: SLA Cascata.
- Empreendimento de interesse identificado nas notas do FamaChat: **Union Vereda**.
- Região/bairro citado: **Jaraguá**.
- Não há resposta real registrada da cliente após os contatos iniciais.
- Ângulo comercial principal usado: **imóvel específico** com apoio consultivo para organizar a busca e validar se região/perfil encaixam no momento da cliente.

## Histórico de repescagem

### 2026-04-29 09:49 -03:00 — Step 1 enviado
- Fluxo: `repescagem`
- Step enviado: 1
- Intenção do step: novo motivo para responder, sem repetir primeiro contato.
- Context angle: imóvel específico / Union Vereda no Jaraguá.
- Canal: WhatsApp
- Registro CRM: realizado via tool específica `mark_reno_followup_sent`.

Mensagem enviada:

```text
Oi, Layane! Tudo bem? 🏡

Sobre o Union Vereda, no Jaraguá, às vezes vale entender primeiro se a região e o perfil do imóvel encaixam no seu momento antes de ficar olhando opções soltas.

Posso te ajudar a organizar esse caminho de forma **simples e sem pressão**.

Você quer que eu te diga por onde faria mais sentido começar essa análise?
```

## Próximo passo
- Próximo `next_run_at`: `2026-04-30T12:00:00-03:00`.
- Se a cliente responder antes disso, a repescagem deve parar e o atendimento deve seguir fora deste fluxo.
- Se não responder até o próximo horário elegível, continuar com Step 2 da régua de repescagem, mantendo o status `Não Respondeu` até resposta real.
