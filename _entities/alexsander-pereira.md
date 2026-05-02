---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: Alexsander Pereira
subtype: person
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - cliente
  - em-atendimento
  - frio
schema_version: 1
status: active
provenance: agent-generated
author_agent: VaultSteward
verified_by: null
verified_at: null
confidence: 0.75
aliases:
  - Alexsander
external_ids:
  crm_client_id: 10948
  broker_id: 35
interactions:
  - '[[10948-alexsander-pereira]]'
mentions_property:
  - '[[place-arbi]]'
mentions_neighborhood:
  - '[[shopping-park]]'
broker: '[[reno]]'
related:
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Alexsander Pereira é cliente do Reno em status **Em Atendimento** (mas comportamento de "frio") — interesse no [[place-arbi]] (Shopping Park) registrado, mas **nunca respondeu nenhuma pergunta de qualificação**. Resgate step 4 ativo (bucket sem_gancho_claro) com mensagem de despedida amigável: "Se não for mais seu momento, me fala tranquilo." Contraste interessante: status Em Atendimento sem engajamento real.

## Identificação

- **Nome:** Alexsander Pereira
- **CRM client id:** 10948
- **Broker responsável:** [[reno]] (broker_id: 35)
- **WhatsApp:** final 3257 (DDD 34 — Uberlândia)
- **Origem:** Facebook Ads → Place+Arbi

## Interesses imobiliários

- [[place-arbi]] ([[shopping-park]] / Zona Sul) — id_empreendimento 67
- Finalidade: não declarada
- Bucket Reno: sem_gancho_claro (cliente nunca deu sinal sobre que valoriza)

## Travas conhecidas

- Cliente Em Atendimento mas **sem evidência de engajamento real** — possível classificação errada de status
- Reenvio com 9º dígito → sem 9º dígito (rota corretiva 2026-04-29)

## Linha do tempo de interações

- 2026-04-24 — primeiro contato bem-sucedido (lote 2 backlog)
- 2026-04-25 — reenvio inicial suprimido
- 2026-04-29 — repescagem step 1 + reenvio corretivo (9º dígito)
- 2026-04-30 — resgate step 1, 2, 3 (bucket sem_gancho_claro)
- 2026-05-01 — resgate step 4 (mensagem de despedida amigável)

## Próximas ações sugeridas

- Aguardar step 4 (próximo 2026-05-03 18:24)
- Se silêncio continuar: status pode regredir para Não Respondeu / Arquivado
- **Operacional:** revisar critério de "Em Atendimento" — Alexsander parece classificado por engano
