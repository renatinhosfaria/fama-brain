---
schema_version: 1
type: interaction
status: active
created: '2026-06-07'
updated: '2026-06-07'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - whatsapp
  - failed
title: 'Repescagem falhou: Wellington Souza (cliente 11609)'
event_date: '2026-06-07'
occurred_at: '2026-06-07T19:20:55-03:00'
channel: whatsapp
participants:
  - Reno
mentions_entity:
  - Wellington Souza
related:
  - clientes/11609
  - repescagem
confidence: 0.98
---
[[reno-hub]]

Repescagem do cliente 11609 (Wellington Souza) terminou sem envio confirmado de WhatsApp nesta execução.

Tentativa operacional do próximo envio:
- o alvo do CRM e a variação com nono dígito foram testados no bridge
- nenhuma entrega foi validada
- o CRM registrou nota terminal de falha 19494

Efeito persistido no CRM:
- branch encerrada com `stopped_reason=delivery_failed`
- `step=3`
- `enabled=false`
- status comercial preservado em `Não Respondeu`

Observação:
- nenhum outro cliente foi processado nesta execução
