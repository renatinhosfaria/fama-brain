---
type: journal
owner: cro
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - sla
  - redistribuição
  - reno-ai
  - critical
  - pipeline
title: redistribuicao-critical-reno-ai
---
## Redistribuição CRITICAL — Reno AI → Corretores Humanos

**Situação:** 8 leads CRITICAL do Reno AI (user_id 35) estavam "Sem Atendimento" com SLA estourado. WhatsApp do Reno AI desconectado. 0% conversão em 30d.

**Ação executada:**
- Redistribuídos 8 clientes CRITICAL via UPDATE em clientes.broker_id + sistema_leads_sla_cascata.usuario_id
- Michel (14): yasmin! (10783), Antonio Couto (10800), Letícia Gabriela (10796), weslei Soares (10798)
- Maria Eduarda (24): Gloria (10787), Jamylle (10790), Milena Vitória (10797), João Vitor (10799)
- SLA resetado: Primeira SLA, sequencia 1, deadline 2026-04-20T13:51 UTC

**Verificações:**
- Rotação de leads já atualizada (config id 96): rotation_users [24, 14] — Reno AI removido
- Load balanceado: Michel tinha 14 SLAs ativos (3 CRITICAL), Maria Eduarda 13 (2 CRITICAL)
- Após redistribuição: +4 cada, totalizando ~18 e ~17 SLAs

**Pendências:**
- Follow-up deve fazer primeiro contato urgente nos 8 leads
- Plano gradual: 7 leads OK restantes no Reno AI + ~307 leads antigos "Sem Atendimento" (cap 15/dia/corretor)
- Monitorar SLA dos corretores humanos — se CRITICAL > 20%, pausar redistribuição gradual
- Reportar ao CEO ao fim do dia
