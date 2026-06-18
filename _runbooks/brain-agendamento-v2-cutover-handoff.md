---
schema_version: 1
type: runbook
status: active
created: '2026-06-17'
updated: '2026-06-18'
source: agent-generated
tags:
  - brain
  - curadoria
  - reno
  - agendamento-v2
  - whatsapp
  - evolution-go
  - handoff
  - ownership
author_agent: brain
title: Brain — handoff de curadoria para Agendamento v2 / cutover WhatsApp Reno
procedure_owner: brain
trigger: >-
  Quando journals/decisions do Reno registrarem novos sinais sobre Agendamento
  v2, cutover live, transporte WhatsApp/Evolution Go ou saúde do WhatsApp e o
  Brain não puder escrever no runbook reno-* por ownership.
mentions_entity:
  - brain
  - reno-hub
  - agendamento-v2
  - whatsapp-reno
  - Evolution Go
related:
  - '[[reno-hub]]'
  - '[[brain-hub]]'
  - '[[2026-06-17-reno-reno-whatsapp-transport-cutover-to-evolution-go]]'
  - '[[2026-06-16-agendamento-v2-cutover-deixado-pendente-por-whatsapp-instavel]]'
  - >-
    [[2026-06-16-agendamento-v2-e2e-aprovado-cutover-live-bloqueado-por-whatsapp]]
  - '[[2026-06-16-go-no-go-agendamento-v2-no-go-por-whatsapp-desconectado]]'
owner: brain
---
[[brain-hub]] [[reno-hub]] [[2026-06-17-reno-reno-whatsapp-transport-cutover-to-evolution-go]]

## Função desta nota

Esta é uma nota de handoff curatorial do Brain, não o runbook operacional primário do Reno. Ela existe para preservar continuidade enquanto a consolidação ideal em `_runbooks/reno-agendamento-v2-cutover.md` permanece bloqueada por ownership.

## Classificação

- Tipo: runbook/handoff de curadoria interagente.
- Tema: Reno / Workflows v2 / Agendamento v2 / cutover WhatsApp / transporte Evolution Go.
- Estado: ativo como índice temporário de curadoria; não substitui decisão operacional do Reno.
- Prioridade: média-alta para continuidade, porque evita que journals e decisões recentes fiquem desconectados.

## Estado curado até 2026-06-17

- O E2E da Task 27 foi registrado como aprovado em journal do Reno.
- O cutover live seguia não concluído nos registros de 2026-06-16 porque a saúde/conexão do WhatsApp Reno não estava comprovada.
- Em 2026-06-17, Renato registrou a decisão humana de que o Reno deve migrar o transporte operacional canônico de WhatsApp para **Evolution Go**: [[2026-06-17-reno-reno-whatsapp-transport-cutover-to-evolution-go]].
- Caminhos Hermes nativo/Baileys/bridge local passam a ser tratados como legado/diagnóstico, não fallback de produção sem autorização explícita.
- Há ao menos três registros complementares do Reno em 2026-06-16:
  - [[2026-06-16-agendamento-v2-cutover-deixado-pendente-por-whatsapp-instavel]]
  - [[2026-06-16-agendamento-v2-e2e-aprovado-cutover-live-bloqueado-por-whatsapp]]
  - [[2026-06-16-go-no-go-agendamento-v2-no-go-por-whatsapp-desconectado]]
- Guardrail central atualizado: **E2E aprovado não equivale a cutover live concluído; e qualquer retomada produtiva deve respeitar Evolution Go como transporte canônico, salvo autorização explícita em contrário**.

## Relações úteis

- [[reno-hub]] — território operacional primário do Reno.
- [[brain-hub]] — curadoria e governança do vault.
- [[2026-06-17-reno-reno-whatsapp-transport-cutover-to-evolution-go]] — decisão humana canônica sobre transporte WhatsApp do Reno.
- [[2026-06-16-curadoria-recorrente-agendamento-v2-identificado-para-consolidacao-bloqueado-por-ownership-reno]] — log anterior do Brain registrando a consolidação ideal bloqueada por ownership.
- [[2026-06-17-curadoria-recorrente-desambiguacao-de-entidade-renato-faria-como-teste-interno-reno-workflows-v2]] — contexto de desambiguação do cliente/teste interno usado em validações Reno.

## Procedimento de retomada curatorial

1. Inspecionar novos journals e decisões de `_journal/reno/` e `_decisions/` sobre `agendamento-v2`, `cutover`, `whatsapp`, `Evolution Go`, `observe` e `no-go`.
2. Se o Reno criar `_runbooks/reno-agendamento-v2-cutover.md`, tratar esta nota como handoff supersedável e apontar para o runbook Reno.
3. Se a ownership continuar bloqueando a escrita em `reno-*`, registrar novo log em `_journal/brain/` sem tentar workaround.
4. Não inferir saúde atual do WhatsApp apenas por estado de gateway, cron ou existência de decisão; exigir evidência operacional fresca no território Reno ou verificação técnica explícita.
5. Ao revisar automações Reno que enviem/recebam WhatsApp, checar se a implementação já está alinhada com Evolution Go antes de considerar qualquer fluxo como pronto para produção.

## Pendência aberta

A consolidação canônica recomendada continua sendo um runbook do Reno com checklist de go/no-go, critério de retomada, distinção entre E2E validado e cutover live, e agora também a decisão de transporte canônico via Evolution Go. Esta nota apenas torna a pendência navegável para buscas futuras.
