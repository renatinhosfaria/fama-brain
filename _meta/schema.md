---
confidence: null
created: '2026-04-30'
owner: renato
related:
  - '[[fama-overview]]'
  - '[[reno-second-brain-governance]]'
  - '[[2026-05-12-reno-vault-memoria-autonoma]]'
  - '[[inventory-2026-05-13-reno-post-migration]]'
schema_version: 1
source: human-curated
status: active
tags:
  - meta
  - schema
  - governance
  - rag
title: Schema v1 do vault FAM (RAG / Segundo cérebro)
topic: vault
type: concept
updated: '2026-05-13'
verified_at: null
verified_by: null
---
# Schema v1 do vault FAM (RAG / Segundo cérebro)

> **Estado operacional atualizado em 2026-05-13:** o vault já opera parcialmente com o modelo v1/Reno-first via `mcp-obsidian`. O MCP aceita os tipos e campos atualmente observados no vault, mas ainda há conteúdo legado e tipos compatíveis de transição. Este documento descreve o alvo canônico e o modo operacional seguro enquanto a migração completa não é enforçada em massa.

Vínculos: [[fama-overview]], [[reno-second-brain-governance]], [[2026-05-12-reno-vault-memoria-autonoma]], [[inventory-2026-05-13-reno-post-migration]].

**Status:** v1 aprovada, em uso operacional parcial e aplicada por governança/read-back, não por migração massiva obrigatória. CRM/FamaChat continua fonte operacional de verdade; o vault é memória curada e contexto recuperável.

---

## 0. Estado atual do MCP e da migração

### Types observados no vault em 2026-05-13

A auditoria pós-migração observou 11 tipos em uso:

- `agents-map`
- `concept`
- `context`
- `decision`
- `entity`
- `hub`
- `interaction`
- `journal`
- `moc`
- `project-readme`
- `runbook`

Esses tipos coexistem durante a fase de transição. Não é necessário reescrever notas apenas para trocar type quando o documento já estiver funcional e corretamente roteado.

### Types v1 preferenciais para novas notas

Para novas notas, preferir:

- `interaction`
- `decision`
- `entity`
- `hub`
- `journal`
- `concept`
- `reference`
- `runbook`
- `project`

Extensões ainda aceitas quando refletirem o vault atual:

- `moc`
- `context`
- `project-readme`
- `agents-map`

### Datas

- Para documentos de governança, decisões, inventários e notas canônicas, preferir `YYYY-MM-DD`.
- Datas ISO-8601 com timezone podem permanecer em documentos importados ou quando a precisão de horário for necessária.
- Não migrar datas em massa sem necessidade operacional.

### Campos extras

O MCP aceita campos extras nos documentos atuais. Ao escrever, preservar campos existentes quando fizer read-write de nota canônica.

Campos úteis:

- `schema_version`
- `status`
- `source`
- `author_agent`
- `verified_by`
- `verified_at`
- `confidence`
- `mentions_entity`
- `participants`
- `decided_by`
- `supersedes`
- `superseded_by`
- `implements`
- `derives_from`
- `related`
- `aliases`
- `relationships`
- `external_ids`
- `subtype`
- `channel`
- `valid_until`
- `scope`
- `maintainer`
- `procedure_owner`
- `trigger`
- `goal`
- `status_lifecycle`
- `source_url`
- `source_author`
- `source_date`

### Pendências técnicas

- `min_trust`/retrieval por confiança ainda deve ser tratado como política de consumo, salvo validação específica do MCP.
- Embeddings e escopo indexado ficam documentados em `_meta/embedding-state.md`.
- Golden queries ficam documentadas em `_meta/golden-queries.md`.
- Política de retrieval fica documentada em `_meta/retrieval-policy.md`.

---

## 1. Princípios não-negociáveis

1. **Atomic notes.** Uma nota deve representar um sujeito principal.
2. **Self-contained chunks.** Cada nota e cada seção importante devem ser legíveis sem depender de contexto oculto.
3. **Links bidirecionais úteis.** Hubs, decisões, runbooks e entidades devem ser fáceis de descobrir.
4. **Frontmatter como contrato.** YAML curto, preservado e compatível com o MCP.
5. **Hybrid retrieval-ready.** Vector, grafo, metadados e proveniência devem se complementar.
6. **Proveniência explícita.** Nota importada ou gerada por agente não verificada não vira ground truth sem fonte adicional.
7. **Frescor = correção.** `updated`, `status`, `supersedes`/`superseded_by` quando aplicável.
8. **Hubs (MOCs) emergentes.** Folders guardam ciclo de vida; hubs guardam navegação por tópico.
9. **Mensurabilidade.** Golden queries e recall qualitativo antes/depois de mudanças relevantes.

