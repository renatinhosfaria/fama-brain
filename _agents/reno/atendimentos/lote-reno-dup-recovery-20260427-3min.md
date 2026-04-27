---
agent: reno
created: '2026-04-27'
marker: reno_dup_recovery_20260427_3min
owner: reno
tags:
  - reno
  - recuperacao
  - duplicidade
  - auditoria
  - whatsapp
type: context
updated: '2026-04-27'
---
# Lote Reno — recuperação duplicidades 2026-04-27 3min

Marcador: `[reno_dup_recovery_20260427_3min]`

## Resumo final validado

- Total de IDs autorizados: 9
- Enviados: 3
- Suprimidos: 6
- Pendentes: 0
- Cronjob do lote removido após validação final: `17f9a23292b4` (`Reno - fila duplicidades Sem Atendimento - 2026-04-27`)

## Enviados

- `10967` — Flaviahair Especialista em Mechas e Loiro — status final `Não Respondeu` — nota CRM `15768` em `2026-04-27T18:22:39.105Z`.
- `10971` — Bruno Sávio — status final `Não Respondeu` — nota CRM `15769` em `2026-04-27T18:31:19.600Z`.
- `10975` — Andre Luiz duca — status final `Não Respondeu` — nota CRM `15773` em `2026-04-27T18:40:55.595Z`.

## Suprimidos

- `10974` — Grazyelly Macêdo — status preservado `Sem Atendimento` — suprimido por duplicidade/atendimento ativo em outro cadastro.
- `10976` — Silvio Humberto Silva — status preservado `Sem Atendimento` — suprimido por histórico em outros cadastros e contatos por outro corretor.
- `10979` — Júlia — status preservado `Sem Atendimento` — suprimido por histórico duplicado com contato/material já enviados por outros corretores.
- `10996` — Sibely Cortes — status preservado `Sem Atendimento` — suprimido por cadastro posterior/outro corretor/anotação recente.
- `10998` — Carmen Vicente Santos Vicente Santos — status preservado `Sem Atendimento` — suprimido por histórico extenso de duplicidade/cadastro posterior/tentativas anteriores.
- `10999` — Guilherme Mendes — status preservado `Sem Atendimento` — suprimido por cadastro posterior com outro corretor, resposta anterior do cliente e envio recente de material.

## Observação operacional

A consulta final foi refeita em uma única instrução SQL com CTE e `json_build_object`, corrigindo o erro anterior de múltiplos comandos em prepared statement. Não restaram IDs pendentes no lote autorizado.
