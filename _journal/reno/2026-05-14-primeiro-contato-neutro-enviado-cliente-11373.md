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
  - crm
  - repescagem
  - nome-inseguro
title: Primeiro contato neutro enviado — cliente 11373
event_date: '2026-05-14'
occurred_at: '2026-05-14T11:13:23-03:00'
channel: whatsapp
participants:
  - Cliente 11373
  - Reno
mentions_entity:
  - cliente-11373
  - Union Vereda
  - Reno
related:
  - primeiro-contato
  - repescagem
  - nome-inseguro
confidence: 1
external_ids:
  client_id: '11373'
  crm_note_id: '17773'
  message_id_1: 3EB0F3EFF05C08924CC23F
  property_id: '161'
---
## Resumo
Primeiro contato neutro do Reno enviado em reprocessamento autorizado por Renato para o cliente 11373.

## Ação tomada
Cliente validado no CRM/FamaChat com `broker_id=35`, status inicial `Sem Atendimento`, origem Facebook Ads e interesse no empreendimento Union Vereda, no Jaraguá. O nome cadastrado (`Exclusivoscarbr`) foi tratado como inseguro/ruidoso para saudação, então o WhatsApp foi enviado com mensagem neutra perguntando como a pessoa prefere ser chamada.

Mensagem enviada:
"Oi, tudo bem? Aqui é o Reno, da Fama.\nVi seu interesse no Union Vereda. Só pra eu te atender certinho, como posso te chamar?"

## Persistência operacional
- Status atualizado condicionalmente para `Não Respondeu`.
- `meta_data.reno_followup.repescagem` inicializada com `step=0`, `entry_shift=manha`, `entry_reference_at=2026-05-14T11:13:23-03:00` e `next_run_at=2026-05-14T19:10:00-03:00`.
- Nota CRM registrada: `17773`.

## Evidência
- WhatsApp validado e espelhado para `553488641737@s.whatsapp.net`: message_id `3EB0F3EFF05C08924CC23F`.
- Read-back MCP/Postgres confirmou status `Não Respondeu` e branch de repescagem persistida.

## Próximo passo
Aguardar a resposta com o nome correto. Quando responder, atualizar o `full_name` no CRM, registrar nota objetiva da correção e só então continuar a qualificação normal.
