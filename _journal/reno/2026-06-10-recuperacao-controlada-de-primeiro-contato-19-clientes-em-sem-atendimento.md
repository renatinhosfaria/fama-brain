---
schema_version: 1
type: interaction
status: active
created: '2026-06-10'
updated: '2026-06-10'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - whatsapp
  - crm
  - recovery
title: Recuperação controlada de primeiro contato — 19 clientes em Sem Atendimento
event_date: '2026-06-10'
channel: telegram
participants:
  - Renato Faria
  - Reno
mentions_entity:
  - FamaChat
  - Reno
  - WhatsApp
related:
  - first_contact_opening_v2
  - manual_recovery_old_sem_atendimento
confidence: 1
---
Relacionado a [[reno-hub]].

Em 2026-06-10, após autorização do Renato, foi executada recuperação controlada dos 19 clientes broker_id=35 que estavam em Sem Atendimento sem primeiro contato efetivo.

Resultado validado no CRM/FamaChat:
- 15 envios de primeiro contato via WhatsApp concluídos com provider_message_id.
- 15 clientes alterados de Sem Atendimento para Não Respondeu.
- 15 branches meta_data.reno_followup.repescagem inicializados com step=0 e next_run_at=2026-06-10T19:10:00-03:00.
- 4 clientes permaneceram em Sem Atendimento por not_on_whatsapp após tentativa com variações permitidas.

Sucessos: 11615, 11617, 11620, 11621, 11628, 11630, 11631, 11636, 11640, 11644, 11649, 11650, 11651, 11652, 11653.
Falhas terminais WhatsApp: 11606 Matheus Souza, 11613 Geovanna de Paula Barbosa, 11616 Kleber Filho, 11619 Pâmala Vitória.

Observação operacional: o endpoint direto do bridge enviou as mensagens, mas retornou warning de falha no mirror para sessão Hermes; não houve reenvio. A persistência operacional foi feita no CRM: reno_first_contacts, reno_events, notas do cliente, status e meta_data.
