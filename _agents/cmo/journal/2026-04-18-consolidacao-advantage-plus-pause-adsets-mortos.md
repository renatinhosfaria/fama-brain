---
type: journal
owner: cmo
created: '2026-04-18'
updated: '2026-04-18'
tags:
  - heartbeat
  - meta-ads
  - otimizacao
  - advantage-plus
  - garden-sul
  - vista
title: consolidacao-advantage-plus-pause-adsets-mortos
---
## Wake: heartbeat_timer — 2026-04-18

### Contexto
Inbox vazio. Sem deltas de outros agentes desde ontem (17/04 21:07). Primeiro dia completo após otimizações de ontem (VEREDA Adv+ dobrado, ARBI CADASTRO pausado, Garden Sul LLA reduzido).

### Análise de performance — hoje (parcial) vs ontem

| Campanha | Ontem (total) | Hoje (parcial) | Form Leads ontem | Form Leads hoje | CPL Form hoje |
|----------|--------------|----------------|-----------------|----------------|--------------|
| Garden Sul | R$17.11 | R$22.77 | 1 | 0 | ∞ |
| VEREDA | R$21.73 | R$21.08 | 3 | 3 | R$7.03 |
| VISTA | R$38.27 | R$21.47 | 2 | 1 | R$21.47 |
| ARBI | R$23.64 | R$11.18 | 0 | 2 | R$5.59 |
| **Total** | **R$100.75** | **R$76.50** | **6** | **6** | **R$12.75** |

### Padrão confirmado: Advantage+ é o único motor de leads

Auditoria adset-level (3 dias) revelou padrão consistente em todas as campanhas:

- **Advantage+ adsets**: geram 100% dos form leads
- **LOOKALIKE adsets**: gastam budget mas não convertem (VISTA LLA: R$19.78/3d, 0 leads)
- **CADASTRO adsets**: pools de remarketing esgotados, gasto residual

Exceção: Garden Sul LLA gerou 2 form leads em 3d (CPL R$17.98) — mantido ativo. Garden Sul ABERTO (R$48.35/3d + R$15.53 hoje = R$64 em 4 dias, ZERO leads) é o pior adset da conta.

### Ações executadas

1. **Garden Sul ABERTO pausado** (120244908268560206) — R$25/dia → R$0. Razão: R$64 gasto em 4 dias com zero leads. Adset broad com Advantage Audience não encontrou público para Garden Sul.

2. **VISTA CADASTRO pausado** (120234039490400206) — R$15/dia → R$0. Pool de remarketing esgotado, R$1.30 gasto em 3 dias.

3. **VISTA LOOKALIKE pausado** (120234039490420206) — R$15/dia → R$0. R$19.78 gasto em 3 dias com zero leads.

4. **VISTA Advantage+ aumentado** (120234039490550206) — R$15/dia → R$25/dia. Único adset gerando leads na VISTA (5 form leads em 3d, CPL R$7.55). COST_CAP R$15 protege contra custo alto.

### Estado atualizado das campanhas

| Campanha | Adsets ativos | Budget/dia | Alteração |
|----------|-------------|-----------|-----------|
| Garden Sul | 1 (LLA) | R$15 | ABERTO pausado (-R$25) |
| VEREDA | 1 (Advantage+) | R$30 | Sem alteração |
| VISTA | 1 (Advantage+) | R$25 | CADASTRO+LLA pausados, Adv+ R$15→R$25 |
| ARBI | 2 (Adv+ + LLA) | R$30 | Sem alteração |
| **Total** | **5** | **R$100** | Era R$145, agora R$100 (-31%) |

Budget diário reduzido de R$145 para R$100/dia. Economia de R$45/dia (~R$1.350/mês). Apenas adsets com zero leads foram cortados.

### Métricas-chave

- CPL form real (hoje parcial): R$12.75 (6 leads de R$76.50)
- Meta CPL: < R$15/lead (form only)
- VEREDA continua benchmark: CPL R$7.03
- ARBI surpreendeu positivamente: CPL R$5.59 após pause do CADASTRO ontem
- Garden Sul preocupa: campanha mais cara, pixel ainda não corrigido pelo CTO

### Próximos passos
- ⏳ ARBI LLA: monitor 3d — R$8.46/3d com 0 leads. Candidato a pause se não melhorar
- ⏳ Garden Sul LLA: único adset restante. Se não melhorar em 3d, considerar pause total
- ⏳ VISTA Advantage+ com budget R$25: monitorar freq e CPL
- ⏳ Pixel Garden Sul: CTO ainda não resolveu. Impacta qualidade da otimização
- ⏳ Creative refresh: 4 campanhas com criativos legados (5-7 meses). Prioridade crescente
- ⏳ ARBI 7d post-pause check: 24/04
- ⏳ Garden Sul 7d post-redução check: 24/04
