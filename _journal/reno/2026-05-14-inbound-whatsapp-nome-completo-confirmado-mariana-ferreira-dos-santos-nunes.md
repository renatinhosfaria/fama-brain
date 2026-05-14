---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - reno
  - whatsapp
  - inbound
  - atendimento
  - nome-confirmado
title: 'Inbound WhatsApp: nome completo confirmado — Mariana Ferreira dos Santos Nunes'
event_date: '2026-05-14'
channel: whatsapp
participants:
  - Mariana Ferreira dos Santos Nunes
  - '[[reno]]'
mentions_entity:
  - Mariana Ferreira dos Santos Nunes
  - '[[reno]]'
related:
  - '[[reno-hub]]'
confidence: 1
external_ids:
  client_id: '11377'
  crm_note_id: '17787'
  whatsapp_message_id: 3A8E62A68A5CCED9B471
  migration: wikilinks-2026-05-14
  original_path: >-
    _journal/reno/2026-05-14-inbound-whatsapp-nome-completo-confirmado-mariana-ferreira-dos-santos-nunes.md
  original_sha256: ce9ff19cf00cb873dcd3e075483dc4e86564e5506290cd5a98d94fdc26d7eb90
---
## Resumo
Inbound WhatsApp processado pela rotina silenciosa do Reno para cliente validada no CRM (client_id 11377, broker_id 35). A cliente informou o nome completo: Mariana Ferreira dos Santos Nunes.

## Ação tomada
- CRM validado antes de qualquer persistência.
- `full_name` atualizado de "Mariana Santos" para "Mariana Ferreira dos Santos Nunes".
- Status mantido em `Em Atendimento`, sem regressão.
- Repescagem já estava interrompida com `stopped_reason=client_replied`; resgate ausente.
- Nenhuma mensagem foi enviada ao cliente.

## Evidência operacional
- Nota CRM registrada: 17787.
- Inbound WhatsApp: message_id 3A8E62A68A5CCED9B471.
- Read-back do CRM confirmou nome atualizado, status `Em Atendimento` e broker_id 35.

## Próximo passo
Continuar atendimento comercial pelo runtime cliente-facing, usando o nome confirmado e mantendo uma pergunta por vez.

## Links relacionados
- [[reno]]
- [[reno-hub]]
