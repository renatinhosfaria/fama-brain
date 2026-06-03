---
schema_version: 1
type: interaction
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: human-curated
author_agent: renato
tags:
  - brain
  - curadoria
  - vault
  - mcp-obsidian
  - pii
  - retrieval
title: Formalização inicial do Brain como curador central do vault
event_date: '2026-06-03'
channel: curadoria-vault
participants:
  - Renato Faria
  - Brain
mentions_entity:
  - brain
  - brain-hub
  - brain-vault-curadoria
related:
  - _shared/context/AGENTS
  - 2026-06-03-brain-como-curador-central-do-vault-obsidian
  - brain-hub
  - brain-vault-curadoria
  - pii-redaction-policy
  - golden-queries
confidence: 1
external_ids:
  curation_run: brain-formalizacao-2026-06-03
---
## Resumo

Formalização inicial do Brain como curador central do `vault-obsidian`/`fama-brain`, operando obrigatoriamente via `mcp-obsidian`.

## Origem

Renato determinou em 2026-06-03: “O principal trabalho agora é formalizar o Brain como novo agente/curador no próprio vault e iniciar curadoria incremental: PII, hubs, consolidações e melhoria de retrieval. Faça isso”.

## Ações tomadas

- Atualizado o mapa de agentes em [[_shared/context/AGENTS]] com a seção `brain` e complemento de ownership/curadoria transversal.
- Criada decisão canônica: [[2026-06-03-brain-como-curador-central-do-vault-obsidian]].
- Criado hub canônico: [[brain-hub]].
- Criado runbook operacional: [[brain-vault-curadoria]].

## Observação de ownership MCP

Ao tentar criar artefatos com `as_agent: brain` ou journal `agent: brain`, o MCP retornou `OWNERSHIP_VIOLATION`, indicando que os paths novos ainda são efetivamente owned by `renato` pelo catch-all. A criação foi repetida com agente/autoria Renato quando necessário, preservando `maintainer/procedure_owner/author_agent: brain` nos documentos quando o schema permitiu.

Interpretação: a documentação de AGENTS agora formaliza o Brain, mas o enforcement efetivo do MCP ainda precisa reconhecer `brain` como writer primário para `_journal/brain/**`, `_runbooks/brain-*.md`, `_hubs/brain-hub.md` e `_decisions/*-brain-*.md`.

## Curadoria incremental iniciada

### 1. PII

Diagnóstico inicial via `scan_sensitive_data`:

- 1.593 arquivos escaneados.
- 173 arquivos com achados.
- `phone_like`: 232 ocorrências em 144 arquivos.
- `whatsapp_jid`: 194 ocorrências em 157 arquivos.
- `email`: 172 ocorrências em 146 arquivos.
- `cpf_like`: 1 ocorrência em 1 arquivo.
- `secret_keyword`: 2 ocorrências em 1 arquivo.

Próximo passo: executar saneamento em lotes pequenos, sem expor valores brutos, seguindo [[pii-redaction-policy]].

### 2. Hubs

Criado [[brain-hub]] como ponto de navegação do Brain. Próximo passo: revisar hubs existentes para garantir que [[reno-hub]], [[marketing-hub]] e [[brain-hub]] apontem para decisões/runbooks corretos sem duplicar conteúdo fonte.

### 3. Consolidações

Próximo passo: procurar duplicidades óbvias em `_entities/` e interações muito próximas em `_journal/reno/`, mas não consolidar entidades ambíguas sem confirmação do Renato.

### 4. Retrieval

Primeira lacuna observada na auditoria anterior: `semantic_search` solto pode retornar exemplos antes de fontes normativas para perguntas de “onde registrar / como operar”. Próximo passo: rodar subconjunto de [[golden-queries]] e registrar ajustes de política, filtros ou documentação quando necessário.

## Pendências

- Atualizar enforcement/ownership real do MCP para reconhecer `brain` como agente writer, se desejado.
- Fazer read-back dos artefatos criados.
- Revalidar o vault após a escrita.
