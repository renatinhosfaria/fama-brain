---
schema_version: 1
type: interaction
status: active
created: '2026-05-18'
updated: '2026-05-18'
source: agent-generated
author_agent: reno
tags:
  - reno
  - primeiro-contato
  - whatsapp
  - famachat
  - cliente-11452
title: Primeiro contato enviado — cliente 11452 Terezinha Batista Moura
event_date: '2026-05-18'
occurred_at: '2026-05-18T08:28:56.040Z'
channel: whatsapp
participants:
  - Terezinha Batista Moura
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11452'
  event_id: evt_3620
  idempotency_key: '3620_1779092936040'
  crm_note_id: '18301'
  message_id: 3EB0CA59D9DC5204909A20
  property_id: '25'
---
## Resumo
Primeiro contato do Reno enviado com sucesso via WhatsApp para a cliente Terezinha Batista Moura (client_id 11452), validada no CRM como broker_id=35 e status inicial `Sem Atendimento`.

## Ação tomada
Mensagem enviada: "Olá Terezinha, tudo bem? Aqui é o Reno, da Fama. Estou retornando seu interesse no empreendimento Garden Sul, no Jardim Sul, na Zona Sul. Você está buscando um imóvel nessa região?"

## Evidência operacional
- WhatsApp validado: `validated=true`, método `onWhatsApp`.
- Destino validado: `553499692753@s.whatsapp.net`.
- Message ID técnico: `3EB0CA59D9DC5204909A20`.
- CRM recebeu nota de envio: nota 18301.
- Status atualizado condicionalmente para `Não Respondeu`.
- `meta_data.reno_followup.repescagem` inicializada com `step=0`, `entry_shift=madrugada`, `next_run_at=2026-05-18T19:10:00-03:00`.

## Contexto
Origem informada no CRM: Facebook Ads. Empreendimento validado no CRM: Garden Sul, bairro Jardim Sul, Zona Sul.

## Próximo passo
Aguardar resposta da cliente. Se não houver resposta, a Repescagem poderá seguir a régua oficial no horário previsto.

## Links relacionados
[[reno-hub]]
