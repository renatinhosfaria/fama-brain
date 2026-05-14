---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - webhook
  - primeiro-contato
  - ignorado
  - client-11339
  - reno
title: Webhook ignorado — cliente 11339 Joaneci Pereira dos Santos
event_date: '2026-05-12'
channel: internal
participants:
  - '[[reno]]'
mentions_entity:
  - '[[reno]]'
related:
  - '[[reno-hub]]'
external_ids:
  migration: wikilinks-2026-05-14
  original_path: >-
    _journal/reno/2026-05-12-webhook-ignorado-cliente-11339-joaneci-pereira-dos-santos.md
  original_sha256: 6216dced9f8512d4776beb55c280f341f81675a29966e6380674d8667fc5b2cf
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11339. O CRM foi validado via MCP/Postgres e indicou que o cliente está atribuído ao `broker_id=14`, fora do escopo operacional do Reno (`broker_id=35`).

## Ação tomada
- Nenhum WhatsApp foi enviado.
- Status CRM preservado em `Sem Atendimento`.
- Nota objetiva registrada no CRM pelo Reno informando o motivo do ignorado.

## Evidência operacional
- Cliente validado no CRM: `client_id=11339`.
- Broker real no CRM: `broker_id=14` — Michel Henrique Teixeira da Silva.
- Nota CRM registrada: `clientes_notas.id=17629`.
- Evento de entrada: `evt_3507` / `idempotencyKey=3507_1778616203729`.

## Próximo passo
Sem ação do Reno neste atendimento enquanto o cliente permanecer fora do escopo `broker_id=35`.

## Links relacionados
- [[reno]]
- [[reno-hub]]
