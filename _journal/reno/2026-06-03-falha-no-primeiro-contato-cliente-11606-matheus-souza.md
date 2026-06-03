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
  - primeiro-contato
  - falha-whatsapp
  - famachat-created
title: Falha no primeiro contato — cliente 11606 Matheus Souza
event_date: '2026-06-03'
occurred_at: '2026-06-03T16:04:21.378Z'
channel: webhook/famachat-created
participants:
  - reno
confidence: 1
external_ids:
  client_id: '11606'
  webhook_event_id: evt_3774
  idempotency_key: '3774_1780502661378'
  empreendimento_id: '25'
---
[[reno-hub]]

Evento curado de primeiro contato do Reno.

Cliente 11606 (Matheus Souza) foi validado no CRM como elegível ao Reno (broker_id=35), com origem Facebook Ads e interesse no Garden Sul. A mensagem inicial foi preparada conforme first_contact_opening_v2, mas o envio pelo WhatsApp falhou nas formas tentáveis do contato do CRM, incluindo variação com e sem o 9º dígito. O retorno operacional indicou destinatário não disponível no WhatsApp.

Efeitos operacionais: sem envio validado, status preservado em Sem Atendimento, repescagem não inicializada e nota objetiva registrada no CRM. Próximo passo: se houver novo contato válido ou correção do telefone, reavaliar primeiro contato de forma idempotente.
