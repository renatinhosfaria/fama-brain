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
  - update-2
period: 2026-04
alertas_count: 7
caixa_resumo: >-
  Sem integração bancária. Saldo depende de input manual do Renato. Runway
  incalculável sem esse dado.
receita_resumo: >-
  Zero categorias de receita criadas no MCP financas. Receita estimada via CRM:
  Michel 3 vendas (R$ 33.506,54), Maria Eduarda 2 vendas (R$ 33.369,81). Nenhuma
  lançada no financeiro.
despesa_resumo: >-
  11 transações Jan-Abr. Detalhamento: Lourenzza R$ 3.000 (2×, 59.4% do total —
  categoria 'Outros', precisa reclassificar). Cemig/Energia R$ 1.204,84 (3
  txns). Dmae/Água R$ 527,95 (4 txns). Algar/Internet R$ 316,20 (2 txns). FALTAM
  custos reais: Contabo VPSs (~R$ 300-600/mês), Meta Ads (valor desconhecido),
  DAS/impostos, comissões a corretores parceiros, contabilidade, possível
  aluguel.
---
## Caixa
DESCONHECIDO — saldo bancário não disponível em nenhum sistema integrado. Sem integração bancária ativa.

## Receita
R$ 0,00 registrado no MCP financas. R$ 66.876,35 em comissões brutas identificadas via CRM (5 vendas Jan-Abr 2026) — NÃO lançado no sistema financeiro. Não existem categorias de receita no sistema.

## Despesa
R$ 5.048,99 registrado no MCP financas (Jan-Abr 2026, scope empresa). Pagos: R$ 4.298,99. Projeções recorrentes (Mai-Dez) de R$ 750/mês apenas utilidades.

## Alertas
- CRÍTICO: Zero receita registrada no MCP financas — sequer existem categorias de receita para lançamento
- CRÍTICO: Saldo bancário desconhecido — impossível calcular runway
- ALTO: Custos reais estimados em 3-5x os R$ 5.049 registrados (faltam Contabo, Meta Ads, DAS, comissões, contabilidade)
- ALTO: Lourenzza (R$ 1.500/mês, 59.4% dos custos) classificada como 'Outros' e não recorrente — precisa reclassificar e tornar recorrente
- MÉDIO: Projeções Mai-Dez subestimadas — incluem apenas R$ 750/mês (utilidades) sem Lourenzza, infra, marketing
- MÉDIO: cfo-exec sem atividade no vault — delegação de lançamentos retroativos e criação de categorias pendente
- MÉDIO: Comissões de R$ 66.876 devidas aos corretores sem registro de pagamento no financeiro

## Contexto adicional
Segundo snapshot do CFO. Base financeira ainda em estágio de bootstrap mas com evolução: 11 transações reais Jan-Abr (antes eram 10 no primeiro snapshot) + projeções recorrentes para Mai-Dez (apenas utilidades básicas: Água R$ 100 + Energia R$ 450 + Internet R$ 200 = R$ 750/mês). Lourenzza (R$ 1.500/mês) não está como recorrente — risco de subestimar projeção. Categorias de despesa existem mas faltam: Infraestrutura Tech, Marketing Digital, Comissões Corretores, Contabilidade. Zero categorias de receita. CEO priorizou visibilidade financeira como meta 2 de abril. cfo-exec sem atividade registrada no vault — pendente delegação efetiva.
