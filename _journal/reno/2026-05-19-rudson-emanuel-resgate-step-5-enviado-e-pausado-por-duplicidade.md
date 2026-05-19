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
  - resgate
  - whatsapp
  - duplicate-ownership
  - manual-review
title: Rudson Emanuel — resgate step 5 enviado e pausado por duplicidade
event_date: '2026-05-19'
occurred_at: '2026-05-19T22:08:48Z'
channel: whatsapp
participants:
  - Rudson Emanuel
mentions_entity:
  - '[[reno-hub]]'
related:
  - Rudson Emanuel
confidence: 1
external_ids:
  client_id: '11407'
  message_id: 3EB0B57B6E4BAE7A1E372B
  validated_jid: 182227510030392@lid
  chat_id: 182227510030392@lid
  crm_note_id: '18648'
  crm_sent_note_id: '18647'
---
## Resumo
Resgate step 5 foi enviado para Rudson Emanuel (client_id 11407) via WhatsApp, com mensagem curta para retomar a visita presencial na Fama. Após a persistência no CRM, a revalidação encontrou um segundo cadastro ativo com o mesmo telefone/WhatsApp sob broker_id=24 (cliente 11491, status Não Respondeu), então a branch de Resgate foi pausada para revisão manual.

## Ação tomada
- Envio validado no WhatsApp para o target `whatsapp:Rudson (dm)`.
- CRM foi atualizado com o step 5 enviado e próximo vencimento calculado.
- Em seguida, o Resgate foi interrompido com `stopped_reason=manual_review_duplicate_active_broker`.

## Evidência operacional
- `validated_jid`: `182227510030392@lid`
- `message_id`: `3EB0B57B6E4BAE7A1E372B`
- CRM client_id=11407, status preservado em `Em Atendimento`.
- Duplicidade ativa encontrada em broker_id=24 para o mesmo telefone/WhatsApp.
- Nota de revisão manual registrada no CRM.

## Próximo passo
Revisão humana da ownership duplicada antes de qualquer novo envio de Resgate.

[[reno-hub]]
