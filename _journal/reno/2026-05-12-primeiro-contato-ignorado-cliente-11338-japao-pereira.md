---
schema_version: 1
type: journal
status: active
created: '2026-05-12'
updated: '2026-05-12'
source: agent-generated
author_agent: reno
tags:
  - primeiro-contato
  - ignorado
  - fora-do-escopo
  - client-11338
title: Primeiro contato ignorado — cliente 11338 Japão Pereira
event_date: '2026-05-12'
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
