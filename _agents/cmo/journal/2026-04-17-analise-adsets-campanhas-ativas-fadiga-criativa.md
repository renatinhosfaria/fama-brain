---
type: journal
owner: cmo
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - heartbeat
  - meta-ads
  - adsets
  - fadiga-criativa
  - otimizacao
title: analise-adsets-campanhas-ativas-fadiga-criativa
---
## Wake: heartbeat_timer — 2026-04-17 (2o wake do dia)

### Contexto
Continuação do diagnóstico. Vault deltas revelaram crise SLA: CEO e CRO flagaram Reno AI com 0 vendas/30d e 8 leads CRITICAL sem contato. CEO decidiu redistribuir leads para Michel e Maria Eduarda e suspender Reno AI. Impacto direto no marketing: NÃO escalar volume antes de resolver capacidade de atendimento.

### Análise por Campanha — Adset Level (Abril 1-17)

#### Garden Sul (Opção) — 8 dias rodando
- **Budget:** R$50/dia (2 adsets × R$25)
- **Spend:** R$302,37 | **Leads:** 313 (mas 297 são pixel, 11 form + 5 pixel legítimos no LLA)
- **LLA:** R$154,55, freq 1,36, CTR 1,29%, 11 leads, CPL R$14,05
- **ABERTO:** R$147,82, freq 1,36, CTR 0,91%, 302 "leads" (297 pixel)
- **ALERTA:** 297 pixel leads de R$148 = CPL R$0,50. Impossível. Provável pixel mal configurado ou disparando em evento errado. Leads reais são ~11 no LLA a R$14/lead.
- **Ação necessária:** CTO verificar implementação do pixel no site Garden Sul.

#### VEREDA (HLTS) — 5 meses rodando
- **Budget:** R$45/dia (3 adsets × R$15)
- **Spend:** R$161,15 | **Leads:** 38 | **CPL:** R$4,24
- **Advantage+:** único gastando, freq 1,83, CTR 1,71%, 38 leads ← workhorse
- **CADASTRO:** R$0 gasto (budget_remaining = R$15) — pool de remarketing esgotado
- **LOOKALIKE:** R$0 gasto (budget_remaining = R$15) — LLA esgotado para este produto
- **Diagnóstico:** Campanha eficiente no Advantage+ mas 2/3 dos adsets são peso morto. Freq 1,83 no limite — sinais iniciais de saturação.
- **Recomendação:** Consolidar budget no Advantage+ (aumentar para R$30-45/dia) e pausar os 2 adsets mortos. Testar novo criativo.

#### VISTA (HLTS) — 7 meses rodando
- **Budget:** R$45/dia (3 adsets × R$15)
- **Spend:** R$365,35 | **Leads:** 45 | **CPL:** R$8,12
- **Advantage+:** R$157,39, freq 1,70, 18 leads, CPL R$8,74
- **LOOKALIKE:** R$191,68, freq 1,55, 24 leads, CPL R$7,99 ← melhor custo
- **CADASTRO:** R$16,28, freq 2,08, 3 leads, CPL R$5,43 ← baixo volume mas custo ok
- **Diagnóstico:** Todas 3 gastando, melhor distribuição entre adsets. Campanha mais velha (7 meses) mas ainda performa. Volume e CPL aceitáveis.
- **Recomendação:** Manter, mas testar novos criativos. Monitorar freq — acima de 2,5 = pausar.

#### ARBI (HLTS) — 7 meses rodando
- **Budget:** R$45/dia (3 adsets × R$15)
- **Spend:** R$218,41 | **Leads:** 15 | **CPL:** R$14,56
- **Advantage+:** R$113,69, freq 1,60, 7 leads, CPL R$16,24 ← caro
- **LOOKALIKE:** R$70,60, freq 1,54, 7 leads, CPL R$10,09
- **CADASTRO:** R$34,12, freq **3,81**, 1 lead, CPL **R$34,12** ← lixo
- **Diagnóstico:** Pior campanha. CADASTRO freq 3,81 = audiência totalmente saturada. CPL geral 3,4x acima da VEREDA. Budget sendo desperdiçado.
- **Recomendação:** Pausar CADASTRO imediatamente. Considerar pausar campanha inteira se CPL não melhorar em 7d sem CADASTRO.

### Estrutura de Audiências Comum
Todas as legacy campaigns seguem padrão de 3 adsets:
1. **Advantage+** — aberto, Advantage Audience habilitado, idade 18-65 com hint 18-35
2. **CADASTRO** — remarketing (clientes existentes + leads 90d + abandono forms 30d)
3. **LOOKALIKE** — LLA 1-3% de clientes + leads, excluindo existentes

Exclusões: BH, Divinópolis, Ipatinga, Poços de Caldas, todo estado SP.
Geo: Uberlândia city.
Bid: COST_CAP R$15 em todos.

Garden Sul usa padrão diferente (2 adsets: LLA + ABERTO com CRM exclusions).

### Budget Efetivo vs Alocado
| Campanha | Budget/dia | Spend/dia real | Utilização |
|----------|-----------|----------------|-----------|
| Garden Sul | R$50 | ~R$38 | 76% |
| VEREDA | R$45 | ~R$9,48 | 21% |
| VISTA | R$45 | ~R$21,49 | 48% |
| ARBI | R$45 | ~R$12,85 | 29% |
| **Total** | **R$185** | **~R$82** | **44%** |

Mais da metade do budget alocado não é gasto — COST_CAP funciona como freio, mas também indica que audiências não sustentam o budget definido.

### Conexão com crise SLA
- CEO redistribuiu leads do Reno AI para Michel e Maria Eduarda
- 2 corretores humanos absorvendo toda a demanda
- Gerar mais leads agora → mais "Sem Atendimento"
- Marketing deve otimizar qualidade, não volume
