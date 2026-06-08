---
type: entity
name: Reno - WhatsApp alvo não resolvido
entity_type: operational-pattern
aliases:
  - whatsapp_target_unresolved
  - whatsapp_unresolved_target
  - whatsapp_unresolvable
  - delivery_failed
  - whatsapp_delivery_failed
  - alvo WhatsApp não resolvido
  - contato WhatsApp não resolvido
  - falha de entrega WhatsApp
external_ids:
  reno_stopped_reasons: >-
    whatsapp_target_unresolved;whatsapp_unresolved_target;whatsapp_unresolvable;whatsapp_delivery_failed;delivery_failed
mentions_entity:
  - reno-hub
related:
  - '[[reno-hub]]'
  - '[[2026-04-28-reno-guardrail-whatsapp-nono-digito]]'
  - '[[reno-operacao-crm-webhook]]'
  - '[[atendimento-reno-cliente-11603-liberty-martins-sousa]]'
  - '[[atendimento-reno-cliente-11607-marcos-felipe]]'
  - '[[atendimento-reno-cliente-11611-vanessa]]'
  - '[[atendimento-reno-cliente-11605-juliana-teixeira]]'
  - '[[atendimento-reno-cliente-11610-maria-clara-marcal]]'
  - '[[atendimento-reno-cliente-11609-wellington-souza]]'
  - '[[2026-06-06-repescagem-bloqueada-por-alvo-whatsapp-nao-resolvido]]'
  - '[[2026-06-06-repescagem-step-2-bloqueada-por-alvo-whatsapp-nao-resolvido]]'
  - '[[2026-06-06-repescagem-whatsapp-encerrada-por-contato-nao-resolvido]]'
  - >-
    [[2026-06-07-resgate-interrompido-por-whatsapp-sem-alvo-resolvido-juliana-teixeira]]
  - '[[2026-06-05-repescagem-falhou-maria-clara-marcal-cliente-11610]]'
  - '[[2026-06-07-repescagem-falhou-wellington-souza-cliente-11609]]'
confidence: 0.91
verified_by: null
schema_version: 1
status: active
created: '2026-06-07'
updated: '2026-06-07'
source: agent-generated
tags:
  - reno
  - whatsapp
  - operational-pattern
  - follow-up
  - delivery-failure
  - curado-brain
author_agent: brain
---
# Reno - WhatsApp alvo não resolvido

## Resumo curado
Padrão operacional do Reno em que a tentativa de envio por WhatsApp chega a testar as variações permitidas de alvo/identificador — incluindo JID cadastrado e variação brasileira com ou sem nono dígito quando aplicável — mas o conector/bridge não resolve um destinatário válido ou não confirma entrega. O fluxo de follow-up é então encerrado/desativado com registro objetivo no CRM e status comercial preservado.

Esta entidade existe para impedir que falhas de entrega sejam interpretadas como desinteresse do lead e para conectar casos recorrentes a uma política operacional única. A taxonomia técnica ainda aparece fragmentada nos journals/CRM (`whatsapp_target_unresolved`, `whatsapp_unresolved_target`, `whatsapp_unresolvable`, `whatsapp_delivery_failed`, `delivery_failed`); a equivalência aqui é operacional e de curadoria, não afirma identidade perfeita no código.

## Classificação
- Tipo: padrão operacional (`operational-pattern`).
- Tema: Reno / WhatsApp / follow-up / entrega / guardrail com nono dígito.
- Estado: ativo como padrão de curadoria; CRM/FamaChat continua sendo fonte operacional de verdade para cada cliente.
- Prioridade: média-alta — afeta leitura comercial de múltiplos atendimentos e pode mascarar necessidade de revisão técnica/manual de contato.

## Política relacionada
- [[2026-04-28-reno-guardrail-whatsapp-nono-digito]]: Renato definiu que o Reno deve tentar as formas tentáveis antes de registrar falha; se falhar, preservar status e registrar motivo no CRM.
- [[reno-operacao-crm-webhook]]: runbook operacional exige validação CRM, tentativa de envio conforme política de WhatsApp e journal/registro quando houver falha objetiva.

## Casos relacionados observados
- [[atendimento-reno-cliente-11603-liberty-martins-sousa]] — repescagem encerrada por alvo WhatsApp não resolvido.
- [[atendimento-reno-cliente-11607-marcos-felipe]] — repescagem encerrada por alvo WhatsApp não resolvido.
- [[atendimento-reno-cliente-11611-vanessa]] — repescagem encerrada porque o WhatsApp não resolveu o contato após variações tentáveis.
- [[atendimento-reno-cliente-11605-juliana-teixeira]] — resgate encerrado em step 4 sem envio validado por `whatsapp_target_unresolved`.
- [[atendimento-reno-cliente-11610-maria-clara-marcal]] — repescagem encerrada com `whatsapp_delivery_failed` após variações de contato sem entrega concluída.
- [[atendimento-reno-cliente-11609-wellington-souza]] — repescagem encerrada com `delivery_failed`; descrição operacional indica falha de resolução/entrega após alvo CRM e fallback com nono dígito.

## Interpretação operacional
A ocorrência deve ser tratada como falha técnica/operacional de entrega ou resolução de destino, não como objeção, silêncio intencional ou perda de interesse. O status comercial do cliente deve ser lido a partir do CRM e das interações anteriores.

## Guardrails de uso futuro
- Não rearmar automação apenas com base no vault; validar CRM/FamaChat primeiro.
- Revisar alvo/contato antes de nova tentativa.
- Se houver múltiplas ocorrências em janela curta, investigar qualidade do normalizador, bridge WhatsApp e política de JID/nono dígito.
- Se o cliente voltar inbound, retomar a partir do contexto comercial curado, não a partir da falha técnica.

## Links relacionados
- [[reno-hub]]
- [[2026-04-28-reno-guardrail-whatsapp-nono-digito]]
- [[reno-operacao-crm-webhook]]
- [[2026-06-06-repescagem-bloqueada-por-alvo-whatsapp-nao-resolvido]]
- [[2026-06-06-repescagem-step-2-bloqueada-por-alvo-whatsapp-nao-resolvido]]
- [[2026-06-06-repescagem-whatsapp-encerrada-por-contato-nao-resolvido]]
- [[2026-06-07-resgate-interrompido-por-whatsapp-sem-alvo-resolvido-juliana-teixeira]]
- [[2026-06-05-repescagem-falhou-maria-clara-marcal-cliente-11610]]
- [[2026-06-07-repescagem-falhou-wellington-souza-cliente-11609]]