---

## 2. Folder convention + política de indexação

| Folder | Uso operacional | Conteúdo |
|--------|-----------------|----------|
| `_entities/` | Alta prioridade | Perfis canônicos e fatos duráveis. |
| `_hubs/` | Alta prioridade | MOCs e navegação. |
| `_decisions/` | Alta prioridade | Decision log atômico. |
| `_runbooks/` | Alta prioridade | Procedimentos operacionais. |
| `_shared/context/` | Alta prioridade temática | Contexto institucional, comercial e conceitual. |
| `_journal/reno/` | Grafo/recent history | Eventos datados, interações e auditorias curadas. |
| `_projects/` | Projeto/histórico | Trabalho em andamento e documentação de iniciativa. |
| `_meta/` | Governança/auditoria | Schema, inventário, migração, avaliação e estado técnico. |
| `docs/superpowers/**` | Histórico controlado | Specs/plans; usar como auditoria, não como fonte operacional padrão. |

**Override por `status`:**

- `draft` → não tratar como fonte operacional sem revisão.
- `superseded` → usar apenas para histórico/rastreabilidade.
- `archived` → usar apenas para histórico/rastreabilidade.
- `active` → pode ser fonte operacional, respeitando hierarquia de fontes.

---

## 3. Convenção de título — sinal de retrieval

Formato recomendado:

```text
{Tipo}: {Sujeito} ({qualificador opcional})
```

Exemplos:

- `Decision: memória autônoma do Reno no vault (2026-05)`
- `Entity: João Silva (broker)`
- `Concept: crédito imobiliário na Fama`
- `Runbook: operação do vault pelo Reno`
- `Hub: Reno`
- `Interaction: atendimento Pedro (2026-05-11)`
- `Journal: auditoria Reno (2026-05-13)`
- `Project: FamaChat`

Filename preferencial: slug em kebab-case, lowercase, sem acentos.

---

## 4. Frontmatter comum

Campos mínimos para nova nota canônica:

```yaml
---
type: interaction | decision | entity | hub | journal | concept | reference | runbook | project
owner: renato | reno
created: YYYY-MM-DD
updated: YYYY-MM-DD
status: draft | active | superseded | archived
source: human-curated | agent-generated | imported | crm | mcp-obsidian-audit
tags: [meta, schema]
---
```

Campos adicionais recomendados conforme o caso:

```yaml
schema_version: 1
author_agent: reno
verified_by: null
verified_at: null
confidence: null
related: []
mentions_entity: []
```

**Tag policy:** 3–5 tags, kebab-case, específicas, sem substituir wikilinks.

---

## 5. Frontmatter por tipo

### 5.1 `interaction`

```yaml
type: interaction
channel: whatsapp | call | email | meeting | visit | internal
participants: ["Cliente", "[[reno]]"]
mentions_entity: ["Empreendimento"]
related: ["[[reno-hub]]"]
```

Destino preferencial: `_journal/reno/` quando for evento do Reno.

### 5.2 `decision`

```yaml
type: decision
decided_by: Renato Faria
supersedes: []
superseded_by: null
implements: []
mentions_entity: []
related: []
valid_until: null
```

Destino: `_decisions/`.

Decisão canônica exige aprovação explícita de Renato. Não editar materialmente decisão antiga; criar nova decisão ou marcar relação `supersedes`/`superseded_by` quando autorizado.

### 5.3 `entity`

```yaml
type: entity
subtype: person | org | property | project | system | concept
aliases: []
relationships: {}
external_ids: {}
related: []
```

Destino: `_entities/`.

Uma nota por entidade real. Buscar por nome, telefone, aliases e IDs externos antes de criar.

### 5.4 `hub`

```yaml
type: hub
scope: "reno"
maintainer: renato
related: []
```

Destino: `_hubs/`.

Hubs linkam fontes; não duplicam conteúdo fonte.

### 5.5 `journal`

```yaml
type: journal
date: YYYY-MM-DD
author_agent: reno
mentions_entity: []
```

Destino: `_journal/` ou `_journal/reno/` conforme o agente.

### 5.6 `concept`

```yaml
type: concept
topic: credito-imobiliario
related: []
derives_from: []
```

Destino típico: `_shared/context/`, `_meta/` ou pasta temática adequada.

### 5.7 `reference`

```yaml
type: reference
source_url: "https://..."
source_author: ""
source_date: YYYY-MM-DD
derives_from: []
```

