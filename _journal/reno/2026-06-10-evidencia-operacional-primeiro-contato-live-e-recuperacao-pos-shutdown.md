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
  - fama
  - primeiro-contato
  - webhook
  - operacional
  - live
title: Evidência operacional — primeiro contato live e recuperação pós-shutdown
event_date: '2026-06-10'
channel: ops
participants:
  - Reno
  - Renato Faria
mentions_entity:
  - '[[reno-hub]]'
related:
  - 'cliente:11669'
  - 'webhook:famachat-created'
  - 'reno_first_contacts:60'
confidence: 0.96
external_ids:
  webhook_event_id: '3837'
  delivery_id: '1781111102662'
  first_contact_id: '60'
  provider_message_id: 3EB0F1F5E14AC0FE8B61F0
---
[[reno-hub]] Evidência operacional do fluxo `famachat-created` em live: rota validada com `reno_processing_mode=live`, `deliver=log`, hash do prompt `e36537e39278f5f6d8063a7427963b8ce6dbd6a9d66e51c710512cbeb343397d`; serviço `hermes-gateway-reno.service` ativo e running; health webhook `status=ok`; health WhatsApp bridge `status=connected`, fila 0. O evento `cliente.created` 3837 / delivery 1781111102662 do cliente 11669 (Letícia Santos Oliveira, Union Vista) foi aceito durante janela de shutdown do gateway; após verificação de ausência de ledger, foi recuperado de forma controlada: ingresso live registrado (`reno_first_contacts.id=60`), envio WhatsApp validado (`provider_message_id=3EB0F1F5E14AC0FE8B61F0`, `whatsapp_validated=true`), CRM movido para `Não Respondeu`, repescagem inicializada. Canary de duplicidade com a mesma idempotency key retornou `suppressed_duplicate` e `send_allowed=false`. Contagem final verificada: 0 clientes broker_id=35 em `Sem Atendimento`.
