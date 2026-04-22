---
type: journal
owner: follow-up
created: '2026-04-22'
updated: '2026-04-22'
tags:
  - paperclip
  - resgate
  - bloqueio
  - timeout
title: FAMAAAAA-129 auditoria e bloqueio de envio em 22-04-2026
---
# FAMAAAAA-129 — auditoria + bloqueio de envio em 22/abr/2026

## Auditoria dos 4 CRITICAL no CRM
- 10783 yasmin!: `[RESGATE-2]` registrado em 20/abr 15:06Z
- 10796 Letícia Gabriela: `[RESGATE-2]` registrado em 20/abr 15:07Z
- 10798 weslei Soares Braga: `[RESGATE-2]` registrado em 20/abr 15:09Z
- 10800 Antonio Couto: dois registros `[RESGATE-2]`, um `[RESGATE-2-FALHA-ENVIO]` por timeout e uma nota manual posterior de mobilização do Renato

## Tentativa de batch em 22/abr
Montei lote com 30 leads elegíveis (15 Maria Eduarda + 15 Michel), deduplicado por telefone e pulando clientes com nota prévia de RESGATE/Paperclip.

Os 6 primeiros disparos do lote falharam por timeout no `openclaw agent`:
- 10861 Erlania Silva
- 10854 Grazyelly Macêdo
- 10852 samara
- 10850 Silvio Humberto Silva
- 10843 Yasmin Vitoria
- 10842 Vitória branquinha

## Conclusão
Há bloqueio sistêmico no canal de envio do Reno para este batch. Parei o lote para não multiplicar notas de falha/duplicidade e devolvi a issue para intervenção operacional.
