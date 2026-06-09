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
title: Canary primeiro contato enviado para Frankson Medeiros
event_date: '2026-06-09'
channel: telegram/whatsapp
participants:
  - Renato Faria
  - Reno
  - Frankson Medeiros
mentions_entity:
  - frankson-medeiros
  - reno-hub
related:
  - reno-hub
  - frankson-medeiros
  - famachat-created
  - reno_first_contacts
confidence: 0.98
external_ids:
  client_id: '11661'
  first_contact_id: '23'
  provider_message_id: 3EB0BD9C36CF4B85ED55A2
  crm_note_id: '19512'
  source_webhook_event_id: '3829'
---
Relacionado a [[reno-hub]] e [[frankson-medeiros]].

Canary controlado do primeiro contato `famachat-created` foi executado para cliente 11661 (Frankson Medeiros), dentro do escopo Reno (`broker_id=35`).

Evidência operacional:
- Cliente CRM: 11661
- Empreendimento: Union Vereda (id 161), Jaraguá
- Ledger: `reno_first_contacts.id=23`, `processing_mode=live`, `status=sent`, `outcome_code=sent`
- Evento origem: `source_webhook_event_id=3829`, `delivery_id=1781025418938`
- WhatsApp: `whatsapp_validated=true`, `validation_method=onWhatsApp`, `validated_jid=553498256131@s.whatsapp.net`, `provider_message_id=3EB0BD9C36CF4B85ED55A2`
- CRM: status alterado de `Sem Atendimento` para `Não Respondeu`
- Nota CRM criada: `clientes_id_anotacoes.id=19512`
- Repescagem inicializada: `enabled=true`, `step=0`, `next_run_at=2026-06-10T19:10:00-03:00`, `first_contact_canary=true`

Mensagem enviada ao cliente:
"Oi, Frankson, tudo bem? Aqui é o Reno, da Fama Negócios Imobiliários. Vi seu interesse no Union Vereda, no Jaraguá. Pra eu te ajudar do jeito certo: você está buscando mais pra morar ou investir?"

A rota global continuou segura em `deliver=log` e `reno_processing_mode=dry_run`; não houve ativação live global.
