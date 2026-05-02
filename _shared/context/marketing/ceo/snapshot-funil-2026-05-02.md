---
type: shared-context
owner: ceo
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - marketing
  - funil
  - meta-ads
  - baseline
  - cmo-onboarding
topic: marketing
title: Snapshot do funil de aquisição na contratação do CMO (2026-05-02)
---
## Por que este snapshot existe

Levantei estes números no heartbeat de 2026-05-02 para responder ao board sobre a contratação do CMO (FAM-25). A FAM-27 pede exatamente este levantamento como primeira entrega do CMO — registro aqui para que o CMO use como ponto de partida e não precise refazer extração. Tudo veio direto do CRM Postgres, da `sales_report` e do plugin `mcp-fama_meta-ads` na conta `act_24036721645944375` (Famachat).

## Meta Ads — últimos 90 dias (`last_90d`, conta única `Famachat`)

- **Gasto:** R$ 9.298,45 (~R$ 3,1k/mês)
- **Impressões:** 749.012 — **alcance:** 146.061 — **frequency: 5,12** (forte saturação de audiência; pede refresh ou expansão)
- **Cliques:** 8.278 — **CTR 1,11%** — **CPM R$ 12,41** — **CPC R$ 1,12**
- Eventos de lead reportados pela Meta:
  - `lead` (agregado): 1.138 — custo R$ 8,17/lead
  - `offsite_complete_registration_add_meta_leads` (lead form Meta): 751 — **CPL R$ 12,38**
  - `onsite_web_lead` (pixel no site): 387 — **CPL R$ 24,03**
  - `onsite_conversion.lead_grouped`: 751 — CPL R$ 12,38
- Engajamento secundário (não confundir com conversão): 6.185 post engagement, 305 video views, 31 conversas iniciadas no Messenger.

## CRM — pipeline e origem (jul/2025 → abr/2026)

- **Total de leads no CRM:** 2.834
- **Origem:** 100% `Facebook Ads` — uma única fonte registrada. Risco de canal e teto de crescimento.
- Distribuição por status (snapshot atual):
  - Arquivado: 2.069 (73,0%)
  - Sem Atendimento: 343 (12,1%)
  - Não Respondeu: 273 (9,6%)
  - Em Contato: 127 (4,5%)
  - Visita: 8 (0,28%)
  - Novo Lead: 5
  - Venda: 4
  - Agendamento: 4
  - Documentação: 1

**Leitura:** ~93% dos leads (Arquivado + Sem Atendimento + Não Respondeu) não chegam a engajamento útil. O gargalo dominante hoje **não é geração** — é atendimento/qualificação. Antes de aumentar o budget Meta, dói menos atacar este ralo.

## Vendas (mesmo período jul/2025 → abr/2026)

- **15 vendas confirmadas**, GMV R$ 4.297.250
- Comissão total para a empresa: **R$ 195.837** (~R$ 19,6k/mês)
- **Conversão lead→venda: 0,53%** (15/2.834)
- Concentração por corretor:
  - Michel Henrique: 10 vendas (67%) — R$ 2,67M GMV — R$ 121k comissão
  - Maria Eduarda: 2 vendas — R$ 699k — R$ 33k
  - Humberto Lima: 2 vendas — R$ 577k — R$ 24k
  - Renato (board): 1 venda — R$ 346k — R$ 17k

**Leitura:** receita ainda muito dependente de um único corretor (Michel = 67%). Quando o CMO otimizar topo de funil, o gargalo se move pra capacidade de atendimento — verifique se há corretores ociosos antes de pedir mais budget.

## CAC bruto estimado

- 90d Meta: R$ 9.298 / vendas no período (proporcional ~5) → **CAC ≈ R$ 1.860 por venda fechada**.
- LTV imediato (comissão por venda): R$ 13k em média (R$ 195,8k/15).
- Margem CAC/LTV ≈ 7x — saudável. Tem espaço pra escalar gasto se conversão se mantiver.

## O que o mandato do CMO de 90 dias deveria atacar (sugestão para o CMO ler antes de redigir o plano de FAM-27)

1. **Atendimento (maior alavanca):** ~93% dos leads morrem antes de virar visita. Coordenar com Reno para entender o playbook atual de primeiro contato e propor automação/SLA. Sem isso, qualquer otimização Meta é desperdiçada no meio do funil.
2. **Saturação Meta:** frequency 5,12 indica audiência cansada. Refresh de criativo + lookalike novo + teste de público frio.
3. **Qualificação:** todos os 2.834 leads entram com `avg_score = 0,00`. CRM tem campo de score mas não é populado. Sem score, o atendimento atira no escuro. Definir critério (interesse declarado + capacidade financeira mínima + região) e popular via formulário Meta enriquecido.
4. **Diversificação de canal (média prioridade):** 100% Meta é risco. Considerar Google (alta intenção: "comprar apartamento Uberlândia") como segundo canal só depois de estabilizar Meta.

## Caveats

- Snapshot é instantâneo de 2026-05-02. Datas Meta cobrem 2026-02-01 a 2026-05-01; CRM cobre desde jul/2025. Períodos não são idênticos — bom para baseline, ruim para correlação fina.
- "Arquivado" no CRM pode estar mascarando "qualificado mas frio" vs "lixo de fato". Reno pode ter critério próprio. Validar com ele.
- Sales report usa `sold_at` — se houver vendas com data atribuída fora do período, contagem muda.
