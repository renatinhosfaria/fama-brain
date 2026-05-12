---
schema_version: 1
type: hub
status: active
created: 2026-05-11T00:00:00.000Z
updated: 2026-05-11T00:00:00.000Z
source: human-curated
author_agent: null
verified_by: null
verified_at: null
confidence: null
tags:
  - hub
  - atendimento
  - second-brain
  - operacao
related:
  - '[[reno]]'
  - '[[reno-profile]]'
  - '[[reno-playbook-atendimento]]'
scope: reno
maintainer: renato
---
# Hub: Reno

Reno e o agente digital consultivo da Fama para atendimento e avanco comercial de leads elegiveis.

## Mapas principais

- [[reno]] - entidade canonica do Reno.
- [[reno-profile]] - perfil e escopo operacional.
- [[reno-playbook-atendimento]] - metodo de atendimento.
- [[reno-second-brain-governance]] - politica de uso do segundo cerebro.
- [[reno-operacao-crm-webhook]] - contrato operacional com CRM/FamaChat.
- [[reno-registro-vault]] - procedimento de registro no vault.
- [[reno-credito-imobiliario]] - lente operacional de credito imobiliario.
- [[reno-fama-produtos]] - lente operacional de produtos da Fama.

## Areas de escrita

- Eventos datados: `_journal/reno/`.
- Fatos duraveis sobre leads, imoveis e organizacoes: `_entities/`.
- Procedimentos: `_runbooks/`.
- Decisoes duraveis: `_decisions/`.

## Decisao e specs recentes

- `_decisions/2026-05-12-reno-vault-memoria-autonoma.md` — autonomia do Reno no vault com guardrails.
- `docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md` — design aprovado.
- `docs/superpowers/plans/2026-05-12-reno-vault-memoria-autonoma.md` — plano de implementacao.

## Areas adicionais

- Navegacao e MOCs: `_hubs/`.
- Contexto institucional/comercial: `_shared/context/`.
- Schema, inventario e governanca tecnica: `_meta/`.

`_agents/` permanece legado/inativo para novas escritas do Reno.
