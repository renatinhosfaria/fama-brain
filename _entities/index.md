---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-06-01'
status: active
tags:
  - entities
  - moc
  - perfis-canonicos
  - agentes
  - post-migration
provenance: human-curated
---
# `_entities/` — Perfis canônicos

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, não em arquivos separados. Quando o CRM tiver múltiplos cadastros para a mesma pessoa, use `external_ids.crm_client_ids: [array]` + `external_ids.crm_client_id_canonical: <id>`.

Vínculos de governança: [[schema]], [[retrieval-policy]], [[reno-atendimentos-migration-manifest-2026-05-11]].

## Propósito

`_entities/` guarda perfis consolidados de pessoas, organizações, propriedades e lugares. Eventos operacionais datados ficam em `_journal/{agent_id}/`; decisões ficam em `_decisions/`; procedimentos duráveis ficam em `_runbooks/`.

O CRM/FamaChat continua sendo a fonte operacional de verdade para status, broker, visitas, vendas e atendimento atual. Entidades no vault são memória curada e contexto recuperável.

## Campos atuais

Para novas entidades, seguir o alvo do [[schema]] v1:

- `type: entity` identifica a nota como entidade.
- `subtype` classifica a natureza da entidade.
- `aliases`, `relationships`, `external_ids` e `related` ajudam deduplicação e navegação.

Durante a transição pós-migração, algumas notas também preservam `entity_type` como campo de compatibilidade/importação. Esse campo não deve ser usado como critério único de validade: a combinação atual `type: entity` + `subtype` é suficiente para o modelo operacional vigente.

## Subtypes

- `person` — clientes, brokers, parceiros, funcionários, leads.
- `org` — construtoras, parceiros institucionais, fornecedores.
- `property` — imóveis, apartamentos, terrenos, lotes específicos e empreendimentos.
- `neighborhood` — bairros.
- `region` — regiões e zonas urbanas.
- `project` — projetos como entidades, raro; geralmente vai em `_projects/`.

## Estado atual em 2026-05-13

Auditoria por MCP/Obsidian durante a Fase 3 do plano pós-migração:

- Total atual de notas de entidade: **175** (`_entities/*.md`, excluindo `README.md` e `index.md`).
- Todas as 175 notas de entidade têm `type: entity` e `subtype` explícito.
- Distribuição por `subtype`:
  - `person`: **156**.
  - `property`: **8**.
  - `org`: **1**.
  - `neighborhood`: **8**.
  - `region`: **2**.
- Status: **172 active** / **3 archived**.
- Compatibilidade histórica: **157** notas ainda têm `entity_type` explícito; **18** notas importadas recentes usam `subtype` sem duplicar `entity_type`. Isso não é pendência funcional sob o schema v1 atual.

## Migração do Reno em 2026-05-11

Os atendimentos antigos do namespace legado de atendimentos do Reno foram migrados para modelo duplo:

- perfil consolidado em `_entities/`;
- evento operacional datado em `_journal/reno/`.

Quando houve duplicidade provável, a entidade canônica recebeu aliases e múltiplos IDs externos. Quando houve ambiguidade real, a nota manteve seção `## Ambiguidade` ou observação equivalente.

Status dos atendimentos migrados conforme manifesto e revisão pós-migração:

- 153 fontes de atendimento foram inventariadas.
- 152 fontes foram migradas ou special-migrated para o novo modelo.
- `whatsapp-lua` foi descartado por decisão de Renato em 2026-05-12; **não criar entidade nem journal** para esse item.
- `pending` normal no manifesto: 0.

Use o manifesto da migração e os eventos em `_journal/reno/` para navegar os atendimentos migrados. Este índice não tenta listar todos os 175 perfis.

## Uso em retrieval

- Para fato durável sobre cliente, empreendimento, bairro ou organização, priorizar a entidade canônica.
- Para sequência temporal de evento ou atendimento, usar `_journal/{agent_id}/`; para histórico migrado do Reno, usar `_journal/reno/`.
- Para origem/migração/histórico, usar o manifesto em `_meta/`.
- Para decisões e regras atuais, priorizar `_decisions/`, `_runbooks/` e [[retrieval-policy]].
- Specs/plans históricos em `docs/superpowers/**` podem explicar por que algo mudou, mas não substituem a governança atual.

## Histórico

Antes da migração Reno 2026-05-11, este índice descrevia uma curadoria menor de 60 perfis canônicos, incluindo 38 leads do Reno. Esses números eram uma fotografia operacional anterior, não o estado atual de `_entities/`.

Atualização de 2026-05-13: índice ajustado para o estado pós-migração, removendo `whatsapp-lua` da condição de pendência e clarificando que `subtype` é o campo operacional atual para classificação de entidades.

Atualizacao de 2026-06-01: indice alinhado ao modelo multiagent por territorios; `_journal/{agent_id}/` passa a ser o destino geral de eventos por agente, com `_journal/reno/` preservado como historico e territorio ativo do Reno.
