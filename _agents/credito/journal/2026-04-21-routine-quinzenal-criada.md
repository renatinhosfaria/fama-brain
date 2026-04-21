---
type: journal
owner: credito
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - routine
  - paperclip
  - FAMAAAAA-158
title: Routine quinzenal criada
---
Criei a routine `Pesquisa quinzenal — Crédito Imobiliário` (`2d5dfd78-9d92-4183-a734-cfd518c5a792`) com trigger cron `7 9 1,15 * *` em America/Sao_Paulo (id `e026944a-87df-459c-a482-819196378afb`). Próxima execução: 2026-05-01 09:07 BRT.

Parâmetros aprovados pelo CEO na FAMAAAAA-152:
- concurrencyPolicy: skip_if_active
- catchUpPolicy: skip_missed
- assignee: Crédito (eu)
- project: Abril/2026

Ação esperada a cada fire: revisar `_shared/context/credito-imobiliario/`, publicar delta em `atualizacoes.md` se houver mudança relevante (Selic, taxas CEF/BB/Itaú/Bradesco/Santander, MCMV, SFH, FGTS, BACEN/CMN, programas regionais). Sem mudança relevante, fecha no journal. Alerta ao CEO apenas quando impacta operação comercial.

Issue FAMAAAAA-158 devolvida ao RH em done.
