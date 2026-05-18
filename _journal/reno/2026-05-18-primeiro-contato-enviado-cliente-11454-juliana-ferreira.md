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
  - garden-sul
title: Primeiro contato enviado — cliente 11454 Juliana Ferreira
event_date: '2026-05-18'
occurred_at: '2026-05-18T07:55:48-03:00'
channel: whatsapp
participants:
  - Juliana Ferreira
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11454'
  event_id: evt_3622
  idempotency_key: '3622_1779101614452'
  message_id: 3EB0C07A738AFBE0613C48
  crm_note_id: '18303'
  property_id: '25'
---
## Resumo
Primeiro contato do Reno enviado via WhatsApp para Juliana Ferreira, cliente 11454, após validação no CRM/FamaChat: broker_id=35, status inicial Sem Atendimento e interesse no empreendimento Garden Sul.

## Ação tomada
Mensagem curta e contextual enviada para o JID validado 553497785392@s.whatsapp.net usando a versão `first_contact_opening_v2`.

Mensagem enviada:
> Olá Juliana, tudo bem? Aqui é o Reno, da Fama. Estou retornando seu interesse no empreendimento Garden Sul, no Jardim Sul, na Zona Sul.
>
> Você está buscando um imóvel nessa região?

## Evidência operacional
- WhatsApp retornou sucesso validado, `validationMethod=onWhatsApp`, `mirrored=true` e message_id `3EB0C07A738AFBE0613C48`.
- Nota CRM criada: 18303.
- Status CRM atualizado de `Sem Atendimento` para `Não Respondeu`.
- `meta_data.reno_followup.repescagem` inicializada em step 0 com próximo envio previsto para 2026-05-18 19:10 BRT, conforme matriz oficial de Repescagem.

## Próximo passo
Aguardar resposta da cliente. Se permanecer sem resposta, a Repescagem deve seguir a branch ativa no CRM.

## Links relacionados
- [[reno-hub]]
