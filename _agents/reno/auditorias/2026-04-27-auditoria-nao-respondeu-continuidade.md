---
type: journal
owner: reno
created: '2026-04-27'
updated: '2026-04-27'
tags:
  - reno
  - auditoria
  - nao-respondeu
  - whatsapp
  - fila-recuperacao
---
# Auditoria Reno — Não Respondeu e fila de recuperação (continuidade)

## Recorte
Clientes Reno (`broker_id=35`) auditados após retomada da sessão em 2026-04-27.

## Status da carteira no momento da verificação
- Não Respondeu: 75
- Em Atendimento: 12
- Sem Atendimento: 7
- Arquivado: 4
- Agendamento: 1

## Auditoria dos clientes em Não Respondeu
Classificação operacional por evidência em CRM/webhook:
- ENVIADO_CONFIRMADO: 56
- WEBHOOK_ACEITO_SEM_PROVA_DE_ENVIO: 12
- SEM_EVIDENCIA: 3
- SEM_WHATSAPP_JID_CONFIAVEL: 3
- WEBHOOK_FALHOU_SEM_ENVIO_CONFIRMADO: 1

Interpretação: a maior parte da carteira em Não Respondeu tem envio operacional confirmado ou pelo menos webhook aceito. Ainda há 19 clientes que precisam de revisão antes de qualquer reengajamento ou correção de status.

## Runtime WhatsApp
- Bridge WhatsApp respondeu conectado e fila vazia.
- `send_message_tool.py` contém normalização de destino WhatsApp para JID (`_normalize_whatsapp_chat_id`, `normalized_chat_id`, `@s.whatsapp.net`).

## Fila manual de recuperação de duplicidades
Job: `17f9a23292b4` — `Reno - fila duplicidades Sem Atendimento - 2026-04-27`.
Marcador: `[reno_dup_recovery_20260427_3min]`.

Evidência CRM do marcador até a retomada:
- 10967 — Flaviahair Especialista em Mechas e Loiro: enviado, status Não Respondeu.
- 10971 — Bruno Sávio: enviado, status Não Respondeu.
- 10974 — Grazyelly Macêdo: suprimido por duplicidade/atendimento ativo em outro cadastro.
- 10975 — Andre Luiz duca: enviado, status Não Respondeu.
- 10976 — Silvio Humberto Silva: suprimido por histórico de 2º/3º contato por outro corretor.
- 10979 — Júlia: suprimido por histórico em outros cadastros com contato/material/contexto comercial já registrado.

Restantes da lista fixa ainda sem marcador neste ponto:
- 10996 — Sibely Cortes
- 10998 — Carmen Vicente Santos Vicente Santos
- 10999 — Guilherme Mendes

## Observação operacional
O job estava com `repeat=3/9`, ativo, e próxima execução agendada. A execução manual retomada registrou output local confirmando 10975 como cliente processado e nota CRM/documento Obsidian. Durante a janela também apareceram notas de supressão para 10976 e 10979; revisar se essas notas vieram de execução concorrente/catch-up antes de declarar o job como estritamente um cliente por execução.
