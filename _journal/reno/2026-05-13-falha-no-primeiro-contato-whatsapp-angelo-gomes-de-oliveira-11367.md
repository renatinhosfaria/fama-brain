---
schema_version: 1
type: interaction
status: active
created: '2026-05-13'
updated: '2026-05-13'
source: agent-generated
author_agent: reno
tags:
  - reno
  - first-contact
  - whatsapp
  - failure
  - crm
title: Falha no primeiro contato WhatsApp — Angelo Gomes de Oliveira (11367)
event_date: '2026-05-13'
channel: whatsapp
participants:
  - Angelo Gomes de Oliveira
  - Reno
mentions_entity:
  - cliente-11367-angelo-gomes-de-oliveira
  - union-vista
  - reno
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11367'
  event_id: evt_3535
  idempotency_key: '3535_1778722030688'
  crm_note_id: '17702'
  property_id: '22'
---
## Resumo
Evento `cliente.created` da rota `famachat-created` para o cliente 11367. O CRM/FamaChat foi validado como fonte operacional: cliente existente, `broker_id=35`, status `Sem Atendimento`, origem Facebook Ads, interesse no empreendimento Union Vista (Grand Ville).

## Ação tomada
Reno preparou uma mensagem curta e contextual de primeiro contato, mas o WhatsApp não foi enviado porque as tentativas com variação do número brasileiro retornaram destinatário indisponível no WhatsApp (`not_on_whatsapp`).

## Evidência operacional
- Cliente validado no CRM via MCP/Postgres fallback JSON-RPC: `client_id=11367`, `broker_id=35`, status `Sem Atendimento`.
- Empreendimento validado no CRM: Union Vista, bairro Grand Ville.
- Tentativas WhatsApp retornaram destinatário indisponível no WhatsApp.
- Nota CRM registrada: `clientes_notas.id=17702`.

## Efeitos operacionais
- WhatsApp: não enviado.
- CRM: nota objetiva registrada.
- Status: preservado em `Sem Atendimento`.
- `meta_data.reno_followup.repescagem`: não inicializada.

## Próximo passo
Não executar repescagem automática para este cliente enquanto não houver contato WhatsApp válido ou nova orientação operacional.
