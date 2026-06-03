---
schema_version: 1
type: runbook
status: active
created: '2026-06-03'
updated: '2026-06-03'
source: human-curated
tags:
  - brain
  - vault
  - curadoria
  - mcp-obsidian
  - governanca
author_agent: renato
title: 'Runbook: curadoria do vault pelo Brain'
procedure_owner: brain
trigger: >-
  novo documento, solicitação de curadoria, auditoria de qualidade, saneamento
  PII, consolidação de notas ou melhoria de retrieval
---
# Runbook: curadoria do vault pelo Brain

## Objetivo

O Brain atua como curador central do `vault-obsidian`/`fama-brain`, operando obrigatoriamente via `mcp-obsidian` para transformar informação solta em memória operacional clara, navegável, conectada e reutilizável.

## Regra principal

O Brain deve buscar antes de criar, atualizar antes de duplicar, registrar curadoria relevante e fazer read-back via MCP depois de qualquer escrita.

## Escopo

O Brain pode atuar de forma transversal em:

- organização e classificação de documentos;
- melhoria de títulos, resumos, estrutura e metadados;
- criação e manutenção de hubs;
- detecção de duplicidade, sobreposição e complementaridade;
- consolidação de notas quando houver ganho real;
- saneamento e minimização de PII;
- melhoria de retrieval semântico e literal;
- registro de decisões curatoriais aprovadas;
- manutenção de logs de curadoria.

## Guardrails

O Brain não deve:

- operar fora do `mcp-obsidian` para escrever no vault;
- recriar `_agents/` como namespace ativo;
- expor telefone completo, WhatsApp JID, email, CPF, segredo ou payload bruto;
- alterar materialmente decisões antigas sem decisão nova ou autorização explícita;
- mudar schema ou ownership sem autorização explícita do Renato;
- deduplicar entidade ambígua sem confirmação;
- transformar inferência em fato durável.

## Fluxo obrigatório para novo documento

1. Identificar tipo de memória: entidade, evento, decisão, runbook, hub, projeto, contexto ou meta.
2. Buscar semanticamente por intenção/conceito.
3. Buscar literalmente por nome, path, ID, slug ou termos exatos.
4. Ler notas candidatas com `read_note` antes de decidir.
5. Classificar e arquivar no destino correto.
6. Reescrever/enriquecer preservando intenção original.
7. Criar links internos úteis e registrar incertezas.
8. Registrar curadoria relevante em `_journal/brain/`.
9. Fazer read-back via MCP.

## Fluxo para PII

1. Usar `scan_sensitive_data` para mapear achados sem expor valores brutos.
2. Priorizar arquivos por risco e valor operacional.
3. Substituir PII por marcadores específicos quando a informação bruta não for indispensável.
4. Preservar rastreabilidade por entidade, ID interno, data e wikilinks.
5. Registrar lote saneado em journal de curadoria.

## Fluxo para hubs

1. Buscar hub existente antes de criar.
2. Hubs devem navegar, não duplicar conteúdo fonte.
3. Linkar decisões, runbooks, entidades, projetos e contextos centrais.
4. Remover links artificiais ou pouco úteis quando houver revisão autorizada.

## Fluxo para consolidações

1. Confirmar que notas tratam do mesmo sujeito ou de sobreposição real.
2. Separar fato, histórico, decisão e procedimento antes de unir.
3. Preservar links e proveniência.
4. Não consolidar quando houver ambiguidade de entidade ou conflito de fonte sem confirmação.

## Fluxo para retrieval

1. Usar `semantic_search` para descoberta conceitual.
2. Usar `search_content` para strings, IDs, paths e políticas exatas.
3. Usar `read_note` como evidência canônica.
4. Validar mudanças importantes com golden queries.
5. Reindexar semanticamente quando notas importantes forem criadas/alteradas e a recuperação imediata depender disso.

## Log de curadoria

Toda intervenção relevante deve registrar:

- documento de origem;
- ações tomadas;
- documentos criados, movidos, renomeados, consolidados ou atualizados;
- documentos relacionados;
- motivo da mudança;
- pendências, incertezas e interpretações assumidas.

Destino preferencial: `_journal/brain/YYYY-MM-DD-{slug}.md`.

## Ver também

- [[brain-hub]]
- [[_shared/context/AGENTS]]
- [[schema]]
- [[retrieval-policy]]
- [[pii-redaction-policy]]
- [[golden-queries]]
- [[2026-06-03-brain-como-curador-central-do-vault-obsidian]]
