---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp
  - inbound
  - ruido-sistemico
  - auditoria
title: Ruído sistêmico em inbound WhatsApp de Thiago Tesch tratado sem envio
event_date: '2026-05-14'
channel: whatsapp
participants:
  - Thiago Tesch
  - Reno
mentions_entity:
  - Thiago Tesch
  - reno
related:
  - reno-hub
  - >-
    _journal/reno/2026-05-14-thiago-tesch-pediu-cancelamento-da-visita-de-15-05.md
confidence: 1
external_ids:
  appointment_id: '244'
  broker_id: '35'
  client_id: '11182'
  crm_note_ids: '17790,17791'
  message_id: ACDE9C4636365B71024E2EC0D2DC7FF4
---
Relacionado: [[reno-hub]].

CRM/FamaChat validado: cliente Thiago Tesch, client_id 11182, broker_id 35. A rotina silenciosa recebeu um inbound cujo conteúdo era ruído operacional/sistêmico de sessão/skill, sem intenção comercial útil do cliente. Nenhuma mensagem foi enviada ao cliente e nenhum status foi alterado por esta rotina.

Persistência CRM: registrada nota objetiva do inbound sistêmico (nota 17790) e, após revalidação do CRM, registrada correção operacional (nota 17791) porque o appointment_id 244 já estava Cancelado e a branch reno_followup.agendamento já constava enabled=false, stopped_reason=client_cancelled, next_run_at=null. Repescagem permanece interrompida com stopped_reason=client_replied; não havia Resgate ativo.

Próximo passo: manter condução comercial do cancelamento/remarcação pelo atendimento cliente-facing, sem usar o conteúdo sistêmico como fala real do cliente.
