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
  - repescagem
  - whatsapp
  - client-11362
  - step-2
title: Repescagem step 2 enviada para Aline de Souza
event_date: '2026-05-16'
occurred_at: '2026-05-16T09:35:16-03:00'
channel: whatsapp
participants:
  - Aline de Souza
  - Reno
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
confidence: 0.97
external_ids:
  client_id: '11362'
  note_id: '17977'
  flow: repescagem
  step: '2'
  whatsapp_jid: 553493421019@s.whatsapp.net
---
## Resumo
Repescagem de Aline de Souza (client_id 11362, broker_id=35, status atual Não Respondeu) avançou para step 2.

## Ação tomada
WhatsApp enviado com sucesso após validação do bridge.
Mensagem enviada: "Aline, só pra eu te orientar sem te mandar opção fora do perfil: você está olhando o Union Vista mais pra morar ou investir?"

## Evidência operacional
- branch repescagem ativa
- step antes do envio: 1
- last_sent_at anterior: 2026-05-14T20:45:42-03:00
- next_run_at persistido para 2026-05-18T14:20:00-03:00
- validação do bridge retornou validated=true e validatedJid coerente

## Próximo passo
Aguardar resposta da cliente; se não houver retorno, step 3 fica previsto para 2026-05-18T14:20:00-03:00.

## Links relacionados
[[reno-hub]]
