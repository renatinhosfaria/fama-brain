---
schema_version: 1
type: interaction
status: active
created: '2026-05-29'
updated: '2026-05-29'
source: agent-generated
author_agent: reno
tags:
  - interaction
  - atendimento
  - whatsapp
  - agendamento
  - remarcacao
title: >-
  Inbound WhatsApp — Washington Cardoso pediu horários para remarcação na
  segunda
event_date: '2026-05-29'
channel: whatsapp
participants:
  - Washington Cardoso
  - reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  crm_client_id: '11583'
  broker_id: '35'
  whatsapp_message_id: 3A066C11D74598B748CE
  session_id: 20260529_134206_316198d3
  appointment_id: '258'
---
## Resumo
Relacionado a [[reno-hub]]. Cliente Washington Cardoso (client_id=11583, broker_id=35) enviou áudio pelo WhatsApp após remarcação da visita, informando que na segunda-feira estará trabalhando e pedindo para verificar horários disponíveis, com preferência aproximada por meio-dia, 14h ou final do dia.

## Evidência operacional
CRM/FamaChat validado: cliente existente, broker_id=35, status atual Agendamento. Appointment anterior id=258 já consta como Cancelado. Não havia branches ativas de Repescagem ou Resgate para interromper. Status preservado por já estar em etapa avançada.

## Próximo passo
Atendimento cliente-facing deve oferecer uma janela objetiva de segunda-feira e criar/validar novo appointment apenas após aceite claro do cliente.
