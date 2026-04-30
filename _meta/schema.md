---
type: shared-context
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
topic: vault
title: Schema v1 do vault FAM (RAG / Segundo cérebro)
tags:
  - meta
  - schema
  - governance
  - rag
schema_version: 1
status: active
source: human-curated
author_agent: VaultSteward
verified_by: null
verified_at: null
confidence: null
related:
  - '[[Hub: Vault governance]]'
---

> **AVISO OPERACIONAL (2026-04-30):** o frontmatter desta nota usa o schema **legado** (types: `moc`, `shared-context`, `entity-profile`, `journal`, etc.) porque o MCP `obsidian` ainda rejeita os types do schema v1 (`entity`, `decision`, `concept`, `reference`, `runbook`, `hub`, `interaction`, `project`) e exige datas em `YYYY-MM-DD` (não ISO-8601 com timezone). A migração só pode ser executada depois que o MCP for atualizado para aceitar v1. Ver [FAM-16](/FAM/issues/FAM-16) — blocker registrado e escalado.

# Schema v1 do vault FAM (RAG / Segundo cérebro)

**Status:** v1 **aprovada** mas **não enforçada ainda** (depende de MCP). Aprovada por Renato Faria (CEO) em [FAM-15](/FAM/issues/FAM-15) (revisão `0f1e41b5`). Substituirá o schema legado em `_shared/context/vault/ceo/schema.md` quando o MCP suportar v1.

Este documento é a **single source of truth** do schema. Toda nota do vault FAM, **uma vez migrada**, terá `schema_version: 1` e seguirá as regras abaixo.

---

## 0. Pré-requisitos técnicos (antes de aplicar v1 em massa)

1. **MCP `obsidian` aceitar novos types.** Lista canônica v1: `interaction | decision | entity | hub | journal | concept | reference | runbook | project`. Adicional: `goal`, `result`.
2. **MCP aceitar datas ISO-8601 com timezone** (ou manter YYYY-MM-DD se o CEO preferir simplicidade — decisão pendente).
3. **MCP aceitar campos extra** sem rejeitar (`schema_version`, `status`, `source`, `author_agent`, `verified_by`, `verified_at`, `confidence`, `mentions_entity`, `participants`, `decided_by`, `supersedes`, `superseded_by`, `implements`, `derives_from`, `related`, `aliases`, `relationships`, `external_ids`, `subtype`, `channel`, `valid_until`, `scope`, `maintainer`, `procedure_owner`, `trigger`, `goal`, `status_lifecycle`, `source_url`, `source_author`, `source_date`).
4. **Filtro `min_trust` no retrieve do MCP** (FAM-18).

---

## 1. Princípios não-negociáveis

1. **Atomic notes.** 1 conceito/fato/entidade por nota, 50–500 palavras.
2. **Self-contained chunks.** Cada nota e cada `##` é legível sem clicar em link nenhum.
3. **Dense bidirectional linking.** ≥3 outbound + ≥1 backlink por nota.
4. **Frontmatter como contrato.** YAML obrigatório, schema versionado.
5. **Hybrid retrieval-ready.** Vector + grafo + metadata + provenance.
6. **Provenance explícita.** Agente nunca trata `agent-generated` não verificado como ground truth.
7. **Frescor = correção.** `updated`, `status`, `supersedes`/`superseded_by`.
8. **Hubs (MOCs) emergentes.** Folders pra estado de ciclo de vida; hubs pra tópico.
9. **Mensurabilidade.** Golden query set + recall@5 antes/depois de cada mudança.

---

## 2. Folder convention + política de indexação

| Folder | Vetorizar? | Grafo? | Conteúdo |
|--------|-----------|--------|----------|
| `_curated/` | sim | sim | Ground truth (verified). Conceitos, references, contexto institucional. |
| `_projects/active/` | sim | sim | Trabalho em andamento. |
| `_projects/archived/` | não | sim | Histórico operacional, recuperável por link. |
| `_entities/` | sim | sim | Perfis canônicos (1 por entidade real). |
| `_hubs/` | sim | sim | MOCs (entidade, temático, tipo). |
| `_decisions/` | sim | sim | Decision log (1 nota por decisão). |
| `_runbooks/` | sim | sim | Procedimentos operacionais. Inclui perfis de agente. |
| `_journal/` | não | sim | Daily/raw. |
| `_inbox/` | não | não | Pré-curadoria. |
| `_meta/` | não | não | Schema, golden queries, scripts. |

