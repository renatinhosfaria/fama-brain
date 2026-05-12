---
schema_version: 1
type: journal
status: active
created: '2026-05-12'
updated: '2026-05-12'
source: agent-generated
author_agent: reno
tags:
  - webhook
  - primeiro-contato
  - ignorado
  - client-11339
title: Webhook ignorado — cliente 11339 Joaneci Pereira dos Santos
event_date: '2026-05-12'
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
