---
schema_version: 1
type: interaction
status: active
created: '2026-06-16'
updated: '2026-06-16'
source: agent-generated
author_agent: reno
tags:
  - reno
  - agendamento-v2
  - workflows-v2
  - cutover-pendente
  - whatsapp
title: 'Agendamento v2: cutover deixado pendente por WhatsApp instável'
event_date: '2026-06-16'
channel: telegram
participants:
  - Renato Faria
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.9
external_ids:
  cron_legacy: 100a6e499838
  cron_observe: 5297a8d0f5dc
  ledger_sent: '10'
  client_test: '11698'
---
[[reno-hub]]

Renato autorizou continuar deixando pendente a parte final do Agendamento v2 para conclusão futura.

Estado comprovado antes da pendência:
- E2E da Task 27 executado com envio real validado no ledger `10` (`whatsapp_validated=true`, `provider_message_id` presente).
- Evento `agendamento.sent` e nota CRM criados para o teste interno.
- Cliente de teste respondeu “Confirmado”.
- Cleanup executado: ledgers de teste fechados, visita/reminders de teste cancelados e status/meta restaurados.

Pendência para o futuro:
1. Reestabilizar/reparear o WhatsApp do Reno.
2. Confirmar `/health` do bridge em `connected`.
3. Fazer novo go/no-go do cutover.
4. Se aprovado: pausar legado `100a6e499838`, trocar `5297a8d0f5dc` de observe para live e iniciar validação de 48h.

Motivo de não concluir agora: após restart/interrupção, o gateway ficou ativo, mas o bridge WhatsApp voltou instável/desconectado, com `/health` falhando e logs indicando timeout/403.
