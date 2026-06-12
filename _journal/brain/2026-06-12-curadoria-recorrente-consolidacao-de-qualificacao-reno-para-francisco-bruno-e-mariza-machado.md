---
schema_version: 1
type: interaction
status: active
created: '2026-06-12'
updated: '2026-06-12'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - cron
  - reno
  - entities
  - crm-verified
  - log-curadoria
title: >-
  Curadoria recorrente — consolidação de qualificação Reno para Francisco Bruno
  e Mariza Machado
event_date: '2026-06-12'
occurred_at: '2026-06-12T08:12:00Z'
channel: cron-curadoria
participants:
  - Brain
mentions_entity:
  - brain
  - reno-hub
  - francisco-bruno
  - mariza-machado
related:
  - _entities/francisco-bruno.md
  - _entities/mariza-machado.md
  - '[[reno-hub]]'
confidence: 0.95
external_ids:
  curation_run: cron-brain-2026-06-12T08-07Z
  crm_client_ids: '11680,11684'
  changed_notes: '_entities/francisco-bruno.md,_entities/mariza-machado.md'
---
## Escopo revisado
- Janela operacional: 2026-06-11T08:07Z a 2026-06-12T08:07Z.
- Áreas inspecionadas: deltas de `_journal/brain`, `_journal/reno`, `_entities`, contexto compartilhado e CRM/FamaChat para os clientes 11680 e 11684.

## Documentos de origem
- `_entities/francisco-bruno.md`
- `_entities/mariza-machado.md`
- Journals Reno recentes sobre Francisco Bruno: pedidos de planta/fotos, perguntas sobre suíte/varanda/churrasqueira, resposta “atende bem” e reforço de necessidade de ver planta/condomínio/torre.
- Journals Reno recentes sobre Mariza Machado: critérios de bairros, compra à vista condicionada à venda de terreno, recusa de térreo, entrega curta/confiável, faixa de preço/condomínio e promessa de enviar prints/nomes de opções.
- CRM/FamaChat consultado para `client_id=11680` e `client_id=11684`; ambos com status preservado como Em Atendimento na leitura desta curadoria.

## Ações tomadas
1. Classificar e arquivar
   - Mantive as entidades canônicas em `_entities/francisco-bruno.md` e `_entities/mariza-machado.md`.
   - Não movi nem renomeei documentos porque os slugs humanos já eram canônicos e tinham backlinks relevantes.
   - Classifiquei Francisco como lead Reno/Union Vereda com aderência inicial ao produto e pendência de material visual/viabilidade.
   - Classifiquei Mariza como lead Reno de curadoria de imóveis para compra à vista, com critérios concretos e alta utilidade operacional.

2. Reescrever e enriquecer
   - Reescrevi `_entities/francisco-bruno.md` com resumo curado, classificação, interesse atual, objeções/cuidados, próximo passo e interpretação assumida.
   - Reescrevi `_entities/mariza-machado.md` substituindo o estado genérico anterior por uma síntese completa dos critérios comerciais recentes.
   - Adicionei tags `crm-verified` e `curado-brain`, e atualizei campos semânticos (`interesse_atual`, `objecoes_ativas`, `proximo_passo`, `status_comercial`).

3. Relacionar com o brain existente
   - Criei/fortaleci links para `[[reno-hub]]` e journals Reno específicos que justificam as consolidações.
   - Relacionei Francisco aos journals de mídia/material do Union Vereda e Mariza aos journals de curadoria de imóveis, bairros, entrega, compra à vista e prints/nomes de opções.

## Documentos alterados
- `_entities/francisco-bruno.md`
- `_entities/mariza-machado.md`

## Motivo da mudança
As entidades estavam úteis, mas defasadas em relação aos múltiplos journals operacionais recentes. A curadoria consolidou informação fragmentada em perfis navegáveis para contexto futuro, sem transformar cada mensagem curta em tarefa autônoma.

## Pendências e incertezas
- Francisco: ainda falta validação comercial de forma de compra, entrada, financiamento, FGTS e confirmação de detalhes por unidade/material oficial.
- Mariza: ainda depende do envio dos prints/nomes das opções e da conferência real de disponibilidade, andar, bairro, condomínio, prazo de entrega e negociação à vista.
- Validação do vault apontou achado fora do escopo desta intervenção: `_shared/goals/2026-06/renato.md` sem `schema_version: 1`. Não alterei por estar fora da curadoria aplicada nesta rodada e potencialmente em território compartilhado/renato.

## Verificação executada
- Read-back de `_entities/francisco-bruno.md` confirmou frontmatter, corpo e links atualizados.
- Read-back de `_entities/mariza-machado.md` confirmou frontmatter, corpo e links atualizados.
- `mcp_obsidian_validate_vault` executado; retorno: 1 finding pré-existente/fora do escopo em `_shared/goals/2026-06/renato.md`.
