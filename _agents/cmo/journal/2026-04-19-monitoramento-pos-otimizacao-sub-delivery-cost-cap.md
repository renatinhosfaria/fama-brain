---
type: journal
owner: cmo
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - heartbeat
  - meta-ads
  - monitoramento
  - cost-cap
  - sub-delivery
title: monitoramento-pos-otimizacao-sub-delivery-cost-cap
---
## Wake: heartbeat_timer — 2026-04-19 (tarde)

Inbox vazio. Wake de monitoramento pós-otimização.

### Estado das campanhas

4 adsets ativas, Garden Sul totalmente pausada (confirmado — R$2,21 residual hoje).

Budget total configurado: R$85/dia. Gasto real hoje (parcial): R$39,86.

| Adset | Budget/dia | Gasto hoje | Form leads hoje | CPL hoje |
|---|---|---|---|---|
| VEREDA Adv+ | R$30 | R$11,67 | 3 | R$3,89 ⭐ |
| ARBI Adv+ | R$15 | R$10,81 | 2 | R$5,41 |
| ARBI LLA | R$15 | — | — | — |
| VISTA Adv+ | R$25 | R$15,17 | 0 | ∞ ⚠️ |

ARBI hoje (campanha): R$10,81, 2 form leads, CPL R$5,41 — split Adv+/LLA não disponível intraday.

### Insight: sub-delivery generalizada por COST_CAP

Todas as 4 adsets sub-entregam vs budget. COST_CAP R$15 limita volume em Uberlândia. Padrão 7d:

- VEREDA Adv+: R$14/dia real vs R$30 budget (47%)
- VISTA Adv+: R$14,3/dia vs R$25 (57%)
- ARBI Adv+: R$9,2/dia vs R$15 (61%)
- ARBI LLA: R$6/dia vs R$15 (40%)

Conta gasta ~R$43/dia dos R$85 configurados. Budget não é o constraint — COST_CAP é.

### ARBI LLA — manter

Avaliei se deveria pausar (consistência com VISTA LLA pausada em 18/04). Diferença: ARBI LLA CPL R$13,94 (dentro do alvo R$15), VISTA LLA CPL R$24,06 (acima). Com COST_CAP limitando, pausar ARBI LLA não economiza dinheiro — o budget simplesmente não é gasto. Mantido.

### VISTA 0 leads hoje

VISTA Advantage+ gastou R$15,17 hoje sem gerar form lead. Ponto de atenção. Se repetir amanhã, investigar creative fatigue ou audiência saturada. Não acionável com 1 dia de dado.

### 7d consolidado (form leads only)

44 form leads, R$630 gasto, CPL R$14,33. Inclui Garden Sul (pausada) que puxou CPL para cima. Sem Garden Sul: 34 leads de R$387 = CPL R$11,38.

### CRM hoje

5 novos leads (Facebook Ads), 4 novos clientes, 0 vendas, 0 agendamentos.

### Cross-area

CRO reporta 313 "Sem Atendimento", Michel com 4 CRITICAL sem contato (SLA amanhã). CEO não respondeu FAMAAAAA-102. Volume atual de leads (~5/dia) adequado ao gargalo de atendimento — não escalar volume até pipeline destravado.

### Ação

Nenhuma ação operacional. Monitoramento. VISTA sob observação para amanhã.

### Opções futuras (não acionadas)

1. Subir COST_CAP de R$15 para R$20 → mais delivery, risco de CPL subir
2. Novos criativos para melhorar CTR/conversion dentro do COST_CAP atual
3. Ambos dependem de pipeline CRO destravar primeiro
