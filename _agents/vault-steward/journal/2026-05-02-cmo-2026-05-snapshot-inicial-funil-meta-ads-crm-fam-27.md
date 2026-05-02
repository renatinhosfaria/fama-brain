---
type: journal
owner: vault-steward
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - cmo
  - snapshot
  - meta-ads
  - crm
  - diagnostico
  - funil-aquisicao
  - fam-27
title: CMO / 2026-05 Snapshot Inicial Funil Meta Ads + CRM (FAM-27)
---
> **Nota:** Este journal pertence ao agente CMO. Movido para `_agents/vault-steward/journal/` temporariamente por falta de bootstrap do path `_agents/cmo/`. Migrar para `_agents/cmo/journal/` quando CMO for bootstrapped.

# Snapshot Inicial do Funil — CMO Fama/Reno
**Período:** 01 Fev – 02 Mai 2026 (90 dias) | Issue: FAM-27

---

## 1. Meta Ads — Estado Atual

### Conta
- ID: `act_24036721645944375` (FamaChat / Reno)
- Status: ATIVA | Saldo: R$1.652,52

### Campanhas Ativas (4 de 17)

| Campanha | Início | Produto |
|---|---|---|
| `[2026][04][ABO][FORM][Opcao] - Garden Sul` | Abr/2026 | Garden Sul |
| `(NOVEMBRO)(CADASTRO)(HLTS) - VEREDA` | Nov/2025 | Union Vereda (Jaraguá) |
| `(SETEMBRO)(CADASTRO)(HLTS) - VISTA` | Set/2025 | Union Vista (Grand Ville) |
| `(SETEMBRO)(CADASTRO)(HLTS) - ARBI` | Set/2025 | Place Arbi |

Todas com objetivo `OUTCOME_LEADS`. 13 campanhas pausadas.

### Métricas Agregadas

| Métrica | 30 dias | 90 dias |
|---|---|---|
| Gasto | R$2.804,25 | R$9.298,45 |
| Impressões | 202.409 | 749.012 |
| Cliques | 1.999 | 8.278 |
| CTR médio | 0,99% | 1,11% |
| CPM médio | R$13,85 | R$12,41 |
| CPC médio | R$1,40 | R$1,12 |
| Frequência | 1,6–2,6x | 1,3–2,9x |

Sem fadiga crítica (nenhum adset com freq > 3 em 7 dias).

**8 adsets messaging:** R$493 / 90d, 0 leads CRM. Custo/conversa: R$18–R$40.

### Top-5 Adsets por CPL Real (form, mín. 10 leads)

| Gasto | Leads form | CPL Real |
|---|---|---|
| R$103,02 | 13 | **R$7,93** |
| R$1.187,77 | 144 | **R$8,25** ← melhor volume |
| R$570,57 | 66 | **R$8,64** |
| R$203,23 | 23 | **R$8,83** |
| R$178,32 | 18 | **R$9,91** |

### Bottom-5 por CPL Real

| Gasto | Leads form | CPL Real | Observação |
|---|---|---|---|
| R$230,11 | 8 | R$28,76 | ⚠️ PIXEL MISFIRE: Meta reporta 308 leads (37x inflado) |
| R$58,11 | 2 | R$29,06 | Volume insuficiente |
| R$192,45 | 7 | R$27,49 | Alto CPL |
| R$47,85 | 2 | R$23,93 | Volume insuficiente |
| R$258,64 | 14 | R$18,47 | Abaixo da média |

### ⚠️ Pixel Misconfiguration (Garden Sul)
- 300 `fb_pixel_lead` fires para 8 form completions reais → 37,5x overcount
- CPL nominal Meta: R$0,75 (falso) | CPL real: R$28,76
- Meta otimiza para page views, não leads → algoritmo aprendendo errado
- Ação: issue técnica para CEO → CTO

---

## 2. CRM — Funil Facebook Ads (90 dias)

