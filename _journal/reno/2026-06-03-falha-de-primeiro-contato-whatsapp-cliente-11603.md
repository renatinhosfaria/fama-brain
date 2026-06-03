---
schema_version: 1
type: interaction
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - webhook
  - whatsapp-failure
title: Falha de primeiro contato WhatsApp — cliente 11603
event_date: '2026-06-03'
occurred_at: '2026-06-03T10:36:51.812Z'
channel: webhook/famachat-created
participants:
  - reno
confidence: 1
external_ids:
  client_id: '11603'
  event_id: evt_3771
  idempotency_key: '3771_1780483011812'
---
Relacionado a [[reno-hub]].

Primeiro contato do Reno para o cliente 11603 não foi enviado.

Contexto validado no CRM/FamaChat: cliente existente, broker_id=35, status `Sem Atendimento`, origem Facebook Ads, interesse no empreendimento Union Vereda (Jaraguá, Oeste).

Decisão operacional: preservar status, não inicializar Repescagem e registrar falha objetiva no CRM.

Motivo: caminho/ferramenta de envio WhatsApp não estava disponível nesta execução; nenhuma mensagem foi enviada.

Idempotência: event_id `evt_3771`; idempotency_key `3771_1780483011812`.

Próximo passo: reprocessar somente de forma idempotente quando houver caminho WhatsApp disponível e após nova checagem do CRM/notas para evitar duplicidade.
