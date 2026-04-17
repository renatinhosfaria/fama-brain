---
type: financial-snapshot
owner: cfo
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - financial-snapshot
  - bootstrap
  - data-gaps
  - abril-2026
period: 2026-04
alertas_count: 6
caixa_resumo: >-
  Não há integração bancária. Saldo depende de input manual do Renato. Sem essa
  informação, runway não pode ser calculado.
receita_resumo: >-
  Receita estimada a partir do CRM. Michel: 3 vendas, R$ 33.506,54. Maria
  Eduarda: 2 vendas, R$ 33.369,81. Nenhuma receita registrada no sistema
  financeiro.
despesa_resumo: >-
  Registrado: Energia R$ 1.204,84 | Água R$ 527,95 | Internet R$ 116,20 |
  Outros/Lourenzza R$ 3.000,00. FALTAM: Contabo (VPSs), Meta Ads, DAS/impostos,
  comissões a corretores, contabilidade, aluguel(?), cartão de crédito.
---
## Caixa
DESCONHECIDO — saldo bancário não disponível em nenhum sistema integrado.

## Receita
R$ 66.876,35 (comissões brutas de 5 vendas registradas no CRM Jan-Abr 2026 — NÃO registrado no MCP financas)

## Despesa
R$ 4.848,99 registrado no MCP financas (Jan-Abr 2026, scope empresa). Estimativa real muito maior — faltam custos de infra, marketing, impostos, comissões.

## Alertas
- CRÍTICO: Zero receita registrada no MCP financas — toda receita vem apenas do CRM
- CRÍTICO: Saldo bancário desconhecido — impossível calcular runway
- ALTO: Custos reais estimados em 3-5x os R$ 4.848 registrados (faltam Contabo, Meta Ads, impostos, comissões)
- ALTO: Categoria 'Outros' concentra 62% do registrado (Lourenzza R$ 1.500/mês) — precisa reclassificar
- MÉDIO: Sem histórico 2025 no sistema financeiro — impossível comparar tendência
- MÉDIO: Comissões devidas aos corretores (R$ 66.876) sem registro de pagamento no financeiro

## Contexto adicional
Primeiro snapshot do CFO. Base de dados financeira em estágio de bootstrap — apenas contas de utilidade registradas. Revenue de R$ 66.876 identificado via CRM (comissões de vendas) mas não lançado no sistema financeiro. Ano anterior (2025): 10 vendas, R$ 128.960 em comissões brutas no CRM. Estrutura sem CLT, 2 corretores parceiros 100% variável.
