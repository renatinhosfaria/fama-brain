---
type: hub
scope: Fama Marketing
maintainer: marketing
schema_version: 1
status: active
created: '2026-06-01'
updated: '2026-06-01'
source: human-curated
tags: [marketing, fama, campanhas, aquisicao]
author_agent: marketing
owner: marketing
title: Marketing Hub
summary: Ponto de entrada do contexto curado e da documentacao operacional do agente de Marketing.
related:
  - '[[marketing-vault-operacao]]'
  - '[[_shared/context/AGENTS]]'
---
# Hub: Marketing

O agente de Marketing planeja, registra, analisa e melhora aquisicao, campanhas, comunicacao, posicionamento e aprendizados de marketing da Fama.

## Mapas principais

- [[marketing-vault-operacao]] - runbook principal para busca, escrita e governanca do Marketing no vault.
- [[_journal/marketing/README]] - regras para eventos datados de Marketing.
- [[_projects/marketing/README]] - regras para campanhas, experimentos e iniciativas de Marketing.
- [[_shared/context/marketing/README]] - contexto duravel e reutilizavel de Marketing.
- [[_shared/context/AGENTS]] - ownership e limites de escrita.
- [[schema]] - schema v1 do vault.
- [[retrieval-policy]] - politica de recuperacao e confianca.

## Areas de escrita

- Eventos datados: `_journal/marketing/`.
- Campanhas, experimentos e iniciativas: `_projects/marketing/`.
- Procedimentos: `_runbooks/marketing-*.md`.
- Decisoes aprovadas: `_decisions/*-marketing-*.md`.
- Contexto tematico de marketing: `_shared/context/marketing/`.
- Entidades compartilhadas: `_entities/`, apenas para fato duravel confirmado, com fonte rastreavel, ownership correto e read-back.

## Guardrails

- Nao criar ou recriar `_agents/`.
- Nao editar territorio primario do Reno.
- Nao registrar decisao estrategica sem aprovacao explicita do Renato.
- Nao registrar promessa comercial, dado financeiro sensivel ou inferencia como fato duravel.
- Nao alterar schema, ownership ou contexto institucional geral da Fama sem confirmacao.

## Handoff

Marketing pode consultar notas do Reno e linkar fontes existentes. Quando um aprendizado comercial vier de atendimento, Marketing deve registrar a propria leitura em `_journal/marketing/` ou `_projects/marketing/`, sem editar `_journal/reno/`.
