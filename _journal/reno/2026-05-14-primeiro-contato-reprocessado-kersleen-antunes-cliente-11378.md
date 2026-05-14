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
  - primeiro-contato
  - whatsapp
  - reprocessamento
  - cliente-11378
title: Primeiro contato reprocessado — Kersleen Antunes — cliente 11378
event_date: '2026-05-14'
occurred_at: '2026-05-14T14:44:04-03:00'
channel: whatsapp
participants:
  - Reno
  - Kersleen Antunes
mentions_entity:
  - reno-hub
related:
  - reno-hub
confidence: 1
external_ids:
  client_id: '11378'
  crm_note_id: '17830'
  whatsapp_message_id_1: 3EB00054CB4CE7DD76F549
  whatsapp_message_id_2: 3EB011144D2360BD7BD5FF
  template_version: first_contact_opening_v1
  variant: C
---
## Resumo
Primeiro contato do Reno reprocessado manualmente para Kersleen Antunes (client_id 11378), a pedido do Renato, após falha anterior de validação CRM por timeout do mcp-postgres.

## Ação tomada
- Cliente validada no CRM: broker_id=35, status inicial Sem Atendimento, telefone/JID WhatsApp tentável.
- Empreendimento validado: Union Vista, bairro Grand Ville.
- Mensagem de primeiro contato enviada em duas partes pelo WhatsApp.
- Variante aplicada: C, template first_contact_opening_v1.
- Status atualizado condicionalmente para Não Respondeu.
- meta_data.reno_followup.repescagem inicializada com step=0, enabled=true, entry_shift=tarde e next_run_at=2026-05-14T19:10:00-03:00.
- Nota CRM criada: 17830.

## Evidência operacional
- WhatsApp validado por onWhatsApp para o JID do cliente.
- Envio espelhado no Hermes: mirrored=true.
- Message IDs: 3EB00054CB4CE7DD76F549 e 3EB011144D2360BD7BD5FF.
- Read-back CRM confirmou status Não Respondeu e branch repescagem ativa.

## Mensagem enviada
Mensagem 1: Oi, Kersleen, tudo bem? Aqui é o Reno, da Fama. Vi que você estava vendo o Union Vista, no Grand Ville.

Mensagem 2: Você já vinha procurando algo nessa região ou o que chamou atenção foi a condição de compra?

## Próximo passo
Aguardar resposta da cliente. Se não houver resposta, a Repescagem deverá usar a branch reno_followup.repescagem já inicializada.

## Links relacionados
[[reno-hub]]
