---
schema_version: 1
type: interaction
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: agent-generated
author_agent: reno
tags:
  - reno
  - vault
  - mcp-obsidian
  - semantic-search
  - documentation
title: Atualização operacional — memória semântica ativa no mcp-obsidian
event_date: '2026-06-03'
occurred_at: '2026-06-03T15:56:25Z'
channel: telegram
participants:
  - Renato Faria
  - Reno
mentions_entity:
  - '[[reno-hub]]'
  - '[[reno-vault-operacao]]'
related:
  - '[[reno-hub]]'
  - '[[reno-vault-operacao]]'
confidence: 1
external_ids:
  session_topic: telegram-102
  tooling_change: mcp-obsidian-semantic-search
---
Atualização documental realizada após Renato informar que o `mcp-obsidian` passou a ter memória semântica ativa.

Resumo:
- `semantic_search` passa a ser usado para recuperação por significado e descoberta de contexto curado.
- `search_content` permanece obrigatório para IDs, paths, strings e verificações literais.
- `read_note` continua sendo o passo de validação antes de tratar resultado como evidência.
- `rebuild_semantic_index` deve ser usado quando notas importantes forem criadas/alteradas e a busca semântica parecer desatualizada.

Ações:
- Runbook atualizado: [[reno-vault-operacao]].
- Skills ajustadas: `fama-reno-vault-governance`, `fama-reno-governance`, `obsidian-agent-second-brain-design` e `obsidian`.
- Memória persistente compacta atualizada para lembrar que `semantic_search` está ativo.

Guardrail mantido: CRM/FamaChat continua como fonte operacional da verdade; busca semântica recupera contexto, não substitui evidência operacional.
