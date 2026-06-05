---
schema_version: 1
type: journal
status: active
created: '2026-06-05'
updated: '2026-06-05'
source: agent-generated
author_agent: reno
tags:
  - reno
  - resgate
  - whatsapp
  - failure
  - crm
title: Resgate encerrado por validação ausente no WhatsApp
event_date: '2026-06-05'
occurred_at: '2026-06-05T14:39:47.138Z'
channel: cron
confidence: 0.95
---
[[reno-hub]] Cliente 11597 (Ale Villar BJJ): fluxo de Resgate estava no step 1 e foi encerrado como falha terminal porque o envio via WhatsApp retornou success:true, mas sem validated=true, então a mensagem não pôde ser confirmada pelo contrato operacional. CRM registrou a nota 19472 e o branch foi desabilitado com stopped_reason=bridge_success_without_validation.
