---
schema_version: 1
type: interaction
status: active
created: '2026-05-14'
updated: '2026-05-14'
source: agent-generated
author_agent: reno
tags:
  - primeiro-contato
  - ignorado
  - fora-do-escopo
  - client-11338
  - reno
title: Primeiro contato ignorado — cliente 11338 Japão Pereira
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
    _journal/reno/2026-05-12-primeiro-contato-ignorado-cliente-11338-japao-pereira.md
  original_sha256: 66052718206a20cc698f2f45e949c2bbaa953ef81dd837ef9dce23cc213c2668
---
## Resumo
Evento `cliente.created` recebido na rota `famachat-created` para o cliente 11338 (Japão Pereira). O primeiro contato do Reno não foi iniciado porque o CRM/FamaChat foi validado como fonte operacional e o `broker_id` real do cliente é 14, fora do escopo do Reno (`broker_id=35`).

## Ação tomada
- WhatsApp não enviado.
- Status CRM preservado como `Sem Atendimento`.
- `meta_data.reno_followup.repescagem` não inicializada.
- Nota objetiva registrada no CRM sobre a decisão de ignorar o evento.

## Evidência operacional
- Cliente 11338 consultado no CRM via fallback MCP/Postgres JSON-RPC após wrapper integrado estar indisponível.
- Estado validado no CRM: `broker_id=14`, status `Sem Atendimento`, origem `SLA Cascata`.
- Nota CRM registrada: `clientes_notas.id=17630`.

## Próximo passo
Nenhum pelo Reno neste evento. Atendimento permanece fora do escopo operacional do Reno enquanto o cliente estiver atribuído a outro broker no CRM.

## Links relacionados
- [[reno]]
- [[reno-hub]]
