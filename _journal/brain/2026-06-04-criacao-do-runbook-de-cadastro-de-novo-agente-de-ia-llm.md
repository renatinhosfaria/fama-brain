---
schema_version: 1
type: interaction
status: active
created: '2026-06-04'
updated: '2026-06-04'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - vault
  - agentes
  - governanca
  - log-curadoria
title: Criação do runbook de cadastro de novo agente de IA/LLM
event_date: '2026-06-04'
channel: telegram
participants:
  - Renato
  - Brain
mentions_entity:
  - brain
  - _shared/context/AGENTS
  - brain-cadastro-novo-agente-ia
related:
  - '[[brain-cadastro-novo-agente-ia]]'
  - '[[brain-vault-curadoria]]'
  - '[[brain-hub]]'
  - '[[_shared/context/AGENTS]]'
confidence: 1
---
## Contexto

Renato perguntou se seria interessante criar um procedimento para cadastrar novo agente de IA/LLM no `vault-obsidian` quando uma nota criada por origem desconhecida for identificada.

## Interpretação adotada

A solicitação foi tratada como aprovação para criar um runbook operacional durável do Brain, porque o tema define governança recorrente, ownership e onboarding de agentes.

## Ações tomadas

- Buscados procedimentos existentes sobre cadastro/bootstrap de agentes e notas de agentes desconhecidos; não foi encontrado runbook específico.
- Lidos documentos relacionados:
  - [[brain-vault-curadoria]]
  - [[brain-hub]]
  - [[_shared/context/AGENTS]]
  - [[_runbooks/README]]
  - [[_runbooks/index]]
- Criado o runbook [[brain-cadastro-novo-agente-ia]].
- Atualizado [[brain-vault-curadoria]] com referência ao novo procedimento para agente desconhecido.
- Atualizado [[brain-hub]] com seção de onboarding e governança de agentes.

## Documentos criados/alterados

- Criado: [[brain-cadastro-novo-agente-ia]]
- Atualizado: [[brain-vault-curadoria]]
- Atualizado: [[brain-hub]]

## Pendências e limites

- A tentativa de atualizar [[_runbooks/index]] foi bloqueada por ownership, pois o arquivo é de Renato. Não foi forçada alteração com outro agente.
- O novo runbook define que alterações materiais de ownership/schema e concessão de autonomia relevante devem ser escaladas para Renato.

## Verificação planejada

- Fazer read-back do novo runbook e das notas relacionadas.
- Validar o vault porque houve criação de runbook e atualização de hub/runbook.