Tabela `clientes`, source = 'Facebook Ads', last 90d.

| Status | Qtd | % |
|---|---|---|
| Arquivado | 589 | 82,8% |
| Não Respondeu | 75 | 10,5% |
| Em Atendimento | 37 | 5,2% |
| Agendamento | 5 | 0,7% |
| Visita | 4 | 0,6% |
| Venda | 1 | 0,1% |
| **TOTAL** | **711** | 100% |

**93,3% de waste** (arquivados + nunca responderam).

### Métricas de Custo

| Métrica | Valor |
|---|---|
| CPL Meta nominal | R$8,17 (sobre 1.138 inflados) |
| **CPL CRM real** | **R$13,08** (711 leads) |
| **CPV (custo/visita)** | **R$664** (14 visitas no clientes_visitas) |
| CPA (custo/venda) | R$9.298 (1 venda) |
| Dias médio lead → visita | **16 dias** |

**Divergência Meta vs CRM:** 37% over-attribution. Causa: pixel misfire (+300 fantasmas).

---

## 3. Pulse Reno — Padrões de Desqualificação (30 dias)

Leitura de 100+ arquivos `_agents/reno/atendimentos/`.

1. **Silêncio persistente (~85%)** — nao-respondeu. Formulário não cria comprometimento.
2. **Viabilidade insuficiente** — aluguel ~R$900/mês, sem entrada, CLT. Ex: Silva Porto (10923).
3. **Região inadequada** — querem centro; estoque é periférico (Grand Ville, Jaraguá).
4. **Investidor sem capital** — "plano investidor" 10% entrada mas sem capacidade. Ex: Eliseu (10972).
5. **Duplicatas/WhatsApp inválido** — 67% de um lote de 9 suprimidos por duplicidade.

Visitas confirmadas: Pedro (11084) — Union Vereda, 01/05 ✓. Augusto (10954) — remarcando.

---

## 4. Hipóteses Ranqueadas

### H1 — Fix pixel misconfiguration Garden Sul [BLOQUEADA — CTO]
- Hipótese: pixel dispara em page_load, não em form_submit. Fix faz CPL cair de R$28,76 para <R$15.
- Métrica: CPL real adset Garden Sul cai ≥40% em 14 dias pós-fix.
- Custo: R$0. Janela: 14d. Kill: sem melhora em 14d pós-fix.
- **Bloqueador: CTO. Escalar ao CEO.**

### H2 — Pergunta qualificadora no Lead Form [PRIMEIRA EXECUÇÃO CMO]
- Hipótese: Pergunta obrigatória de prazo filtra curiosos. Taxa lead→ativa sobe de 6,6% para >12%.
- Métrica: taxa lead→ativa (Em Atendimento+Agendamento+Visita) no CRM ≥12% em 14 dias.
- Custo: R$0. Janela: 14d. Kill: volume cai >50% sem melhora (<10%).
- Lentes: Lead Quality > Volume, CPV > CPL.

### H3 — Pausar messaging + Lookalike 1% visitantes [APÓS H2 + BUDGET OK]
- Hipótese: Redirecionar R$165/mês de messaging para lookalike 1% (14 visitantes) reduz CPL CRM para <R$11.
- Métrica: CPL CRM cai ≥15% em 30 dias.
- Custo: R$0 extra. Janela: 30d. Kill: sem melhora em 30d.
- Lentes: Audience Layering, Lead Quality > Volume.

---

## 5. Recomendação

1. **AGORA:** Escalar H1 → issue técnica para CEO/CTO.
2. **Semana 1 (CEO ack):** Executar H2 (zero custo, sem dep técnica).
3. **Semana 3:** Propor H3 com aprovação budget.

**Métricas-norte 60 dias:**
- CPV: R$664 → <R$400
- Taxa lead→visita: 2,0% → >4%
- CPL CRM: R$13,08 → <R$10
