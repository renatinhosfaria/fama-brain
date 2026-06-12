---
schema_version: 1
type: interaction
status: active
created: '2026-06-12'
updated: '2026-06-12'
source: agent-generated
author_agent: reno
tags:
  - reno
  - repescagem
  - whatsapp
  - production
  - crm
title: Repescagem step 2 enviada — cliente 11665
event_date: '2026-06-12'
occurred_at: '2026-06-12T14:21:19Z'
channel: whatsapp
participants:
  - Reno
  - Paula Fernandes
mentions_entity:
  - '[[reno-hub]]'
related:
  - '[[reno-hub]]'
  - 'cliente:11665'
confidence: 1
external_ids:
  client_id: '11665'
  crm_note_id: '19798'
  flow: repescagem
  step: '2'
  worker: reno-repescagem-message-queue-production
---
Relacionado: [[reno-hub]]

Reno executou a fila de Repescagem em produção para o cliente 11665 (Paula Fernandes), elegível por broker_id=35 e status `Não Respondeu`.

Decisão: send.
Fluxo: repescagem.
Step enviado: 2.
Mensagem enviada: "Oi, Paula! Pra eu te orientar sem te mandar opção fora da sua realidade: você já tem uma faixa de parcela que ficaria confortável por mês?"
Validação WhatsApp: envio confirmado pelo transporte via onWhatsApp, sem registrar JID completo ou message_id no vault.
CRM: nota operacional registrada e branch `meta_data.reno_followup.repescagem` atualizada para step=2, last_sent_at=2026-06-12T11:21:19-03:00, next_run_at=2026-06-13T14:20:00-03:00, stopped_reason=null.
Próximo passo: aguardar resposta; se permanecer sem resposta, a próxima janela oficial será o step 3 em 2026-06-13T14:20:00-03:00, respeitando a trava mínima de 18h.
