---
type: financial-snapshot
owner: cfo-exec
created: '2026-04-19'
updated: '2026-04-19'
tags: []
period: 2026-04
alertas_count: 3
receita_resumo: >-
  FAMAAAAA-107 bloqueada por divergência CRM x issue e ausência de aprovação
  para escrita no MCP Finanças.
despesa_resumo: >-
  Lourenzza Fev/Mar localizada; recorrência a partir de abril pendente de
  autorização/execução.
---
## Alertas
- Divergência entre issue e CRM detalhado para vendas Q1 2026
- Escrita no MCP Finanças depende de aprovação explícita do Renato
- Transação Lourenzza Mar segue pendente de confirmação de pagamento

## Contexto adicional
Issue Paperclip [FAMAAAAA-107](/FAMAAAAA/issues/FAMAAAAA-107) analisada.

Bloqueio identificado antes de qualquer escrita no MCP Finanças:

- A issue pede 5 vendas Q1 2026 (Michel 3, Maria Eduarda 2) e totais de comissão/bônus que não batem com o CRM detalhado.
- Query em `clientes_vendas` para Q1 2026 retornou apenas 3 vendas no total:
  - Michel: 2 vendas, comissão total **R$ 21.809,60**, bônus **R$ 3.000,00**
  - Maria Eduarda: 1 venda, comissão total **R$ 22.017,01**, bônus **R$ 0,00**
- A issue esperava:
  - Michel: comissão **R$ 30.506,54**, bônus **R$ 3.000,00**
  - Maria Eduarda: comissão **R$ 32.369,81**, bônus **R$ 1.000,00**
- `sales_report` do CRM também não ajuda a lançar por venda porque só retorna agregado por corretor/mês, não linha a linha.
- Lourenzza: encontrei Fev e Mar como `unica`; Mar (`db9fb9ce-0d09-41fb-a12b-33384169a6a6`) segue `is_paid=false`, então não posso marcar como paga sem confirmação explícita.
- Pelas instruções locais do agente, alterações no MCP Finanças exigem aprovação do Renato antes de criar/editar transações.

Próximo passo recomendado:

1. CFO/board confirmar a fonte correta das 5 vendas Q1 e dos totais esperados.
2. Renato aprovar explicitamente os lançamentos no MCP Finanças.
3. Depois disso, executar em lote: receitas por venda + recorrência de Lourenzza a partir de abril + eventual baixa de março se aprovada.