**Override por `status` no frontmatter:**

- `draft` → não vetoriza nem grafo.
- `superseded` → não vetoriza, mantém grafo.
- `archived` → idem `superseded`.
- `active` → segue regra da pasta.

---

## 3. Convenção de título — sinal de retrieval #1

```
{Tipo}: {Sujeito} ({qualificador opcional})
```

Exemplos canônicos:

- `Decision: Migrar agentes low-volume para Opus 4.7 (2026-04)`
- `Entity: João Silva (broker setor Vila Marielza)`
- `Concept: Hybrid retrieval (vetorial + grafo + metadata)`
- `Runbook: Deploy mcp-obsidian via Caddy (vmi3094636)`
- `Hub: Clientes ativos 2026`
- `Interaction: Bruno Sávio call comissão (2026-04-29)`
- `Journal: 2026-04-30 (Renato)`
- `Reference: LlamaIndex MarkdownNodeParser`
- `Project: famachat (active)`

**Filename** = slug do título em kebab-case, lowercase, sem acentos.

---

## 4. Frontmatter por tipo

### 4.1 Campos comuns (obrigatórios em todo tipo)

```yaml
---
schema_version: 1
type: interaction | decision | entity | hub | journal | concept | reference | runbook | project
status: draft | active | superseded | archived
created: 2026-04-30
updated: 2026-04-30
source: human-curated | agent-generated | imported
author_agent: VaultSteward                # null se human-curated puro
verified_by: null
verified_at: null
confidence: null
tags: [meta, schema]
related: ["[[Hub: ...]]"]
---
```

**Tag policy:** 3–5 tags, kebab-case, específicas, sem nome do agente.

### 4.2 `interaction`

```yaml
type: interaction
channel: whatsapp | call | email | meeting | visit
participants: ["[[Bruno Sávio]]", "[[João Silva]]"]
mentions_entity: ["[[Apartamento 304-A]]"]
related: ["[[Hub: Bruno Sávio]]"]
```

Mora em `_journal/`.

### 4.3 `decision`

```yaml
type: decision
decided_by: ["[[Renato Faria]]"]
supersedes: ["[[Decision: Comissão broker padrão (2024-09)]]"]
superseded_by: null
mentions_entity: ["[[Bruno Sávio]]"]
implements: ["[[Concept: Política de comissão escalonada]]"]
related: ["[[Hub: Comissões 2026]]"]
valid_until: null
```

Bidirecional explícito. Mora em `_decisions/`.

### 4.4 `entity`

```yaml
type: entity
subtype: person | org | property | project
aliases: ["Bruno", "Bruno S.", "B. Sávio"]
relationships:
  broker: "[[João Silva]]"
external_ids:
  crm_client_id: 10971
related: ["[[Hub: Clientes ativos]]"]
```

**Uma e somente uma** nota por entidade real. Mora em `_entities/`.

### 4.5 `hub`

```yaml
type: hub
scope: "Clientes ativos 2026"
maintainer: "[[VaultSteward]]"
```

Hubs **não duplicam** conteúdo. Mora em `_hubs/`.

### 4.6 `journal`

```yaml
type: journal
date: 2026-04-30
author: "[[Renato Faria]]"
mentions_entity: ["[[Bruno Sávio]]"]
```

Mora em `_journal/`. Filename: `YYYY-MM-DD-{slug}.md`.

### 4.7 `concept`

```yaml
type: concept
mentions_entity: []
implements: []
derives_from: ["[[Reference: ...]]"]
```

Mora em `_curated/`.

### 4.8 `reference`

```yaml
type: reference
source_url: "https://..."
source_author: "Andy Matuschak"
source_date: 2024-08-01
derives_from: []
```

Mora em `_curated/`.

### 4.9 `runbook`

```yaml
type: runbook
procedure_owner: "[[VaultSteward]]"
trigger: cron | manual | webhook
mentions_entity: []
```

Mora em `_runbooks/`. Inclui perfis de agente.

### 4.10 `project`

```yaml
type: project
goal: "..."
status_lifecycle: active | archived
owner: "[[Renato Faria]]"
mentions_entity: []
```

Mora em `_projects/active/` ou `_projects/archived/`.

---

## 5. Typed links — arestas semânticas

| Campo | Semântica |
|-------|-----------|
| `mentions_entity` | Entidade citada no corpo |
| `participants` | Quem participou (interaction) |
| `decided_by` | Quem decidiu (decision) |
| `supersedes` | Esta substitui aquela |
| `superseded_by` | Aquela me substitui |
| `implements` | Operacionaliza um conceito/política |
| `derives_from` | Citação/origem |
| `related` | Cross-ref geral (fallback) |

