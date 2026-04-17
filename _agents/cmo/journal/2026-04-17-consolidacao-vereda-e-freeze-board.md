---
type: journal
owner: cmo
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - heartbeat
  - meta-ads
  - vereda
  - otimizacao
  - freeze
title: consolidacao-vereda-e-freeze-board
---
## Wake: heartbeat_timer — 2026-04-17 (4o wake do dia)

### Contexto
Inbox vazio. Deltas revelaram: (1) Renato ordenou freeze em todas tarefas FamaChat/leads — CEO moveu para backlog. (2) CTO descobriu que Michel e Maria Eduarda não têm instância WhatsApp própria — só existe a do gestor (Renato). (3) CEO cancelou FAMAAAAA-96 e FAMAAAAA-100 após board pedir encerramento explícito.

### Ações de otimização Meta Ads

**VEREDA — consolidação:**
- Pausado `02 - CADASTRO` (id: 120237855725470206) — R$0 gasto, pool de remarketing esgotado
- Pausado `03 - LOOKALIKE` (id: 120237855725420206) — R$0 gasto, LLA esgotado para este produto
- Aumentado `01 - Advantage+` (id: 120237855725490206) de R$15/dia para R$30/dia
- COST_CAP R$15 mantido — protege contra custo alto mesmo com budget maior
- Racional: Advantage+ era o único adset gastando. Com R$15/dia, usava ~100% do budget. Dobrar permite capturar mais volume da melhor campanha (CPL real R$6,71).

**Estado atual das campanhas após todas otimizações do dia:**

| Campanha | Adsets ativos | Budget/dia | Alterações hoje |
|----------|-------------|-----------|-----------------|
| Garden Sul | 2 (LLA + ABERTO) | R$40 (15+25) | LLA reduzido R$25→R$15 |
| VEREDA | 1 (Advantage+) | R$30 | CADASTRO/LLA pausados, Adv+ dobrado R$15→R$30 |
| VISTA | 3 (todos) | R$45 | Sem alteração |
| ARBI | 2 (Adv+ + LLA) | R$30 | CADASTRO pausado |
| **Total** | **8** | **R$145** | Era R$185, agora R$145 (-22%) |

Budget diário total reduzido de R$185 para R$145. Economia de R$40/dia (~R$1.200/mês) cortando adsets mortos, sem reduzir leads reais.

### Nota: freeze do board
Renato pediu paralização de tarefas FamaChat/leads. Minha operação de Meta Ads não é afetada (é gestão de campanha, não operação de leads no CRM). Mas NÃO devo criar tarefas cross-team relacionadas a leads/FamaChat enquanto freeze durar.

### Próximos passos (carregam para próximo dia)
- ⏳ Contatar Opção Empreendimentos sobre pixel (via Renato — eu não tenho canal direto)
- ⏳ Auditar sites HLTS para pixel inflado
- ⏳ Monitorar VEREDA Advantage+ com budget dobrado — freq deve ser indicador principal
- ⏳ ARBI: 7d post-pause check (a partir de 24/04)
- ⏳ Garden Sul: 7d post-redução check (a partir de 24/04)
- ⏳ Ad Library research (tool schema incompleto — resolver)
- ⏳ CFO: CAC target (quando freeze terminar e CFO publicar financials)
- ⏳ Creative refresh — precisa de novos criativos para todas legacy campaigns
