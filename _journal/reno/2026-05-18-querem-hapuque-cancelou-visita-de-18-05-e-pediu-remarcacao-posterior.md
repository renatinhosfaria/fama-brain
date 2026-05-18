---
schema_version: 1
type: journal
status: active
created: '2026-05-18'
updated: '2026-05-18'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp-inbound
  - agendamento
  - cancelamento
  - remarcacao-pendente
title: Quérem Hapuque cancelou visita de 18/05 e pediu remarcação posterior
event_date: '2026-05-18'
occurred_at: '2026-05-18T10:30:05-03:00'
channel: whatsapp
mentions_entity:
  - '[[reno-hub]]'
  - 'client:11414'
  - 'appointment:253'
  - 'empreendimento:22'
  - Union Vista
related:
  - '[[reno-hub]]'
  - CRM clientes.id=11414
  - CRM clientes_agendamentos.id=253
confidence: 1
---
[[reno-hub]]

Cliente Quérem Hapuque (client_id=11414, broker_id=35) enviou áudio em 18/05/2026 informando que não conseguirá comparecer à visita presencial marcada para 17h30, pois terá reunião às 17h com provável extensão pela noite.

CRM validado: appointment_id=253, Union Vista, estava em Agendado e foi atualizado para Cancelado; lembretes pendentes do appointment foram cancelados. meta_data.reno_followup.agendamento ficou enabled=false com stopped_reason=cliente_cancelou_visita_remarcacao_pendente.

Próximo passo comercial: responder sem culpa, acolher a agenda dela e tentar já deixar uma nova janela encaminhada (amanhã ou quarta), sem pressionar.
