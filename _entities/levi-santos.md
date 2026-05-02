---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: Levi Santos
subtype: person
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - cliente
  - em-atendimento
  - trava-operacional
schema_version: 1
status: active
provenance: agent-generated
author_agent: VaultSteward
verified_by: null
verified_at: null
confidence: 0.8
aliases:
  - Levi
external_ids:
  crm_client_id: 10951
  broker_id: 35
interactions:
  - '[[10951-levi-santos]]'
mentions_property:
  - '[[union-vereda]]'
mentions_neighborhood:
  - '[[jaragua]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Levi Santos é cliente do Reno em status **Em Atendimento** com interesse confirmado no [[union-vereda]] (Jaraguá). Engajou pedindo metragem; Reno explicou plantas (57–58m² padrão e térrea 82,2m²) e está aguardando definição de preferência. **Resgate step 3 travado por falha operacional** (whatsapp_send_failed: "cannot schedule new futures after shutdown") em 2026-05-01 — bloqueio infra a desbloquear pelo Renato.

## Identificação

- **Nome:** Levi Santos
- **CRM client id:** 10951
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 1995 (DDD 34 — Uberlândia)
- **Origem:** Facebook Ads

## Interesses imobiliários

- [[union-vereda]] ([[jaragua]] / Zona Oeste)
- **Pergunta crítica em aberto:** prefere planta 57/58m² padrão ou térrea 82,2m² maior?
- Reno informou: 2qts/suíte/varanda gourmet/lazer/entrada parcelada/documentação grátis MCMV

## Travas conhecidas

- **Operacional:** envio WhatsApp falhando ("cannot schedule new futures after shutdown") em 2026-05-01
- Cliente engajado mas régua interrompida → risco de perda do momento

## Linha do tempo de interações

- 2026-04-24 — primeiro contato bem-sucedido (lote 2 backlog)
- 2026-04-25 — reenvio inicial suprimido (lead_automatico)
- 2026-04-29 — cliente respondeu pela manhã ("Bom dia. Pode passar mais informações") → Em Atendimento
- 2026-04-29 — cliente perguntou metragem → Reno respondeu
- 2026-04-30 — resgate step 1, 2, 3 (bucket midia_opcao_enviada)
- 2026-05-01 — step 3 enviado, falhou por shutdown WhatsApp gateway

## Próximas ações sugeridas

- **Imediato:** desbloquear envio WhatsApp Reno → Levi (sinalizar Renato)
- Após desbloqueio: enviar comparativo planta 57/58m² vs térrea 82,2m²
- Validar enquadramento MCMV (Reno mencionou "documentação grátis MCMV" no primeiro contato)
- Conduzir para visita Fama
