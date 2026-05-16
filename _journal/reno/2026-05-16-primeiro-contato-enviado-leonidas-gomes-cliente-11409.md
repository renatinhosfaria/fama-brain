---
schema_version: 1
type: interaction
status: active
created: '2026-05-16'
updated: '2026-05-16'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - whatsapp
  - cliente-created
  - first-contact
title: Primeiro contato enviado — Leonidas Gomes (cliente 11409)
event_date: '2026-05-16'
occurred_at: '2026-05-16T12:06:27.862-03:00'
channel: whatsapp
participants:
  - Leonidas Gomes
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11409'
  event_id: evt_3577
  idempotency_key: '3577_1778943987862'
  message_id: 3EB07C3EE3807B4F495B36
  crm_note_id: '18001'
  property_id: '161'
---
## Resumo
Primeiro contato do Reno enviado com sucesso para Leonidas Gomes, cliente 11409, atribuído ao broker_id 35.

## Ação tomada
Mensagem WhatsApp enviada para o JID validado 553498789743@s.whatsapp.net, contextualizando o interesse no empreendimento Union Vereda, no Jaraguá, região Oeste.

## Evidência operacional
- CRM/FamaChat confirmou cliente existente, status inicial Sem Atendimento e broker_id 35.
- WhatsApp retornou envio validado com validation_method=onWhatsApp, mirrored=true e message_id 3EB07C3EE3807B4F495B36.
- Status atualizado condicionalmente para Não Respondeu.
- meta_data.reno_followup.repescagem inicializada com step 0 e próximo follow-up em 2026-05-16 19:10 BRT.
- Nota CRM registrada: id 18001.

## Próximo passo
Aguardar resposta do cliente. Se não houver resposta, a Repescagem fica preparada para a janela oficial do fluxo.

## Links relacionados
[[reno-hub]]
