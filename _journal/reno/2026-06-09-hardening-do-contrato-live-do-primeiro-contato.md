---
schema_version: 1
type: interaction
status: active
created: '2026-06-09'
updated: '2026-06-09'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - famachat-created
  - hardening
  - dry-run
  - whatsapp
title: Hardening do contrato live do primeiro contato
event_date: '2026-06-09'
channel: telegram
participants:
  - Renato Faria
  - Reno
related:
  - reno-hub
  - famachat-created
  - reno_first_contacts
  - reno_events
  - sistema_webhook_events
confidence: 0.94
---
Relacionado a [[reno-hub]].

Foram aplicadas correções seguras no contrato operacional do primeiro contato `famachat-created` sem habilitar live global. Alterações principais: resolução/backfill de `source_webhook_event_id` a partir de `delivery_id`; atualização de `reno_record_first_contact_ingress` para preencher a correlação quando possível; criação de funções canônicas `reno_claim_first_contact_for_send`, `reno_mark_first_contact_sent` e `reno_mark_first_contact_failed`; validação de que `dry_run` continua bloqueando envio; simulação transacional com rollback confirmou que o caminho live consegue marcar envio, status `Sem Atendimento -> Não Respondeu`, nota e `meta_data.reno_followup.repescagem`, restaurando o CRM ao final. O gateway permanece em `reno_processing_mode=dry_run`; WhatsApp/bridge respondeu conectado e envio controlado para Renato retornou `whatsapp_validated=true`.