Destino típico: `_shared/context/` ou `_meta/`.

### 5.8 `runbook`

```yaml
type: runbook
procedure_owner: renato | reno
trigger: manual | cron | webhook | event
mentions_entity: []
```

Destino: `_runbooks/`.

### 5.9 `project`

```yaml
type: project
owner: renato
goal: ""
status_lifecycle: active | archived
mentions_entity: []
```

Destino: `_projects/`.

---

## 6. Typed links — arestas semânticas

| Campo | Semântica |
|-------|-----------|
| `mentions_entity` | Entidade citada no corpo |
| `participants` | Quem participou da interação |
| `decided_by` | Quem decidiu |
| `supersedes` | Esta decisão substitui aquela |
| `superseded_by` | Aquela decisão substitui esta |
| `implements` | Operacionaliza um conceito/política |
| `derives_from` | Citação/origem |
| `related` | Cross-ref geral |

---

## 7. Regras de escrita self-contained

1. Primeira frase reintroduz o sujeito.
2. Datas absolutas; evitar “hoje”, “ontem” e “semana passada”.
3. Primeira menção de pessoa deve dizer nome completo e papel quando relevante.
4. Separar fato, inferência e pendência.
5. Nunca salvar payload bruto, logs técnicos completos, segredos ou raciocínio interno.
6. Toda escrita relevante precisa de read-back via MCP.

---

## 8. Provenance & trust

1. Nota com `source: agent-generated` e sem verificação humana deve ser tratada como contexto auxiliar, não como ground truth isolado.
2. Verificação humana deve usar `verified_by: Renato Faria` e `verified_at: YYYY-MM-DD` quando aplicável.
3. CRM/FamaChat prevalece para estado operacional de clientes, leads, broker, status, visitas, appointments, vendas e `meta_data`.
4. O vault prevalece para memória curada, decisões aprovadas, runbooks e contexto recuperável.
5. Docs históricos e specs/plans devem ser usados como auditoria, não como instrução operacional ativa quando houver runbook/decisão mais recente.

---

## 9. Schema versioning + embedding state

- `schema_version: 1` é preferido em novas notas canônicas, mas notas legadas não precisam ser migradas só por esse motivo.
- `_meta/schema.md` é a fonte de verdade do schema.
- `_meta/embedding-state.md` registra modelo, fatia, data e exclusões de indexação quando essa informação estiver disponível.
- `_meta/golden-queries.md` registra o conjunto de perguntas de validação.
- `_meta/retrieval-policy.md` define prioridade de fontes e tratamento de histórico.

---

## 10. Permissões e escopo de governança

Pode, com autorização e read-back:

- adicionar/corrigir frontmatter;
- atualizar hubs;
- registrar inventário e auditoria;
- consolidar entidades óbvias;
- atualizar runbooks.

Não pode sem aprovação explícita de Renato:

- editar materialmente decisões antigas;
- alterar ownership;
- mudar schema estrutural;
- apagar histórico de migração;
- deduplicar entidade ambígua;
- transformar inferência em fato durável.

---

## 11. Migração desde o schema legado

| Type legado | Type atual/preferencial | Destino |
|-------------|--------------------------|---------|
| `agent-profile` | `runbook` | `_runbooks/` |
| `agent-readme` | `hub` | `_hubs/` |
| `agent-decisions` | `decision` | `_decisions/` |
| `entity-profile` | `entity` ou `interaction` | `_entities/` ou `_journal/reno/` |
| `journal` | `journal` ou `interaction` | `_journal/` |
| `context` | `concept`, `reference` ou `context` de transição | `_shared/context/`, `_meta/` ou `_projects/` |
| `moc` | `hub` ou `moc` de transição | `_hubs/` ou README/index local |
| `project-readme` | `project` ou `project-readme` de transição | `_projects/` |
| `agents-map` | `agents-map` de transição | `_shared/context/AGENTS.md` |

**Decisão resolvida na migração Reno-first (2026-05-11):** `_agents/` foi dissolvido como namespace ativo. Perfis de agente vivem em `_runbooks/`, hubs em `_hubs/`, decisões atômicas em `_decisions/` e eventos de alto volume em `_journal/{agente}/`.

---

## 12. Changelog

- **2026-04-30**: publicação inicial da v1 aprovada por Renato em FAM-15.
- **2026-05-11**: migração Reno-first por tipo de conhecimento; `_agents/` deixa de ser destino ativo.
- **2026-05-13**: atualização pós-migração para refletir uso operacional parcial do schema v1, coexistência de types de transição, política de datas e referências para embedding-state, golden-queries e retrieval-policy.