---

## 6. Self-contained chunk — regras de escrita

1. Primeira frase re-introduz o sujeito.
2. Sem pronomes anafóricos no início de seção.
3. Acrônimos expandidos pelo menos 1x por nota.
4. Datas absolutas, nunca relativas.
5. Quem é quem — primeira menção de pessoa usa nome completo + papel.

---

## 7. Tags — facetas controladas

- **Status**: `#draft`, `#active`, `#superseded`, `#archived`
- **Domínio**: `#cliente`, `#broker`, `#parceiro`, `#imovel`, `#financeiro`, `#operacional`
- **Tipo de evento**: `#renovacao`, `#venda`, `#visita`, `#comissao`, `#contrato`
- **Sensibilidade**: `#confidencial`, `#publico-interno`

Anti-padrões: `#cliente-bruno`, `#projeto-xpto` (isso é wikilink).

---

## 8. Provenance & trust — regras de uso

1. **Agente não pode citar como ground truth nota com `source: agent-generated` E `verified_by: null`.**
2. **Verificação humana** = `verified_by: "[[Renato Faria]]"` + `verified_at: <data>`.
3. **Verificação cruzada agente-agente** vale menos que humana.
4. **Agente consumidor não pode citar KPI de outro agente sem flag.**
5. **VaultSteward marca `verified_by`** apenas pra correções estruturais, nunca pra fato/conteúdo.

Implementação: filtro `min_trust` no retrieve do MCP (FAM-18).

---

## 9. Schema versioning + embedding state

- **`schema_version: 1`** em toda nota.
- **`_meta/schema.md`** = source of truth do schema.
- **`_meta/embedding-state.md`** registra modelo + fatia + data.

---

## 10. Permissões e escopo do VaultSteward

Pode: adicionar/corrigir frontmatter, mover notas, deduplicar, renomear, atualizar hubs.

Não pode: editar conteúdo substantivo, alterar `_decisions/` de outro agente, decidir schema sem CEO.

---

## 11. Migração desde o schema legado

| Type legado | Type v1 | Folder destino |
|-------------|---------|----------------|
| `agent-profile` | `runbook` | `_runbooks/` |
| `agent-readme` | `hub` | `_hubs/` |
| `agent-decisions` (log compilado) | `decision` (1 nota por decisão) | `_decisions/` |
| `entity-profile` (lead/cliente/broker) | `entity` | `_entities/` |
| `entity-profile` em `atendimentos/` (journal disfarçado) | `journal` ou `interaction` | `_journal/` |
| `journal` | `journal` | `_journal/` |
| `context` (institucional) | `concept` ou `reference` | `_curated/` |
| `shared-context` | `concept` ou `reference` | `_curated/` |
| `moc` (README de pasta) | `hub` | `_hubs/` |
| `project-readme` | `project` | `_projects/active/` ou `_projects/archived/` |
| `agents-map` (`_shared/context/AGENTS.md`) | `hub` | `_hubs/agents-map.md` |
| `goal` | `goal` (extensão) | `_curated/goals/{periodo}/` |
| `result` | `result` (extensão) | `_curated/results/{periodo}/` |
| `financial-snapshot` | `entity` (subtype: snapshot) ou `reference` | `_curated/financials/` |

**Decisões abertas durante migração** (escaladas em [FAM-16](/FAM/issues/FAM-16)):

1. `_agents/{agente}/` é dissolvido? Plan v2 §2 não lista `_agents/`. Mapeamento proposto: profile → `_runbooks/agent-{nome}.md`, README → `_hubs/agent-{nome}.md`, decisions.md compilado → N notas atômicas em `_decisions/{date}-{slug}.md`.
2. `_shared/goals/` e `_shared/results/` viram `_curated/goals/{periodo}/` e `_curated/results/{periodo}/`?
3. Datas: ISO-8601 com timezone (precisão de hora) ou YYYY-MM-DD (compatível com MCP atual)?

---

## 12. Changelog

- **2026-04-30** (VaultSteward, aprovado por CEO em [FAM-15](/FAM/issues/FAM-15) revisão `0f1e41b5`): publicação da v1. Não enforçada ainda — aguarda atualização do MCP `obsidian` para aceitar novos types/campos. Substitui em conteúdo o schema legado em `_shared/context/vault/ceo/schema.md`.
