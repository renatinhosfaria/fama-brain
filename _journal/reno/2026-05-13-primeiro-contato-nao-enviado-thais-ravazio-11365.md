---
schema_version: 1
type: interaction
status: active
created: '2026-05-13'
updated: '2026-05-13'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - falha-whatsapp
  - famachat-created
title: Primeiro contato não enviado — Thais Ravazio (11365)
event_date: '2026-05-13'
occurred_at: '2026-05-13T20:49:51-03:00'
channel: whatsapp
participants:
  - Thais Ravazio
  - Reno
mentions_entity:
  - Thais Ravazio
  - Union Vereda
  - Reno
related:
  - 'cliente:11365'
  - 'empreendimento:161'
confidence: 1
external_ids:
  client_id: '11365'
  event_id: evt_3533
  idempotency_key: '3533_1778715906003'
  crm_note_id: '17700'
  property_id: '161'
---
## Resumo
Primeiro contato do Reno para a cliente Thais Ravazio (client_id 11365) não foi enviado pelo WhatsApp.

## Contexto validado
- Evento: cliente.created / famachat-created.
- Broker no CRM: Reno (broker_id 35).
- Status CRM no momento da validação: Sem Atendimento.
- Interesse validado: Union Vereda, Jaraguá.

## Ação tomada
Foi preparada uma abertura curta e contextual. As tentativas de envio pelo WhatsApp com o número disponível, incluindo variação com e sem o nono dígito, retornaram destinatário não disponível no WhatsApp.

## Efeitos operacionais
- WhatsApp: não enviado.
- CRM: nota operacional registrada (nota 17700).
- Status: preservado em Sem Atendimento.
- Repescagem: não inicializada.

## Próximo passo
Aguardar correção/validação de contato antes de novo primeiro contato Reno.
