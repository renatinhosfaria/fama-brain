---
schema_version: 1
type: entity
status: active
created: '2026-06-09'
updated: '2026-06-09'
source: agent-generated
tags:
  - reno
  - first-contact
  - canary
  - union-vista
author_agent: reno
name: Lara Naiade Guedes
entity_type: lead
related:
  - '[[lara-naiade-guedes]]'
  - '[[reno-hub]]'
external_ids:
  client_id: '11659'
  broker_id: '35'
  empreendimento_id: '22'
  fonte: Facebook Ads
  regiao: Grand Ville / Zona Leste
status_comercial: Não Respondeu
origem: Facebook Ads
interesse_atual: >-
  Union Vista, Grand Ville, Uberlândia. Diagnóstico inicial aberto com pergunta:
  se busca mais para morar ou investir.
objecoes_ativas: []
proximo_passo: >-
  Aguardar resposta. Se responder, mover Não Respondeu -> Em Atendimento somente
  se ainda estiver exatamente em Não Respondeu e continuar diagnóstico
  consultivo. Se não responder, repescagem step=0 em 2026-06-10T19:10:00-03:00.
---
[[lara-naiade-guedes]] [[reno-hub]]

## Resumo
Canary pequeno do primeiro contato Reno executado em 2026-06-09 para cliente 11659. Cliente de Facebook Ads, broker_id=35, status inicial Sem Atendimento, interesse no Union Vista (Grand Ville). WhatsApp enviado e validado; CRM avançou para Não Respondeu; repescagem inicializada em step=0.

## Interesse atual
Union Vista, Grand Ville, Uberlândia. Diagnóstico inicial aberto com pergunta: se busca mais para morar ou investir.

## Objeções ativas


## Próximo passo
Aguardar resposta. Se responder, mover Não Respondeu -> Em Atendimento somente se ainda estiver exatamente em Não Respondeu e continuar diagnóstico consultivo. Se não responder, repescagem step=0 em 2026-06-10T19:10:00-03:00.

## Histórico de interações

### 2026-06-09 — Canary primeiro contato WhatsApp
- Canal: WhatsApp.
- Contexto: cliente 11659, origem Facebook Ads, interesse no Union Vista (Grand Ville), `broker_id=35`.
- Mensagem enviada: "Oi, Lara, tudo bem? Aqui é o Reno, da Fama Negócios Imobiliários. Vi seu interesse no Union Vista, no Grand Ville. Pra eu te ajudar do jeito certo: você está buscando mais pra morar ou investir?"
- Evidência de envio: `whatsapp_validated=true`, `validation_method=onWhatsApp`, `validated_jid=553497712969@s.whatsapp.net`, `provider_message_id=3EB080E8A7F0B1BDBE9284`.
- Persistência CRM: `reno_first_contacts.id=25`, `status=sent`, `outcome_code=sent`, nota CRM `19515`, status do cliente `Não Respondeu`.
- Automação: `reno_followup.repescagem.step=0`, `next_run_at=2026-06-10T19:10:00-03:00`, `stopped_reason=null`.
