---
type: journal
owner: reno
created: '2026-04-27'
updated: '2026-04-27'
tags:
  - reno
  - auditoria
  - performance
  - crm
---
# Nova análise de performance do Reno — 2026-04-27

## Recorte
Carteira Reno (`broker_id=35`) criada nos últimos 30 dias, consultada após a fila manual de duplicidades `[reno_dup_recovery_20260427_3min]`.

## Situação atual no CRM
- Total: 99 clientes.
- Últimos 7 dias: 89 clientes.
- Status:
  - 82 Não Respondeu.
  - 12 Em Atendimento.
  - 4 Arquivado.
  - 1 Agendamento.

## Observação crítica
O cliente em status `Agendamento` possui registro de visita com status `Cancelado`. Portanto, para leitura comercial prática, há 0 agendamentos ativos, apesar de o status do cliente ainda estar como `Agendamento`.

## Fila manual dos 9 duplicados/histórico
Todos os 9 IDs autorizados foram processados com marcador do batch.
Resultado operacional:
- 3 enviados: 10967, 10971, 10975.
- 6 suprimidos na revalidação: 10974, 10976, 10979, 10996, 10998, 10999.
Motivo dominante das supressões: duplicidade/histórico anterior/risco de conflito com atendimento por outro corretor.

## Diagnóstico executivo
O gargalo principal não é só primeiro contato. A carteira acumula muitos clientes em Não Respondeu, e a meta de resposta/agendamento exige recuperação ativa da base, ajuste de cadência e aumento de proposta de valor antes da tentativa de visita.

## Distância da meta
- Meta de resposta 70% de 99 = 70 clientes com avanço.
- Avanços atuais pelo status: 13.
- Faltam 57 respostas/avanços.
- Meta de agendamento 10% de 99 = 10 agendamentos.
- Agendamentos ativos atuais: 0; pelo status bruto, 1.
- Faltam 10 agendamentos ativos, ou 9 se considerar o status bruto.

## Recomendação
1. Separar base Não Respondeu em enviados confirmados, sem prova forte de envio e falhas.
2. Rodar cadência de reengajamento, não novo primeiro contato, para enviados sem resposta.
3. Revisar manualmente os 19 sem prova forte de envio/resposta.
4. Corrigir inconsistência do cliente em Agendamento com visita cancelada.
5. Criar rotina diária de follow-up curto para converter Em Atendimento em visita presencial.
