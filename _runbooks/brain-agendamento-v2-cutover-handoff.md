---
schema_version: 1
type: runbook
status: active
created: '2026-06-17'
updated: '2026-06-17'
source: agent-generated
tags:
  - brain
  - curadoria
  - reno
  - agendamento-v2
  - whatsapp
  - handoff
  - ownership
author_agent: brain
title: Brain — handoff de curadoria para Agendamento v2 / cutover WhatsApp Reno
procedure_owner: brain
trigger: >-
  Quando journals do Reno registrarem novos sinais sobre Agendamento v2, cutover
  live ou saúde do WhatsApp e o Brain não puder escrever no runbook reno-* por
  ownership.
---
[[brain-hub]] [[reno-hub]]

## Função desta nota

Esta é uma nota de handoff curatorial do Brain, não o runbook operacional primário do Reno. Ela existe para preservar continuidade enquanto a consolidação ideal em `_runbooks/reno-agendamento-v2-cutover.md` permanece bloqueada por ownership.

## Classificação

- Tipo: runbook/handoff de curadoria interagente.
- Tema: Reno / Workflows v2 / Agendamento v2 / cutover WhatsApp.
- Estado: ativo como índice temporário de curadoria; não substitui decisão operacional do Reno.
- Prioridade: média-alta para continuidade, porque evita que os journals recentes fiquem desconectados.

## Estado curado até 2026-06-17

- O E2E da Task 27 foi registrado como aprovado em journal do Reno.
- O cutover live segue não concluído porque a saúde/conexão do WhatsApp Reno não estava comprovada nos registros recentes.
- Há ao menos três registros complementares do Reno em 2026-06-16:
  - [[2026-06-16-agendamento-v2-cutover-deixado-pendente-por-whatsapp-instavel]]
  - [[2026-06-16-agendamento-v2-e2e-aprovado-cutover-live-bloqueado-por-whatsapp]]
  - [[2026-06-16-go-no-go-agendamento-v2-no-go-por-whatsapp-desconectado]]
- Guardrail central: **E2E aprovado não equivale a cutover live concluído**.

## Relações úteis

- [[reno-hub]] — território operacional primário do Reno.
- [[brain-hub]] — curadoria e governança do vault.
- [[2026-06-16-curadoria-recorrente-agendamento-v2-identificado-para-consolidacao-bloqueado-por-ownership-reno]] — log anterior do Brain registrando a consolidação ideal bloqueada por ownership.
- [[2026-06-17-curadoria-recorrente-desambiguacao-de-entidade-renato-faria-como-teste-interno-reno-workflows-v2]] — contexto de desambiguação do cliente/teste interno usado em validações Reno.

## Procedimento de retomada curatorial

1. Inspecionar novos journals de `_journal/reno/` sobre `agendamento-v2`, `cutover`, `whatsapp`, `observe` e `no-go`.
2. Se o Reno criar `_runbooks/reno-agendamento-v2-cutover.md`, tratar esta nota como handoff supersedável e apontar para o runbook Reno.
3. Se a ownership continuar bloqueando a escrita em `reno-*`, registrar novo log em `_journal/brain/` sem tentar workaround.
4. Não inferir saúde atual do WhatsApp apenas por estado de gateway ou cron; exigir evidência operacional fresca no território Reno ou verificação técnica explícita.

## Pendência aberta

A consolidação canônica recomendada continua sendo um runbook do Reno com checklist de go/no-go, critério de retomada e distinção entre E2E validado e cutover live. Esta nota apenas torna a pendência navegável para buscas futuras.
