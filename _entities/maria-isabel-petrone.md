---
type: entity
name: Maria Isabel Petrone
entity_type: lead
external_ids:
  client_id: '11608'
  broker_id: '35'
  empreendimento_id: '22'
  fonte: Facebook Ads
  regiao: Grand Ville / Zona Leste
related:
  - '[[maria-isabel-petrone]]'
  - '[[reno-hub]]'
schema_version: 1
status: active
created: '2026-06-09'
updated: '2026-06-10'
source: agent-generated
tags:
  - reno
  - first-contact
  - canary
  - union-vista
  - repescagem
  - whatsapp
  - follow-up
author_agent: reno
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
verified_by: null
---
# Maria Isabel Petrone

## Resumo atual
Repescagem step 1 enviada via WhatsApp em 2026-06-10 19:26 BRT. O bridge local validou o envio (`validated=true`), mas o mirror interno falhou após o envio (`mirrored=false`), então não repetir o disparo. O cliente segue em `Não Respondeu` e o próximo follow-up está previsto para 2026-06-11 09:10 BRT.

## Contexto do atendimento
- Cliente ID: 11608
- Broker ID: 35
- Origem: Facebook Ads
- Primeiro contato canary: 2026-06-09
- Empreendimento/contexto: Union Vista / Grand Ville
- Ângulo do primeiro contato: morar vs investir
- Ângulo da repescagem: entrada vs parcela

## Diagnóstico
### Necessidade
Entender se a compra fecha melhor pela entrada ou pela parcela.

### Momento
Lead silencioso após o primeiro contato; segue elegível para a cadência de repescagem.

### Decisão
Ainda sem resposta real do cliente.

### Viabilidade
Em aberto; a próxima resposta deve indicar se vale aprofundar financiamento ou ajustar o encaixe mensal.

## Próximo passo
Aguardar retorno ao step 1 e, se continuar em silêncio, seguir a régua oficial do próximo passo.

## 2026-06-11 — Repescagem repair-only
- Run time: 11/06 09:22 BRT
- Strict due row existed, but the 18h BRT freshness gate blocked another send
- No WhatsApp sent
- `next_run_at` normalized to `2026-06-12 09:10 BRT`
- `recovery_reason=needs_repair`
- CRM note: 19647
- Journal entry: `_journal/reno/2026-06-11-maria-isabel-petrone-repescagem-repair-only.md`
