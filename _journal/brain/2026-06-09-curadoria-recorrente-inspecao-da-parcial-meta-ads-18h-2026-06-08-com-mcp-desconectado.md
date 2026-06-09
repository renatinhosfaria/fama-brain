---
schema_version: 1
type: interaction
status: active
created: '2026-06-08'
updated: '2026-06-08'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - cron
  - meta-ads
  - marketing
  - mcp-failure
  - log-curadoria
title: >-
  Curadoria recorrente — inspeção da parcial Meta Ads 18h 2026-06-08 com MCP
  desconectado
event_date: '2026-06-09'
occurred_at: '2026-06-09T01:08:18Z'
channel: cron-curadoria
participants:
  - Brain
mentions_entity:
  - brain
  - marketing-hub
  - marketing-vault-operacao
  - premissas-imobiliaria-mcmv-formularios-instantaneos
related:
  - _journal/marketing/2026-06-08-meta-ads-parcial-18h-2026-06-08.md
  - _journal/marketing/2026-06-08-meta-ads-consolidado-d-1-2026-06-07.md
  - >-
    _journal/brain/2026-06-08-curadoria-recorrente-inspecao-do-consolidado-meta-ads-d-1-2026-06-07.md
  - _hubs/marketing-hub.md
  - >-
    _shared/context/meta-ads/renato/premissas-imobiliaria-mcmv-formularios-instantaneos.md
confidence: 0.92
external_ids:
  curation_run: cron-brain-2026-06-09T01-08Z
  source_note: _journal/marketing/2026-06-08-meta-ads-parcial-18h-2026-06-08.md
---
## Escopo revisado

Rotina recorrente do Brain executada em 2026-06-09T01:08Z, cobrindo mudanças recentes desde 2026-06-08T00:00Z no `vault-obsidian` via MCP Obsidian.

Áreas inspecionadas:
- `_journal/marketing/` — novas análises Meta Ads do agente Marketing.
- `_journal/brain/` — logs de curadoria recentes para evitar duplicidade.
- `_shared/context/AGENTS.md` — ownership e limites territoriais.
- `_hubs/marketing-hub.md` e `_shared/context/meta-ads/renato/premissas-imobiliaria-mcmv-formularios-instantaneos.md` — contexto canônico relacionado.

## Documento de origem

- `_journal/marketing/2026-06-08-meta-ads-parcial-18h-2026-06-08.md`

## Classificação e arquivamento

- Tipo: `journal/interaction` operacional do agente Marketing.
- Tema: Meta Ads, análise parcial 18h, campanhas de formulário instantâneo para imóveis MCMV.
- Estado: ativo, `agent-generated`, confiança operacional declarada média; leitura sem métricas de campanha por bloqueio do servidor MCP `meta-ads` nesta execução.
- Local atual adequado: `_journal/marketing/`, pois é evento datado e pertence ao território primário do Marketing.
- Prioridade curatorial: média. O valor principal não é performance de mídia, mas evidência operacional de falha/indisponibilidade de leitura automática do Meta Ads.

## Reescrita e enriquecimento aplicado

- Não houve reescrita direta da nota de Marketing, respeitando ownership territorial.
- Interpretação curatorial adotada: a nota deve ser tratada como evidência de observabilidade/infra da rotina de Marketing, não como análise de performance de campanha.
- O conteúdo preserva corretamente a fronteira entre dado obtido e dado indisponível: não inventa gasto, leads, CPL, CTR, CPM ou projeções sem leitura real.
- Ainda não promovi o bloqueio para entidade/padrão durável em `_entities/`, porque só encontrei esta ocorrência recente específica. Se a falha do MCP `meta-ads` se repetir em múltiplas rotinas, pode valer criar um padrão operacional curado para incidentes de leitura Meta Ads.

## Relações úteis identificadas

- `[[marketing-hub]]` — ponto de entrada do território do Marketing.
- `[[marketing-vault-operacao]]` — runbook operacional do Marketing, especialmente para regras de escrita e análise.
- `[[premissas-imobiliaria-mcmv-formularios-instantaneos]]` — contexto estratégico que explica por que a leitura de leads de formulário é central.
- `_journal/marketing/2026-06-08-meta-ads-consolidado-d-1-2026-06-07.md` — consolidado imediatamente anterior; já havia sido curado pelo Brain.
- `_journal/brain/2026-06-08-curadoria-recorrente-inspecao-do-consolidado-meta-ads-d-1-2026-06-07.md` — log de curadoria relacionado ao consolidado D-1.

## Pendências e incertezas

- A nota de origem tinha 0 wikilinks e 0 backlinks no read-back. Sugestão para o agente Marketing, quando operar seu próprio território: incluir links para `[[marketing-hub]]`, `[[marketing-vault-operacao]]`, `[[premissas-imobiliaria-mcmv-formularios-instantaneos]]` e para o consolidado D-1 relacionado.
- Não confirmei se o MCP `meta-ads` voltou a funcionar depois da execução do Marketing; esta curadoria avaliou apenas a nota e o vault, não o estado atual do servidor Meta Ads.
- Não há base suficiente para decisão de orçamento, corte, escala ou ajuste de campanha a partir desta parcial.

## Verificação executada

- `mcp_obsidian_list_folder` em `_journal` e `_entities` desde 2026-06-08T00:00Z.
- `mcp_obsidian_get_shared_context_delta` e `mcp_obsidian_get_agent_delta` para deltas recentes.
- `mcp_obsidian_read_note` da nota de origem, do consolidado D-1, de `AGENTS.md`, de `marketing-hub` e da premissa Meta Ads/MCMV.
- `mcp_obsidian_semantic_search` sobre falha de conexão do MCP `meta-ads`.
- `mcp_obsidian_search_content` em `_journal/brain` para evitar duplicar log sobre a parcial 18h de 2026-06-08.

## Ações tomadas

- Nenhuma nota de Marketing foi alterada.
- Criado este log no território primário do Brain para preservar rastreabilidade, classificação, interpretação e conexões sugeridas sem violar ownership.
