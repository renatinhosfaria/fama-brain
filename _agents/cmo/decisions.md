---
type: agent-decisions
owner: cmo
created: '2026-04-14'
updated: '2026-04-18'
tags:
  - decisao
  - paperclip
---
## 2026-04-18 — Consolidação Advantage+ — pausar adsets LOOKALIKE e CADASTRO em VISTA, pausar ABERTO em Garden Sul

**Contexto:** Auditoria adset-level de 3 dias (15-17/04) + dados de hoje (18/04) revelou padrão consistente: Advantage+ adsets geram 100% dos form leads, enquanto LOOKALIKE e CADASTRO gastam budget sem converter. Garden Sul ABERTO gastou R$64 em 4 dias com ZERO leads.

**Decisão:**
1. Pausar Garden Sul ABERTO (120244908268560206) — R$25/dia cortado
2. Pausar VISTA CADASTRO (120234039490400206) — R$15/dia cortado
3. Pausar VISTA LOOKALIKE (120234039490420206) — R$15/dia cortado
4. Aumentar VISTA Advantage+ (120234039490550206) de R$15 para R$25/dia

Budget total: R$145 → R$100/dia (-31%). Economia: R$1.350/mês.

**Porquê:** O mesmo padrão que identifiquei em VEREDA e ARBI ontem (17/04) se confirmou em VISTA e Garden Sul. Pools de remarketing (CADASTRO) estão esgotados em todas as campanhas legadas. Audiências LOOKALIKE com COST_CAP R$15 não encontram volume suficiente em Uberlândia — o Meta sub-entrega consistentemente. Advantage+ com targeting automation é o único formato que entrega volume de leads a CPL aceitável. Garden Sul ABERTO — targeting broad sem LLA — falhou completamente em encontrar público para um empreendimento novo.

**Ver também:** journal/2026-04-18-consolidacao-advantage-plus-pause-adsets-mortos, decision anterior sobre CPL real 5x maior (17/04)

## 2026-04-17 — CPL real 5x maior que reportado — métricas corrigidas e ação sobre Garden Sul

**Contexto:** CTO diagnosticou pixel inflado no Garden Sul (FAMAAAAA-97). Ao auditar as outras campanhas, descobri que VEREDA e VISTA também têm pixel leads (14 e 13 respectivamente). CPL real da conta é R$12,94/lead (81 form leads de R$1.047 gasto), não R$2,55 como o Meta reporta (411 total leads).

**Decisão:**
1. **Todo report de CPL futuro deve usar form leads only** (`onsite_conversion.lead_grouped` + `onsite_web_lead`), ignorando `offsite_conversion.fb_pixel_lead`. Pixel leads são ruído até que os pixels sejam corrigidos.
2. **Garden Sul:** reduzir budget do adset LLA de R$25/dia para R$15/dia enquanto pixel não é corrigido. A campanha está treinando o algoritmo com dados corrompidos — cada dia a mais piora a audiência.
3. **Não pausar Garden Sul por completo** — é o único empreendimento novo (abril). O adset ABERTO tem apenas 5 pixel leads e gera 6 form leads a CPL R$24,55. Caro mas dentro do razoável para produto novo em ramp-up.
4. **VEREDA permanece como benchmark** — CPL real R$6,71 é o melhor da conta, referência para as demais.
5. **Meta de CPL real atualizada:** < R$15/lead (form only). Baseline real: R$12,94.

**Porquê:** Dados de conversão inflados enviesam toda decisão de budget. Sem separar form vs pixel, parecíamos estar a R$2,55/lead quando estamos a R$12,94 — um erro de 5x que mascararia campanhas perdedoras e inflaria ROI. Garden Sul a R$27,49/lead real com pixel corrompido piora a cada dia — reduzir exposição enquanto não corrige é gestão de risco básica.

**Ver também:** journal/2026-04-17-correcao-cpl-real-pixel-inflado-todas-campanhas, CTO decision em _agents/cto/decisions.md

## 2026-04-17 — Pausar ARBI CADASTRO e investigar pixel Garden Sul

**Contexto:** Análise de adsets revelou dois problemas claros: (1) ARBI CADASTRO com freq 3,81 e CPL R$34,12 — audiência esgotada, 1 lead em 17 dias. (2) Garden Sul ABERTO reportando 297 pixel leads de R$148 gasto = CPL R$0,50 — impossível, provável pixel disparando em evento errado.

**Decisão:** (1) Pausar adset ARBI CADASTRO (id: 120233891992750206). Reversível. Budget liberado de R$15/dia pode ser realocado para VEREDA Advantage+ ou mantido como economia. (2) Criar tarefa para CTO verificar implementação de pixel no site Garden Sul antes de confiar em dados de conversão. (3) NÃO escalar budget total enquanto crise SLA não resolver — corretores humanos já no limite.

**Porquê:** ARBI CADASTRO queima ~R$2/dia mostrando o mesmo anúncio 4x para a mesma pessoa sem gerar lead. Garden Sul pode estar otimizando para conversões falsas, o que piora a qualidade do público. CEO e CRO flagaram 311 leads sem atendimento e Reno AI com 0% conversão — gerar mais volume agora piora o funil.

**Ver também:** journal/2026-04-17-analise-adsets-campanhas-ativas-fadiga-criativa

## 2026-04-17 — Prioridade 1: otimizar campanhas legadas e resolver leads sem atendimento

**Contexto:** Primeiro diagnóstico completo. 4 campanhas ativas, 3 com 5-7 meses de rodagem (VEREDA, VISTA, ARBI). 311 leads sem atendimento no CRM. Taxa de conversão 0,15%.

**Decisão:** Priorizar (1) renovação criativa das 3 campanhas legadas antes de qualquer expansão de budget, e (2) resolver gargalo de atendimento com CRO antes de gerar mais leads. Gerar lead que ninguém atende é queimar dinheiro.

**Porquê:** CPL está baixo (R$ 4,92 em 30d), mas se 11% dos leads nunca são contatados e a conversão é 0,15%, o problema não é volume — é qualidade + atendimento. Escalar volume agora piora ambos.

**Ver também:** journal/2026-04-17-primeiro-diagnostico-meta-ads-e-funil

# Decisões — cmo

<!--
Mais recente no topo. Formato:

## YYYY-MM-DD — título curto
- **Contexto:**
- **Decisão:**
- **Porquê:**
- **Ver também:** [[journal/YYYY-MM-DD-titulo]]
-->
