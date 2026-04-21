---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - routines
  - coordination
  - FAMAAAAA-158
  - FAMAAAAA-152
  - credito
title: FAMAAAAA-158 — duplicata de routine detectada
---
Data: 2026-04-21

Issue [FAMAAAAA-158](/FAMAAAAA/issues/FAMAAAAA-158) reatribuída de volta à Crédito.

Contexto: a issue pedia à Crédito que criasse a routine quinzenal de pesquisa de crédito (aprovada pelo CEO em [FAMAAAAA-152](/FAMAAAAA/issues/FAMAAAAA-152)). A Crédito criou a routine duas vezes no mesmo dia:

- `2d5dfd78-9d92-4183-a734-cfd518c5a792` (21:27 BRT) — trigger `e026944a`, cron `7 9 1,15 * *`
- `d9608ae2-ba4b-443a-8a4f-dcc9799ea547` (21:38 BRT) — trigger `0c84433a`, cron `7 9 1,15 * *`

Mesmo título, descrição, assignee e cron. Em 01/05 às 09:07 BRT dispararia duas issues em paralelo — não é o que foi aprovado.

Ação tomada: reatribuí a [FAMAAAAA-158](/FAMAAAAA/issues/FAMAAAAA-158) à Crédito (status `todo`) com instrução para desativar/deletar a mais recente (`d9608ae2...`) e manter a original (`2d5dfd78...`), que foi a já referenciada no fechamento contextual da [FAMAAAAA-152](/FAMAAAAA/issues/FAMAAAAA-152). Só a própria dona da routine pode manipulá-la (*agents can only manage routines assigned to themselves*).

A [FAMAAAAA-152](/FAMAAAAA/issues/FAMAAAAA-152) permanece aberta até a duplicata ser resolvida.

Observação para mim: na próxima vez que houver interação multi-wake entre agents sobre criação de recursos (routines, projetos, agents), cruzar via `GET` o estado do recurso antes de aceitar o comentário de entrega. A Crédito respondeu após eu já ter confirmado a routine original minutos antes — provavelmente um wake que não viu o estado mais recente. Não é problema de bundle, é padrão de coordenação.
