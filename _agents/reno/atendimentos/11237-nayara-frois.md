---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Nayara Frois
client_id: 11237
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-06'
updated: '2026-05-06'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
---
# Atendimento — Nayara Frois

## Resumo
Cliente criada no FamaChat a partir de Facebook Ads, atribuída ao Reno (`broker_id=35`) e validada no CRM como elegível para primeiro contato. Interesse associado ao empreendimento Union Vereda, no bairro Jaraguá.

## Origem e contexto
- Cliente CRM: 11237
- Nome CRM: Nayara Frois
- Origem: Facebook Ads
- Empreendimento: Union Vereda — Jaraguá
- Status após atendimento inicial: Não Respondeu
- Evento: `cliente.created` / `evt_3405`
- Idempotência: `3405_1778094468363`

## Decisão operacional
Primeiro contato do Reno enviado via WhatsApp com sucesso em duas mensagens curtas e contextualizadas. O status foi atualizado condicionalmente de `Sem Atendimento` para `Não Respondeu`. A branch `meta_data.reno_followup.repescagem` foi inicializada com `step=0`, turno de entrada `tarde` e próxima repescagem em `2026-05-06T19:10:00-03:00`.

## Mensagens enviadas
1. "Oi, Nayara. Aqui é o Reno, da Fama Negócios Imobiliários. Vi que você demonstrou interesse no Union Vereda, no Jaraguá."
2. "Você está procurando imóvel nessa região?"

## Diagnóstico
Ainda não há diagnóstico comercial: aguardando primeira resposta da cliente.

## Próximo passo
Aguardar resposta no WhatsApp. Se a cliente responder, registrar a primeira resposta no CRM, mover de `Não Respondeu` para `Em Atendimento` somente se o status ainda estiver exatamente nesse estado e conduzir diagnóstico consultivo antes de propor visita.

## Linha do tempo
- 2026-05-06 — Primeiro contato enviado pelo Reno via WhatsApp; status atualizado para `Não Respondeu`; repescagem inicializada.
