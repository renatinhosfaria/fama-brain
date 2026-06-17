---
schema_version: 1
type: decision
status: active
created: '2026-06-17'
updated: '2026-06-17'
source: human-curated
tags:
  - reno
  - whatsapp
  - evolution-go
  - governance
  - transport-cutover
author_agent: reno
title: Reno WhatsApp transport cutover to Evolution Go
decided_by:
  - Renato Faria
supersedes: []
superseded_by: []
mentions_entity:
  - Reno
  - Evolution Go
  - WhatsApp
implements: []
related:
  - '[[reno-hub]]'
---
# Reno WhatsApp transport cutover to Evolution Go

## Rationale

Renato definiu que o Reno não deve mais usar a ferramenta nativa de WhatsApp do Hermes para receber/enviar mensagens, áudio, foto ou vídeo. O transporte operacional canônico passa a ser Evolution Go configurado. Caminhos Hermes nativo/Baileys/bridge local devem ser tratados como legado/diagnóstico e não como fallback de produção sem autorização explícita.
