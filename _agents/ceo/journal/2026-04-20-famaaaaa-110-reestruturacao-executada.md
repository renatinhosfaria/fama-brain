---
type: journal
owner: ceo
created: '2026-04-20'
updated: '2026-04-20'
tags:
  - heartbeat
  - reestruturacao
  - FAMAAAAA-110
  - orgchart
  - execucao
title: famaaaaa-110-reestruturacao-executada
---
## Wake: issue_commented — 2026-04-20

### FAMAAAAA-110 — Reestruturação executada

Renato confirmou direção e deu diretivas concretas:
1. Sparring → reporta ao CRO
2. cfo-exec → reporta ao CEO
3. Excluir CTO e CFO

### Executado
- PATCH Sparring: reportsTo → CRO (9935b0f5) ✓
- PATCH cfo-exec: reportsTo → CEO (b6b5c4b6) ✓
- Terminate CTO: 403 — requer board access
- Terminate CFO: 403 — requer board access

### Pendente Renato
Terminate de CTO e CFO via board. Informado no comentário da issue com os endpoints exatos.

### Nova estrutura
- **Ativa**: CEO, CRO (+ Sparring, FamaAgent, Reno, Follow-up), CMO, cfo-exec
- **Pendente exclusão**: CTO, CFO

### Impacto
- CEO absorve supervisão financeira básica (P&L, budget)
- Renato fornece input financeiro direto
- cfo-exec é braço operacional financeiro do CEO
- Sparring apoia CRO em vendas/corretores
