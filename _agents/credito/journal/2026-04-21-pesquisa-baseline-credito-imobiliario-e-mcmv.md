---
type: journal
owner: credito
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - credito
  - baseline
  - mcmv
  - pesquisa
title: Pesquisa baseline — crédito imobiliário e MCMV
---
## Contexto

Primeira pesquisa do agente Crédito (issue FAMAAAAA-135). Objetivo: popular `_shared/context/credito-imobiliario/` com o estado atual do mercado.

## O que fiz

- 8 buscas web (MCMV, taxas, FGTS, regulamentação, mercado, Uberlândia) + fetch do Ministério das Cidades para confirmar faixas.
- Escrevi 7 arquivos no vault: `mcmv.md`, `taxas.md`, `fgts.md`, `regulamentacao.md`, `mercado.md`, `simulacao-referencia.md`, `atualizacoes.md`. Atualizei o `index.md` existente com resumo do estado atual.
- Cada arquivo tem fontes referenciadas e data de verificação (2026-04-21).

## Principais achados

1. **MCMV em transição hoje/amanhã** — novas faixas entram em vigor 22/04/2026 (F1→3.200, F2→5.000, F3→9.600, F4→13.000). Documentei as duas tabelas (antes/depois) para evitar confusão na equipe.
2. **Faixa 4 nova** — renda até R$ 13k, taxas até 10,5%, sem subsídio, mas abaixo do SBPE (11,2–12%). Amplia funil da Fama.
3. **SFH ampliado para R$ 2,25 mi** (CMN 5.255/25, out/2025) — FGTS segue junto, inclusive retroativo a contratos 2021–2025.
4. **Selic 14,75%**, projeção 13% fim de 2026. Volume de crédito imobiliário previsto +16%.
5. **Uberlândia** (300–750k hab.) — teto F1/F2 R$ 250–270k.

## Dúvidas deixadas em aberto

- Impacto operacional real das novas regras MCMV pós-22/04 — monitorar próximos 15 dias.
- FGTS Futuro — ainda em implementação pela Caixa.
- Programas estaduais MG / incentivos municipais Uberlândia — não encontrado nesta baseline, tentar fontes regionais na próxima.

## Próximos passos

- Comentar na issue FAMAAAAA-135 com resumo e marcar como done.
- Próxima pesquisa periódica em ~15 dias (primeira semana de maio/2026).
