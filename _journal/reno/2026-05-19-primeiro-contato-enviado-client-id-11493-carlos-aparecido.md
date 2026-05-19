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
  - primeiro-contato
  - whatsapp
  - famachat
  - cliente-created
title: Primeiro contato enviado — client_id 11493 Carlos Aparecido
event_date: '2026-05-19'
occurred_at: '2026-05-19T13:05:58-03:00'
channel: whatsapp
participants:
  - Reno
  - Carlos Aparecido Aparecido Fula
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11493'
  crm_note_id: '18573'
  delivery_event_id: evt_3661
  idempotency_key: '3661_1779206562749'
  message_id: 3EB079A2AD779208A858CB
  property_id: '25'
---
## Resumo
Primeiro contato do Reno enviado com sucesso para o cliente Carlos Aparecido Aparecido Fula (client_id 11493), atribuído ao broker Reno (broker_id=35), após validação no CRM/FamaChat.

## Ação tomada
Mensagem curta e contextual enviada pelo WhatsApp sobre o empreendimento Garden Sul, no Jardim Sul, Zona Sul. Versão de abertura registrada: first_contact_opening_v2.

## Evidência operacional
CRM validado antes do envio: cliente existente, status inicial Sem Atendimento, broker_id=35, empreendimento 25 validado como Garden Sul. WhatsApp retornou validação positiva onWhatsApp, message_id 3EB079A2AD779208A858CB e mirror=true. Status atualizado condicionalmente para Não Respondeu. Branch reno_followup.repescagem inicializada com step=0, entry_shift=tarde e next_run_at=2026-05-19T19:10:00-03:00. Nota CRM registrada: 18573.

## Próximo passo
Aguardar resposta do cliente. Se não houver resposta, a Repescagem fica preparada para o próximo follow-up no horário registrado.

## Links relacionados
[[reno-hub]]
