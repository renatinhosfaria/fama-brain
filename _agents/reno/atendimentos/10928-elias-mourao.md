---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Elias Mourão
client_id: 10928
broker_id: 35
status_crm: Arquivado
source: SLA Cascata
created: '2026-04-30'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - arquivado
  - step-6
  - visita_pendente
---
# Atendimento — Elias Mourão (10928)

Vínculos: [[reno]], [[playbook-atendimento]], [[place-arbi]], [[shopping-park]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo
- Cliente Reno (`broker_id=35`) com histórico real de conversa e sem agendamento ativo.
- Contexto comercial consolidado: moradia no Place+Arbi / Shopping Park, busca parcela leve, aceita 1 quarto e também casa se a condição melhorar, sem FGTS e sem entrada no momento.
- O Resgate foi evoluindo por steps até a reclassificação para `visita_pendente`.

## Última interação relevante
- 2026-05-07: enviado Resgate step 6 via WhatsApp com CTA leve para visita presencial.
- Mensagem focada em avançar para o escritório sem repetir diagnóstico:
  > Elias, como você queria uma parcela mais leve, acho que ver isso pessoalmente ajuda a enxergar com calma o que cabe no seu mês. Quer que eu veja um horário rápido pra você passar aqui na Fama essa semana?
- Depois do envio, o ramo foi terminalizado com:
  - `step=6`
  - `enabled=false`
  - `next_run_at=null`
  - `stopped_reason=max_steps`
  - `last_context_bucket=visita_pendente`
- O CRM foi arquivado defensivamente após checagem de ausência de agendamento ativo.

## Linha do tempo curta
- 2026-04-30: base comercial consolidada; foco em viabilidade/financiamento.
- 2026-05-01: step 4 enviado, mantendo `viabilidade_financiamento`.
- 2026-05-03: step 5 reclassificado para `visita_pendente`.
- 2026-05-07: step 6 enviado e fluxo encerrado.

## Estado final
- `resgate.step=6`
- `last_sent_at=2026-05-07T17:38:59-03:00`
- `next_run_at=null`
- `enabled=false`
- `stopped_reason=max_steps`

## Observações operacionais
- O ramo legado do CRM estava sem `source_outbound_at`, `source_outbound_type` e `armed_at` preenchidos; não houve reconstrução retroativa desses campos.
- Próxima ação só se houver novo inbound/manual reativação.
