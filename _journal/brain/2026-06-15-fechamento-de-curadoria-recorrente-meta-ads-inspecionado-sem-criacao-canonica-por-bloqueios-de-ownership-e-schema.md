---
schema_version: 1
type: interaction
status: active
created: '2026-06-15'
updated: '2026-06-15'
source: agent-generated
author_agent: brain
tags:
  - brain
  - curadoria
  - cron
  - marketing
  - meta-ads
  - ownership
  - schema
  - log-curadoria
title: >-
  Fechamento de curadoria recorrente — Meta Ads inspecionado sem criação
  canônica por bloqueios de ownership e schema
event_date: '2026-06-15'
occurred_at: '2026-06-15T23:57:00+02:00'
channel: cron-curadoria
participants:
  - Brain
mentions_entity:
  - brain
  - marketing-hub
related:
  - '[[marketing-hub]]'
  - '[[2026-06-14-meta-ads-consolidado-d-1-2026-06-14]]'
  - '[[2026-06-15-meta-ads-parcial-18h-2026-06-15]]'
  - '[[_projects/famachat/integracoes]]'
confidence: 0.95
external_ids:
  curation_run: cron-brain-2026-06-15T23-37+02-closeout
---
## Escopo revisado
Fechamento corretivo da rotina recorrente de 2026-06-15T23:37+02:00.

Áreas inspecionadas:
- `_journal/marketing/` — especialmente os registros de Meta Ads de 2026-06-14 D+1 e 2026-06-15 parcial 18h.
- `_journal/brain/` — logs recentes para evitar duplicidade.
- `_entities/` — varredura de recentes.
- `_shared/context/AGENTS.md`, `_journal/marketing/README.md` e `[[marketing-hub]]` — governança e ownership.

## Documentos de origem
- `_journal/marketing/2026-06-14-meta-ads-consolidado-d-1-2026-06-14.md`
- `_journal/marketing/2026-06-15-meta-ads-parcial-18h-2026-06-15.md`
- `_journal/marketing/README.md`
- `_hubs/marketing-hub.md`
- `_shared/context/AGENTS.md`

## Ações efetivamente realizadas
1. Classifiquei os registros recentes de Meta Ads como eventos operacionais recorrentes de Marketing com sinais úteis para contexto futuro, mas sem força de decisão estratégica.
2. Preservei os journals originais de Marketing sem edição, por serem eventos write-once e território primário do agente Marketing.
3. Registrei neste journal do Brain a síntese mínima reutilizável dos padrões observados, em vez de criar nota canônica fora do território autorizado.
4. Registrei explicitamente que tentativas anteriores desta rodada de criar síntese em `_shared/context/marketing/**`, `_shared/context/brain/**` e `_projects/brain/**` foram bloqueadas por ownership/routing/schema; portanto, não há nota canônica criada fora de `_journal/brain/` nesta rodada.

## Síntese curada preservada neste log
- KPI primário mais confiável nos registros lidos: lead de formulário / `onsite_conversion.lead_grouped`; a ação genérica `lead` aparece inflada e pode distorcer CPL.
- A estrutura recorrente recente aparece como 4 campanhas ativas/relevantes de formulário/leads associadas a Arbi, Vista, Vereda e Garden Sul.
- Públicos ABERTO sustentaram melhor eficiência relativa em recortes recentes; LLA teve entrega, mas com pior CPL em alguns registros.
- Garden Sul teve sinais pontuais de lead barato, mas com volume/entrega muito baixos; não deve ser tratado como vencedor sem amostra maior.
- Variações por empreendimento são fortes de um dia para outro; para decisões materiais, preferir consolidado D+1 ao parcial das 18h.
- Problemas de entrega/seleção sob cost cap aparecem como gargalo relevante, além de orçamento.

## Relações úteis
- [[marketing-hub]]
- [[2026-06-14-meta-ads-consolidado-d-1-2026-06-14]]
- [[2026-06-15-meta-ads-parcial-18h-2026-06-15]]
- [[_projects/famachat/integracoes]]

## Pendências e incertezas
- Se essa síntese deve virar contexto canônico em `_shared/context/marketing/**`, o owner `marketing` precisa promovê-la ou Renato precisa ajustar/autorizá-la explicitamente.
- Os journals de origem têm trust de agente não verificado; trate os padrões como leitura operacional, não como decisão validada.
- Os wrappers `mcp_obsidian_*` da sessão estavam indisponíveis; como `hermes --profile brain mcp test obsidian` conectou, usei MCP direto StreamableHTTP sem expor credenciais.
- Este log corrige e deve prevalecer sobre os logs intermediários desta mesma rodada que mencionaram notas canônicas pretendidas mas não criadas por bloqueio de schema/ownership/routing.

## Verificação executada
- Read-back das notas de origem de Marketing e de governança.
- Buscas por contexto relacionado a Meta Ads, conta de anúncios e hub de Marketing.
- Tentativas de escrita bloqueadas foram verificadas por retorno estruturado do MCP.
- Read-back deste journal após criação.
- Validação targeted deste journal e validação de vault.
