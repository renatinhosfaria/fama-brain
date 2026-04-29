---
broker_id: 35
client_id: 10953
created: '2026-04-29'
entity_name: Vitória Fernandes
entity_type: client
flow: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - follow-up
  - nao-respondeu
type: entity-profile
updated: '2026-04-29'
---
# Vitória Fernandes — Repescagem Reno

## Identificação
- Cliente: Vitória Fernandes
- Client ID: 10953
- Broker: Reno (`broker_id=35`)
- Status operacional no envio: Não Respondeu
- Origem: Facebook Ads / lead automático

## Contexto comercial curado
- Interesse associado ao empreendimento **Place+Arbi**, no bairro Shopping Park, em Uberlândia.
- Empreendimento em lançamento, com opções de apartamento no contexto do CRM.
- Primeira abordagem anterior mencionou o Place+Arbi e a região do Shopping Park, mas não houve resposta real registrada.

## Diagnóstico da repescagem
- Fluxo: repescagem
- Step enviado: 1
- Intenção do step: criar um novo motivo para resposta, sem repetir o primeiro contato.
- Ângulo comercial usado: imóvel específico + clareza de encaixe/viabilidade inicial.
- Argumento: antes de olhar apenas fotos ou valores, entender se o Place+Arbi encaixa no momento da cliente ou se vale comparar opções parecidas.

## Mensagem enviada
Enviada em: 2026-04-29T08:43:56-03:00

```text
Oi, Vitória! Tudo bem? 🏡

Sobre o Place+Arbi, no Shopping Park, acho que o mais importante agora não é só ver foto ou valor: é entender se ele encaixa no seu momento, principalmente por ser um lançamento com opções diferentes de planta.

Posso te ajudar a fazer essa primeira leitura de forma **simples e sem pressão**.

Você quer que eu veja se esse imóvel faz sentido para você ou se vale comparar com opções parecidas?
```

## Próximo passo operacional
- Próximo `next_run_at`: 2026-04-30T12:00:00-03:00
- Próximo step se não houver resposta: step 2 — evitar caminho errado, reforçando filtro real de imóvel/região/viabilidade.
- Condição de parada: se a cliente responder, encerrar repescagem e tratar como atendimento real; se chegar ao step 5 sem resposta, encerrar por `max_steps`.

## Registro CRM
- Envio registrado via ferramenta específica `mark_reno_followup_sent`.
- Nota operacional criada no CRM pela ferramenta do Reno.
- Estado `clientes.meta_data.reno_followup.repescagem` atualizado pela ferramenta específica, sem manipulação manual de `meta_data`.
