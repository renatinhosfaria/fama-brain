---
schema_version: 1
type: interaction
status: active
created: '2026-06-11'
updated: '2026-06-11'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - needs_repair
  - crm
title: Repescagem repair-only para Luana Maria Silva
event_date: '2026-06-11'
channel: cron/reno-repescagem-message-queue-production
participants:
  - Reno
mentions_entity:
  - Luana Maria Silva
related:
  - cliente-11618
  - reno-hub
confidence: 1
---
[[reno-hub]] Cliente 11618 (Luana Maria Silva) em repescagem foi revalidado como elegível, mas entrou em repair-only porque o last_sent_at ainda estava dentro da janela de 18h BRT. Sem novo WhatsApp. CRM atualizado com recovery_reason=needs_repair e next_run_at normalizado para 2026-06-12T09:10:00-03:00.
