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
  - canary
  - whatsapp
  - famachat-created
title: Canary pequeno primeiro contato enviado para 4 leads elegíveis
event_date: '2026-06-09'
channel: telegram/whatsapp
participants:
  - Renato Faria
  - Reno
  - Katia Martins
  - Lara Naiade Guedes
  - Luana Maria Silva
  - Maria Isabel Petrone
mentions_entity:
  - katia-martins
  - lara-naiade-guedes
  - luana-maria-silva
  - maria-isabel-petrone
  - reno-hub
related:
  - reno-hub
  - katia-martins
  - lara-naiade-guedes
  - luana-maria-silva
  - maria-isabel-petrone
  - famachat-created
  - reno_first_contacts
confidence: 0.98
external_ids:
  batch: small-canary-20260609T204622-0300
  first_contact_ids: '24,25,26,27'
  client_ids: '11660,11659,11618,11608'
  crm_note_ids: '19514,19515,19516,19517'
---
Relacionado a [[reno-hub]], [[katia-martins]], [[lara-naiade-guedes]], [[luana-maria-silva]] e [[maria-isabel-petrone]].

Canary pequeno e controlado do primeiro contato `famachat-created` executado em 2026-06-09 sem ativar live global da rota. A rota permanece com `deliver=log`, `reno_processing_mode=dry_run` e `reno_first_contact=true`.

Clientes processados:
- Katia Martins — CRM 11660 — Place+Arbi / Shopping Park — `reno_first_contacts.id=24` — WhatsApp validado `onWhatsApp` — `provider_message_id=3EB084DB617AC08AF8EB08` — nota CRM `19514` — status final `Não Respondeu`.
- Lara Naiade Guedes — CRM 11659 — Union Vista / Grand Ville — `reno_first_contacts.id=25` — WhatsApp validado `onWhatsApp` — `provider_message_id=3EB080E8A7F0B1BDBE9284` — nota CRM `19515` — status final `Não Respondeu`.
- Luana Maria Silva — CRM 11618 — Union Vista / Grand Ville — `reno_first_contacts.id=26` — WhatsApp validado `onWhatsApp` — `provider_message_id=3EB070BE04653FA3972739` — nota CRM `19516` — status final `Não Respondeu`.
- Maria Isabel Petrone — CRM 11608 — Union Vista / Grand Ville — `reno_first_contacts.id=27` — WhatsApp validado `onWhatsApp` — `provider_message_id=3EB096D0CF806683C90C0C` — nota CRM `19517` — status final `Não Respondeu`.

Em todos os quatro casos: `processing_mode=live`, `status=sent`, `outcome_code=sent`, `attempts=1`, `whatsapp_validated=true`, sem `last_error`; CRM avançou de `Sem Atendimento` para `Não Respondeu`; `meta_data.reno_followup.repescagem` foi inicializada com `enabled=true`, `step=0`, `next_run_at=2026-06-10T19:10:00-03:00`, `stopped_reason=null`, batch `small-canary-20260609T204622-0300`.

Eventos Reno esperados confirmados por cliente: `first_contact.ingress`, `first_contact.sending_claimed` e `first_contact.sent`.

Decisão operacional: canary pequeno passou. Próximo passo recomendado é monitorar respostas e repescagem; antes de live global, rodar mais um ciclo de observação com inbound/status e confirmar se nenhuma duplicidade ou resposta sem transição ocorreu.
