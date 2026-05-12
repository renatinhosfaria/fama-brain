---
schema_version: 1
type: journal
status: active
created: '2026-05-12'
updated: '2026-05-12'
source: agent-generated
author_agent: reno
tags:
  - reno
  - webhook
  - primeiro-contato
  - ignorado
  - broker-fora-escopo
title: Webhook cliente.created ignorado — cliente 11334 Geisy Souza
event_date: '2026-05-12'
---
## Resumo
Evento `cliente.created` recebido pela rota `famachat-created` para o cliente 11334. O payload foi tratado apenas como sinal e o CRM/FamaChat foi validado antes de qualquer envio.

## Decisão operacional
Ignorado: o cliente existe no CRM, mas o `broker_id` real validado é 14. O escopo operacional do Reno exige `broker_id=35`.

## Evidência operacional
- CRM/FamaChat consultado via MCP `mcp-postgres` por fallback HTTP JSON-RPC autorizado, após indisponibilidade do wrapper integrado.
- Cliente 11334 validado com status `Sem Atendimento`, fonte `SLA Cascata`, `broker_id=14` e `meta_data` vazio.
- Nota CRM registrada: id 17616.

## Efeitos
- WhatsApp: nenhum envio realizado.
- CRM: nota objetiva adicionada; status e `meta_data` preservados.
- Repescagem: não inicializada, pois o caso está fora do escopo Reno.

## Próximo passo
Sem ação operacional do Reno neste cliente enquanto o CRM não indicar `broker_id=35`.
