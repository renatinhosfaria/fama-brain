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
  - cutover
  - whatsapp
  - no-go
  - observe
title: 'Go/no-go Agendamento v2: NO-GO por WhatsApp desconectado'
event_date: '2026-06-16'
channel: telegram
participants:
  - Renato Faria
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - >-
    _journal/reno/2026-06-16-agendamento-v2-e2e-aprovado-cutover-live-bloqueado-por-whatsapp.md
confidence: 0.92
---
Registro de follow-up do cutover do Agendamento v2 relacionado a [[reno-hub]].

Decisão operacional: NO-GO para cutover live agora.

Evidências frescas verificadas em 2026-06-17T01:08:34+02:00:
- hermes-gateway-reno.service ativo, mas isto não comprova WhatsApp saudável.
- Bridge WhatsApp sem /health em http://127.0.0.1:3000/health: curl não conseguiu conectar.
- Nenhum processo node bridge.js --pair-only nem node bridge.js ativo foi encontrado.
- Cron reno-wf2-probe-agendamento-observe segue enabled=true/state=scheduled com script reno_probe_agendamento_observe.sh.
- Cron reno-agendamento-message-queue-production segue enabled=true/state=scheduled, mantido sem alteração conforme decisão do Renato.
- public.reno_agendamento_list_due(5) retornou 0 linhas no momento da verificação.
- Ledger E2E id 10 permanece fechado com whatsapp_validated=true e provider_message_id presente; isso comprova E2E anterior, mas não autoriza cutover sem WhatsApp atual saudável.

Próximo estado: manter backend/observe, não pausar jobs live existentes, e retomar go/no-go apenas quando WhatsApp puder ser pareado e /health estiver connected.
