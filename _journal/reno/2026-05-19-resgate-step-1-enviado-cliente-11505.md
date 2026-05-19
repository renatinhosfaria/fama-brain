---
schema_version: 1
type: interaction
status: active
created: '2026-05-19'
updated: '2026-05-19'
source: agent-generated
author_agent: reno
tags:
  - reno
  - resgate
  - whatsapp
  - follow-up
  - place-arbi
  - financiamento
title: Resgate step 1 enviado — cliente 11505
event_date: '2026-05-19'
occurred_at: '2026-05-19T23:40:22.950000Z'
channel: whatsapp
participants:
  - cliente 11505
  - Reno
mentions_entity:
  - cliente 11505
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  bucket: place_arbi_financing_visit_invite
  chat_id: 553497709259@s.whatsapp.net
  client_id: '11505'
  crm_note_id: '18670'
  flow: resgate
  last_client_reply: facilidade no financiamento
  message_id: 3EB034F4345CE04773C0E9
  name_handling: neutral_no_name_due_suspicious_cadastral_name
  next_run_at: '2026-05-20T01:10:22.950000Z'
  sent_at: '2026-05-19T23:40:22.950000Z'
  source_outbound_at: '2026-05-19T19:59:55.304096-03:00'
  source_outbound_type: qualification_visit_invite_financing_priority
  step: '1'
  validated_jid: 553497709259@s.whatsapp.net
  whatsapp_jid: 553497709259@s.whatsapp.net
---
## Resumo
Envio validado de Resgate step 1 para a cliente do client_id 11505, com foco em financiamento do Place+Arbi. O nome cadastral está com formatação suspeita, então a mensagem foi enviada de forma neutra, sem usar o nome.

## Mensagem enviada
"Oi, tudo bem? Aqui é o Reno, da Fama. Como o financiamento é prioridade, vale a pena você passar aqui rapidinho pra eu te mostrar com calma. Quer que eu veja um horário pra você?"

## Ação tomada
Mensagem enviada via WhatsApp e persistida no CRM. Bucket: place_arbi_financing_visit_invite.

## Evidência operacional
- status CRM: Em Atendimento
- broker_id: 35
- step: 1
- last_sent_at: 2026-05-19T23:40:22.950000Z
- next_run_at: 2026-05-20T01:10:22.950000Z
- CRM note: 18670
- message_id: 3EB034F4345CE04773C0E9
- WhatsApp validado: 553497709259@s.whatsapp.net
- source_outbound_at: 2026-05-19T19:59:55.304096-03:00
- source_outbound_type: qualification_visit_invite_financing_priority
- last_client_reply: facilidade no financiamento

## Próximo passo
Aguardar resposta do cliente e, se houver retorno, seguir a qualificação e o convite para visita presencial.

[[reno-hub]]
