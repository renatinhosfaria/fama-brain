# Reno Second Brain Vault Migration Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Migrate `fama-brain` from the current `_agents/reno/**` structure into a Reno-first second brain organized by global knowledge type.

**Architecture:** The migration proceeds in reviewable phases: first inventory and validation tools, then global maps/schema, then Reno runbooks and decisions, then atendimento migration into `_entities/` plus `_journal/reno/`, then cleanup of `_agents/`. The CRM and MCP behavior are not changed in this plan; this is a vault content and structure migration only.

**Tech Stack:** Obsidian Markdown, Git for Windows, PowerShell, `rg`, and manual review of generated diffs.

---

## Scope Check

This plan implements one subsystem: the local vault reorganization approved in `docs/superpowers/specs/2026-05-11-reno-second-brain-vault-design.md`. It intentionally excludes MCP/tooling changes, live CRM changes, and production automation changes.

## File Structure

Create:

- `_meta/migration-2026-05-11-reno-second-brain.md` — migration ledger, counts, batch status, and audit notes.
- `_hubs/reno.md` — Reno navigation hub replacing `_agents/reno/README.md` as the human map.
- `_runbooks/reno-profile.md` — stable Reno role and operating principles from `_agents/reno/profile.md`.
- `_runbooks/reno-playbook-atendimento.md` — atendimento playbook from `_agents/reno/context/playbook-atendimento.md`.
- `_runbooks/reno-second-brain-governance.md` — second-brain governance from `_agents/reno/context/second-brain-governance.md`.
- `_runbooks/reno-operacao-crm-webhook.md` — CRM/webhook operational contract from `_agents/reno/context/operacao-crm-webhook.md`.
- `_runbooks/reno-registro-vault.md` — vault writing procedure from `_agents/reno/procedimentos/registro-vault-reno.md`.
- `_runbooks/reno-credito-imobiliario.md` — Reno-specific credit lens from `_agents/reno/context/credito-imobiliario.md`.
- `_runbooks/reno-fama-produtos.md` — Reno-specific product lens from `_agents/reno/context/fama-produtos.md`.
- `_journal/reno/*.md` — migrated operational journals, auditorias, dated planos, and atendimento events.
- `_decisions/2026-*.md` — atomic decision notes split from `_agents/reno/decisions.md`.
- New `_entities/*.md` only when an atendimento source has no safe existing canonical entity.

Modify:

- `README.md` — new root map and removal of `_agents/` as permanent namespace.
- `_meta/schema.md` — align live schema notes with the approved v1 target for this migration.
- `_meta/index.md` — link migration ledger and schema.
- `_entities/index.md` — update canonical entity counts and note the migration policy.
- `_journal/index.md` — make `_journal/reno/` the canonical high-volume Reno event area.
- `_runbooks/index.md` — link Reno runbooks.
- `_decisions/index.md` — link Reno decision notes.
- `_hubs/index.md` — link `_hubs/reno.md`.
- `_shared/context/AGENTS.md` — remove `_agents/reno/**` as the Reno-owned territory and replace it with global Reno write destinations.

Delete after final audit:

- `_agents/README.md`
- `_agents/reno/**`
- `_agents/` directory if empty after deletion.

## Validation Commands Used Throughout

Run these from `C:\fama-brain` after each task that changes vault structure:

```powershell
git status --short --untracked-files=all
rg -n "_agents/reno|_agents\\reno|\[\[reno/" --glob '!docs/superpowers/**' --glob '!_meta/migration-2026-05-11-reno-second-brain.md'
Get-ChildItem -Recurse -Filter *.md | Where-Object {
  $first = Get-Content -LiteralPath $_.FullName -TotalCount 1 -ErrorAction SilentlyContinue
  $first -ne '---'
} | Select-Object -ExpandProperty FullName
```

Expected after intermediate tasks:

- `git status` shows only intended files for the current task.
- `_agents/reno` references may still exist until the cleanup task.
- Frontmatter command returns no migrated note missing YAML frontmatter.

Expected after final cleanup:

- `rg` returns no canonical `_agents/reno` references outside archived design/plan docs.
- `_agents/` does not exist.
- `git status --short --untracked-files=all` is clean after the final commit.

### Task 1: Baseline Inventory And Migration Ledger

**Files:**

- Create: `_meta/migration-2026-05-11-reno-second-brain.md`
- Read: `docs/superpowers/specs/2026-05-11-reno-second-brain-vault-design.md`
- Read: `_agents/reno/**`
- Read: `_entities/index.md`
- Read: `_journal/index.md`

- [ ] **Step 1: Confirm clean starting state**

Run:

```powershell
git status --short --untracked-files=all
```

Expected: no output. If there is output, stop and identify whether the changes belong to this migration before continuing.

- [ ] **Step 2: Count current Reno source files**

Run:

```powershell
(rg --files '_agents\reno\atendimentos' | Measure-Object).Count
(rg --files '_agents\reno\auditorias' | Measure-Object).Count
rg --files '_agents\reno' | Sort-Object
```

Expected at plan time:

```text
153
15
```

The full file list should include `README.md`, `profile.md`, `decisions.md`, `context/`, `procedimentos/`, `journal/`, `auditorias/`, `planos/`, `decisions/`, and `atendimentos/`.

- [ ] **Step 3: Create the migration ledger**

Create `_meta/migration-2026-05-11-reno-second-brain.md`:

```markdown
---
schema_version: 1
type: reference
status: active
created: 2026-05-11
updated: 2026-05-11
source: human-curated
author_agent: null
verified_by: null
verified_at: null
confidence: null
tags: [meta, migration, reno, vault]
related: ["[[schema]]", "[[reno]]"]
---
# Migração Reno Second Brain — 2026-05-11

## Objetivo

Migrar o conteúdo operacional do Reno de `_agents/reno/**` para a arquitetura global por tipo definida na spec `docs/superpowers/specs/2026-05-11-reno-second-brain-vault-design.md`.

## Escopo

- Migrar runbooks, decisões, atendimentos, auditorias e journals operacionais do Reno.
- Atualizar índices e mapas do vault.
- Remover `_agents/` como namespace permanente após auditoria.

## Fora de escopo

- Mudanças no MCP.
- Mudanças no CRM/FamaChat.
- Mudanças em produção.

## Inventário inicial

| Área | Contagem inicial | Observação |
| --- | ---: | --- |
| `_agents/reno/atendimentos/` | 153 | Migrar para `_entities/` + `_journal/reno/`. |
| `_agents/reno/auditorias/` | 15 | Migrar para `_journal/reno/`. |
| `_agents/reno/context/` | 4 | Migrar para `_runbooks/reno-*.md`. |
| `_agents/reno/journal/` | 6 | Migrar para `_journal/reno/`. |
| `_agents/reno/decisions.md` | 1 log compilado | Dividir em decisões atômicas em `_decisions/`. |
| `_agents/reno/decisions/` | 1 | Migrar para `_decisions/`. |
| `_agents/reno/procedimentos/` | 1 | Migrar para `_runbooks/`. |
| `_agents/reno/planos/` | 1 | Migrar para `_journal/reno/` se for plano datado, ou `_runbooks/` se virar procedimento durável. |

## Status por fase

- [ ] Fase 1 — mapas e schema
- [ ] Fase 2 — runbooks do Reno
- [ ] Fase 3 — decisões do Reno
- [ ] Fase 4 — atendimentos piloto
- [ ] Fase 5 — atendimentos em lote
- [ ] Fase 6 — auditorias, journals e planos
- [ ] Fase 7 — remoção de `_agents/`
- [ ] Fase 8 — auditoria final

## Decisões de migração

- `_entities/` guarda o perfil consolidado de pessoa, imóvel, empreendimento, construtora ou organização.
- `_journal/reno/` guarda eventos datados e histórico operacional.
- Quando houver risco de perda de nuance, preservar trecho original em seção `## Evidência original`.
- Quando houver risco de deduplicação incorreta, manter entidades separadas e registrar a ambiguidade.
```

- [ ] **Step 4: Verify the ledger**

Run:

```powershell
Get-Content -LiteralPath '_meta\migration-2026-05-11-reno-second-brain.md' -TotalCount 20
git diff -- _meta\migration-2026-05-11-reno-second-brain.md
```

Expected: file starts with YAML frontmatter and records the same initial counts from Step 2.

- [ ] **Step 5: Commit**

Run:

```powershell
git add -- '_meta/migration-2026-05-11-reno-second-brain.md'
git commit -m "docs: add Reno vault migration ledger"
```

Expected: commit succeeds with one new file.

### Task 2: Update Root Architecture Maps

**Files:**

- Modify: `README.md`
- Modify: `_meta/schema.md`
- Modify: `_meta/index.md`
- Modify: `_shared/context/AGENTS.md`
- Modify: `_hubs/index.md`
- Modify: `_journal/index.md`
- Modify: `_runbooks/index.md`

- [ ] **Step 1: Update `README.md` architecture language**

Replace the opening description with this direction while preserving the existing inbound index block:

```markdown
Vault Obsidian que serve como **segundo cérebro operacional do Reno** e memória de longo prazo da Fama Negócios Imobiliários.

Nesta fase, a arquitetura é **Reno-first**: o vault é organizado por tipo de conhecimento, não por namespace permanente de agente. Multiagente fica como evolução futura.
```

In the conventions section, replace references that make `_agents/` permanent with:

```markdown
- Conteúdo operacional do Reno fica organizado por tipo:
  - fatos duráveis sobre pessoas, imóveis e organizações em `_entities/`;
  - eventos datados em `_journal/reno/`;
  - procedimentos em `_runbooks/`;
  - decisões duráveis em `_decisions/`.
```

- [ ] **Step 2: Update `_shared/context/AGENTS.md` ownership map**

Replace the Reno territory block:

```text
# Territórios primários — Reno (corretor, OpenClaw)
_agents/reno/**                          => reno (primary)
_shared/context/*/reno/**                => reno (primary)
_agents/Reno/**                          => reno (primary)
_shared/context/*/Reno/**                => reno (primary)
```

with:

```text
# Territórios primários — Reno (corretor, OpenClaw)
_journal/reno/**                         => reno (primary)
_runbooks/reno-*.md                      => reno (primary)
_decisions/reno-*.md                     => reno (primary)
_decisions/*-reno-*.md                   => reno (primary)

# Entidades são globais; Reno pode atualizar entidades de atendimento quando o fato vier da operação do Reno.
_entities/**                             => renato (primary)
```

Keep the catch-all rule as Renato.

- [ ] **Step 3: Update `_journal/index.md`**

Ensure it contains this explicit Reno subfolder rule:

```markdown
## Subpastas

- `_journal/reno/` — eventos operacionais de alto volume do Reno: atendimentos, auditorias, rotinas, logs e planos datados.
```

- [ ] **Step 4: Update `_runbooks/index.md`**

Add a Reno section:

```markdown
## Reno

- [[reno-profile]]
- [[reno-playbook-atendimento]]
- [[reno-second-brain-governance]]
- [[reno-operacao-crm-webhook]]
- [[reno-registro-vault]]
- [[reno-credito-imobiliario]]
- [[reno-fama-produtos]]
```

- [ ] **Step 5: Update `_hubs/index.md`**

Add:

```markdown
## Agentes e operação

- [[reno]] — entidade canônica do Reno.
- [[reno-hub]] — mapa operacional do segundo cérebro do Reno.
```

If the hub file is named `_hubs/reno.md`, use `[[reno]]` only if it will not collide semantically with `_entities/reno.md`. If the collision is confusing in Obsidian, name the hub file `_hubs/reno-hub.md` and use `[[reno-hub]]`.

- [ ] **Step 6: Update `_meta/schema.md` status**

Keep the historical MCP warning, but add a new note under the title:

```markdown
> **Decisão de migração (2026-05-11):** a reorganização Reno-first usa o schema v1 ideal no vault, mesmo que a adaptação do MCP seja tratada depois. O MCP não será alterado nesta migração.
```

- [ ] **Step 7: Verify maps**

Run:

```powershell
rg -n "Reno-first|_journal/reno|reno-profile|reno-hub|_agents/reno" README.md _shared/context/AGENTS.md _journal/index.md _runbooks/index.md _hubs/index.md _meta/schema.md
git diff --stat
```

Expected: new Reno-first references exist; `_agents/reno` remains only in historical/migration context, not as an active write destination.

- [ ] **Step 8: Commit**

Run:

```powershell
git add -- README.md _meta/schema.md _meta/index.md _shared/context/AGENTS.md _hubs/index.md _journal/index.md _runbooks/index.md
git commit -m "docs: update vault maps for Reno-first architecture"
```

Expected: commit succeeds with map/schema updates.

### Task 3: Migrate Reno Runbooks And Hub

**Files:**

- Create: `_hubs/reno-hub.md`
- Create: `_runbooks/reno-profile.md`
- Create: `_runbooks/reno-playbook-atendimento.md`
- Create: `_runbooks/reno-second-brain-governance.md`
- Create: `_runbooks/reno-operacao-crm-webhook.md`
- Create: `_runbooks/reno-registro-vault.md`
- Create: `_runbooks/reno-credito-imobiliario.md`
- Create: `_runbooks/reno-fama-produtos.md`
- Read: `_agents/reno/README.md`
- Read: `_agents/reno/profile.md`
- Read: `_agents/reno/context/*.md`
- Read: `_agents/reno/procedimentos/registro-vault-reno.md`

- [ ] **Step 1: Create `_hubs/reno-hub.md`**

Use:

```markdown
---
schema_version: 1
type: hub
status: active
created: 2026-05-11
updated: 2026-05-11
source: human-curated
author_agent: null
verified_by: null
verified_at: null
confidence: null
tags: [hub, reno, atendimento, second-brain]
related: ["[[reno]]", "[[reno-profile]]", "[[reno-playbook-atendimento]]"]
---
# Hub: Reno

Reno é o agente digital consultivo da Fama para atendimento e avanço comercial de leads elegíveis.

## Mapas principais

- [[reno]] — entidade canônica do Reno.
- [[reno-profile]] — perfil e escopo operacional.
- [[reno-playbook-atendimento]] — método de atendimento.
- [[reno-second-brain-governance]] — política de uso do segundo cérebro.
- [[reno-operacao-crm-webhook]] — contrato operacional com CRM/FamaChat.
- [[reno-registro-vault]] — procedimento de registro no vault.
- [[reno-credito-imobiliario]] — lente operacional de crédito imobiliário.
- [[reno-fama-produtos]] — lente operacional de produtos da Fama.

## Áreas de escrita

- Eventos datados: `_journal/reno/`.
- Fatos duráveis sobre leads, imóveis e organizações: `_entities/`.
- Procedimentos: `_runbooks/`.
- Decisões duráveis: `_decisions/`.
```

- [ ] **Step 2: Create runbook files from sources**

For each source, copy durable content and update the path policy:

| Source | Destination | Required adjustment |
| --- | --- | --- |
| `_agents/reno/profile.md` | `_runbooks/reno-profile.md` | Remove the old rule that all Reno content must stay in `_agents/reno/`; replace with the new global destination rules. |
| `_agents/reno/context/playbook-atendimento.md` | `_runbooks/reno-playbook-atendimento.md` | Preserve atendimento method; update links to `[[reno-profile]]`, `[[reno-second-brain-governance]]`, and existing shared context. |
| `_agents/reno/context/second-brain-governance.md` | `_runbooks/reno-second-brain-governance.md` | Replace `_agents/reno/atendimentos/` destination with `_entities/` plus `_journal/reno/`. |
| `_agents/reno/context/operacao-crm-webhook.md` | `_runbooks/reno-operacao-crm-webhook.md` | Preserve CRM/FamaChat rules; remove any permanent `_agents/reno` write-path instruction. |
| `_agents/reno/procedimentos/registro-vault-reno.md` | `_runbooks/reno-registro-vault.md` | Rewrite destination rules using the approved routing table. |
| `_agents/reno/context/credito-imobiliario.md` | `_runbooks/reno-credito-imobiliario.md` | Keep Reno-specific operational lens; link to `_shared/context/credito-imobiliario/index`. |
| `_agents/reno/context/fama-produtos.md` | `_runbooks/reno-fama-produtos.md` | Keep Reno-specific product lens; link to `_shared/context/fama/produtos`. |

Use this frontmatter pattern for each runbook, changing `tags` and `related` per file:

```yaml
---
schema_version: 1
type: runbook
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
procedure_owner: "[[reno]]"
trigger: manual
mentions_entity: ["[[reno]]"]
tags: [runbook, reno, atendimento]
related: ["[[reno-hub]]"]
---
```

- [ ] **Step 3: Verify runbooks do not preserve obsolete path policy**

Run:

```powershell
rg -n "_agents/reno|_agents\\reno|exclusivamente dentro de `_agents/reno`" _runbooks _hubs
```

Expected: no output from `_runbooks` or `_hubs`.

- [ ] **Step 4: Commit**

Run:

```powershell
git add -- _hubs/reno-hub.md _runbooks/reno-*.md _runbooks/index.md _hubs/index.md
git commit -m "docs: migrate Reno runbooks to global vault"
```

Expected: commit succeeds with new hub and runbooks.

### Task 4: Split Reno Decisions Into Atomic Decision Notes

**Files:**

- Create: `_decisions/2026-04-24-obsidian-segundo-cerebro-reno.md`
- Create: `_decisions/2026-04-24-documentos-operacionais-minimos-reno.md`
- Create: `_decisions/2026-04-24-disparo-controlado-backlog-sem-atendimento.md`
- Create: `_decisions/2026-04-24-conteudo-reno-em-global-second-brain.md`
- Create: `_decisions/2026-04-24-reno-prioriza-produto-antes-financeiro.md`
- Create: `_decisions/2026-04-24-reno-nao-perde-timing-visita.md`
- Create: `_decisions/2026-04-24-backlog-sem-atendimento-lote-2.md`
- Create: `_decisions/2026-04-26-persistencia-operacional-atendimento-reno.md`
- Create: `_decisions/2026-04-27-plano-reversao-performance-reno.md`
- Create: `_decisions/2026-04-28-guardrail-whatsapp-tentar-envio.md`
- Create: `_decisions/2026-04-28-guardrail-whatsapp-nono-digito.md`
- Create: `_decisions/2026-04-29-resposta-repescagem-handoff-obrigatorio.md`
- Create: `_decisions/2026-04-29-handoff-pos-repescagem-worker-inbound.md`
- Create: `_decisions/2026-04-29-worker-inbound-whatsapp-criado.md`
- Create: `_decisions/2026-04-29-worker-inbound-whatsapp-removido.md`
- Create: `_decisions/2026-04-29-status-em-atendimento-para-repescagem.md`
- Create: `_decisions/2026-04-29-skill-repescagem-somente-envio-ativo.md`
- Create: `_decisions/2026-04-30-repescagem-muda-angulo-cta.md`
- Create: `_decisions/2026-04-30-followups-independentes.md`
- Create: `_decisions/2026-05-02-repescagem-arquivamento-automatico-step-5.md`
- Create: `_decisions/2026-05-02-confirmar-nome-estranho-famachat.md`
- Modify: `_decisions/index.md`
- Read: `_agents/reno/decisions.md`
- Read: `_agents/reno/decisions/2026-04-30-followups-independentes.md`

- [ ] **Step 1: Create atomic decision notes**

Use this frontmatter pattern for every decision, changing only dates, title, status links, and tags according to the specific decision being migrated:

```markdown
---
schema_version: 1
type: decision
status: active
created: YYYY-MM-DD
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
implements: ["[[reno-playbook-atendimento]]"]
related: ["[[reno-hub]]"]
tags: [decision, reno, atendimento]
---
# Decision: Repescagem deve mudar ângulo/CTA entre tentativas (2026-04-30)

## Decisão

Reno deve oferecer um motivo novo para resposta quando o cliente não respondeu uma repescagem anterior, mudando substancialmente abordagem, ângulo comercial, pergunta, CTA, benefício e vocabulário. Não basta trocar sinônimos mantendo o mesmo raciocínio.

## Origem

Migrado de `_agents/reno/decisions.md` em 2026-05-11.
```

For each remaining decision file, use the exact heading date and title from `_agents/reno/decisions.md`, copy the paragraph under that heading, and only normalize obsolete path references when Task 4 Step 2 explicitly says the old decision is superseded.

For `_decisions/2026-04-30-followups-independentes.md`, use `_agents/reno/decisions/2026-04-30-followups-independentes.md` as the source if it has more complete content than the compiled `decisions.md`.

- [ ] **Step 2: Replace the obsolete 2026-04-24 path decision**

In `_decisions/2026-04-24-conteudo-reno-em-global-second-brain.md`, do not preserve the old rule as active. Use this status and body:

```yaml
status: superseded
superseded_by: ["[[Decision: FAMA-BRAIN como segundo cérebro Reno-first (2026-05-11)]]"]
```

```markdown
## Decisão original

Renato definiu em 2026-04-24 que tudo que fosse do Reno deveria ficar em `_agents/reno/`.

## Estado atual

Esta decisão foi superada pela arquitetura Reno-first aprovada em 2026-05-11. A regra atual é escrever por tipo de conhecimento: `_entities/`, `_journal/reno/`, `_runbooks/`, `_decisions/`, `_meta/` e `_projects/`.
```

- [ ] **Step 3: Create the final architecture decision**

Create `_decisions/2026-05-11-reno-second-brain-vault.md`:

```markdown
---
schema_version: 1
type: decision
status: active
created: 2026-05-11
updated: 2026-05-11
source: human-curated
author_agent: null
verified_by: "Renato Faria"
verified_at: 2026-05-11
confidence: high
decided_by: ["[[Renato Faria]]"]
mentions_entity: ["[[reno]]"]
supersedes: ["[[Decision: Conteúdo do Reno deve ficar exclusivamente em _agents/reno (2026-04-24)]]"]
related: ["[[reno-hub]]", "[[schema]]"]
tags: [decision, reno, vault, second-brain]
---
# Decision: FAMA-BRAIN como segundo cérebro Reno-first (2026-05-11)

Renato aprovou que o `fama-brain` seja reestruturado, nesta fase, como segundo cérebro operacional do Reno, com memória organizada por tipo de conhecimento e sem `_agents/` como namespace permanente.

## Regras aprovadas

- Fatos duráveis sobre pessoas, imóveis e organizações ficam em `_entities/`.
- Eventos datados do Reno ficam em `_journal/reno/`.
- Procedimentos ficam em `_runbooks/`.
- Decisões duráveis ficam em `_decisions/`.
- Governança do vault fica em `_meta/`.
- MCP e CRM ficam fora desta primeira implementação.
```

- [ ] **Step 4: Update `_decisions/index.md`**

Add a section:

```markdown
## Reno

- [[2026-05-11-reno-second-brain-vault]]
- [[2026-05-02-repescagem-arquivamento-automatico-step-5]]
- [[2026-05-02-confirmar-nome-estranho-famachat]]
- [[2026-04-30-repescagem-muda-angulo-cta]]
- [[2026-04-29-skill-repescagem-somente-envio-ativo]]
- [[2026-04-29-status-em-atendimento-para-repescagem]]
- [[2026-04-29-worker-inbound-whatsapp-removido]]
- [[2026-04-28-guardrail-whatsapp-nono-digito]]
- [[2026-04-28-guardrail-whatsapp-tentar-envio]]
- [[2026-04-26-persistencia-operacional-atendimento-reno]]
- [[2026-04-24-obsidian-segundo-cerebro-reno]]
```

Keep the full set of decision files discoverable even if the index highlights only the most important ones.

- [ ] **Step 5: Verify decisions**

Run:

```powershell
rg -n "type: decision|status: superseded|_agents/reno" _decisions
(rg --files '_decisions' | Where-Object { $_ -match '2026-.*reno|repescagem|whatsapp|backlog|guardrail|handoff|followups|famachat' } | Measure-Object).Count
```

Expected: all created decision notes have `type: decision`; only the origin/evidence sections mention `_agents/reno`.

- [ ] **Step 6: Commit**

Run:

```powershell
git add -- _decisions
git commit -m "docs: split Reno decisions into global decision log"
```

Expected: commit succeeds with atomic decision notes.

### Task 5: Prepare Atendimento Migration Manifest

**Files:**

- Create: `_meta/reno-atendimentos-migration-manifest-2026-05-11.md`
- Read: `_agents/reno/atendimentos/*.md`
- Read: `_entities/*.md`

- [ ] **Step 1: Generate a source-to-target table in the terminal**

Run:

```powershell
$sources = Get-ChildItem -LiteralPath '_agents\reno\atendimentos' -Filter '*.md' | Sort-Object Name
$entityNames = Get-ChildItem -LiteralPath '_entities' -Filter '*.md' | ForEach-Object { $_.BaseName }
$rows = foreach ($s in $sources) {
  $base = $s.BaseName
  if ($base -match '^(\d+)-(.+)$') {
    $clientId = $Matches[1]
    $slug = $Matches[2]
  } elseif ($base -match '^cliente-(\d+)-(.+)$') {
    $clientId = $Matches[1]
    $slug = $Matches[2]
  } else {
    $clientId = ''
    $slug = $base
  }
  $entityExists = $entityNames -contains $slug
  [PSCustomObject]@{
    Source = $s.FullName.Replace((Get-Location).Path + '\','')
    ClientId = $clientId
    Slug = $slug
    EntityTarget = "_entities/$slug.md"
    EntityExists = $entityExists
    JournalTarget = "_journal/reno/2026-05-11-atendimento-$slug.md"
  }
}
$rows | Format-Table -AutoSize
```

Expected: 153 rows. Review rows with empty `ClientId` manually; at plan time these include `lote-reno-dup-recovery-20260427-3min.md` and `whatsapp-lua.md`.

- [ ] **Step 2: Create the manifest file**

Create `_meta/reno-atendimentos-migration-manifest-2026-05-11.md` with this structure:

```markdown
---
schema_version: 1
type: reference
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: null
verified_by: null
verified_at: null
confidence: null
tags: [meta, migration, reno, atendimentos]
related: ["[[migration-2026-05-11-reno-second-brain]]", "[[reno-hub]]"]
---
# Manifesto de migração dos atendimentos do Reno

## Política

Cada arquivo de `_agents/reno/atendimentos/` gera ou atualiza uma entidade em `_entities/` e gera pelo menos um evento em `_journal/reno/`.

## Casos especiais

- `lote-reno-dup-recovery-20260427-3min.md` é log operacional de lote, não pessoa única; migrar somente para `_journal/reno/2026-04-27-lote-reno-dup-recovery-3min.md`.
- `whatsapp-lua.md` deve ser avaliado manualmente; se Lua for pessoa identificável, criar/atualizar `_entities/lua.md` e journal correspondente.
- `cliente-11010-eduarda.md` deve consolidar com `_entities/eduarda.md`, preservando `crm_client_ids`.

## Tabela

| Source | Client ID | Slug | Entity target | Entity exists? | Journal target | Status |
| --- | --- | --- | --- | --- | --- | --- |
```

Append the generated 153 rows as Markdown table rows, marking `Status` as `pending`.

- [ ] **Step 3: Verify manifest count**

Run:

```powershell
(Select-String -LiteralPath '_meta\reno-atendimentos-migration-manifest-2026-05-11.md' -Pattern '^\| _agents\\reno\\atendimentos\\').Count
```

Expected: `153`.

- [ ] **Step 4: Commit**

Run:

```powershell
git add -- _meta/reno-atendimentos-migration-manifest-2026-05-11.md _meta/migration-2026-05-11-reno-second-brain.md
git commit -m "docs: add Reno atendimento migration manifest"
```

Expected: commit succeeds with manifest and optional ledger status update.

### Task 6: Pilot Migrate Three Atendimento Cases

**Files:**

- Modify or create: `_entities/marcia-maria.md`
- Modify: `_entities/eduarda.md`
- Create: `_journal/reno/2026-05-10-atendimento-marcia-maria.md`
- Create: `_journal/reno/2026-04-24-atendimento-eduarda.md`
- Create: `_journal/reno/2026-04-27-lote-reno-dup-recovery-3min.md`
- Read: `_agents/reno/atendimentos/11266-marcia-maria.md`
- Read: `_agents/reno/atendimentos/cliente-11010-eduarda.md`
- Read: `_agents/reno/atendimentos/lote-reno-dup-recovery-20260427-3min.md`

- [ ] **Step 1: Migrate Marcia Maria as the standard lead pattern**

Create or update `_entities/marcia-maria.md` with:

```markdown
---
schema_version: 1
type: entity
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: medium
subtype: person
aliases: ["Marcia Maria"]
relationships:
  broker: "[[reno]]"
  interested_in: "[[garden-sul]]"
external_ids:
  crm_client_ids: [11266]
  crm_client_id_canonical: 11266
related: ["[[reno-hub]]", "[[garden-sul]]", "[[jardim-sul]]"]
tags: [entity, lead, reno, garden-sul]
---
# Entity: Marcia Maria

Marcia Maria é lead atendida pelo Reno, vinculada ao cliente CRM 11266 e interessada no empreendimento [[garden-sul]], no [[jardim-sul]].

## Estado atual

Status CRM registrado na origem migrada: `Não Respondeu`.

## Contexto comercial consolidado

Marcia demonstrou interesse no Garden Sul. Até a última interação migrada, ainda não havia confirmação de necessidade, momento, decisão, entrada, orçamento ou forma de pagamento.

## Histórico resumido

- 2026-05-07: primeiro contato enviado pelo Reno sobre Garden Sul/Jardim Sul.
- 2026-05-08: repescagem step 1 enviada perguntando se a busca era para morar ou investir.
- 2026-05-10: repescagem step 2 enviada sobre faixa de entrada.
- 2026-05-10: repescagem step 3 enviada sobre financiamento ou compra à vista.

## Links operacionais

- [[2026-05-10-atendimento-marcia-maria]]
```

- [ ] **Step 2: Create Marcia Maria journal**

Create `_journal/reno/2026-05-10-atendimento-marcia-maria.md` with:

```markdown
---
schema_version: 1
type: interaction
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: medium
channel: whatsapp
participants: ["[[marcia-maria]]", "[[reno]]"]
mentions_entity: ["[[marcia-maria]]", "[[garden-sul]]", "[[jardim-sul]]"]
related: ["[[reno-hub]]"]
tags: [interaction, reno, atendimento, repescagem]
---
# Interaction: Marcia Maria atendimento Garden Sul (2026-05-10)

Em 2026-05-10, Reno registrou a continuidade da repescagem de Marcia Maria, lead CRM 11266 interessada no [[garden-sul]].

## Ação tomada

Reno enviou follow-up de repescagem step 3 via WhatsApp validado, mudando o ângulo para viabilidade prática da compra: financiamento versus compra à vista.

## Resultado

Cliente permaneceu em `Não Respondeu` na origem migrada.

## Próximo passo registrado na origem

Aguardar resposta. Se não houvesse retorno, a régua seguiria para step 4 em 2026-05-11 às 09:10.

## Evidência original

Origem migrada: `_agents/reno/atendimentos/11266-marcia-maria.md`.
```

- [ ] **Step 3: Migrate Eduarda as an existing-entity consolidation**

Open `_entities/eduarda.md` and add `11010` to `external_ids.crm_client_ids` if not present. Add a `## Histórico Reno` bullet linking to `[[2026-04-24-atendimento-eduarda]]`.

Create `_journal/reno/2026-04-24-atendimento-eduarda.md` using the same interaction template, with participants `[[eduarda]]` and `[[reno]]`, and source `_agents/reno/atendimentos/cliente-11010-eduarda.md`.

- [ ] **Step 4: Migrate the lote recovery file as journal-only**

Create `_journal/reno/2026-04-27-lote-reno-dup-recovery-3min.md` with `type: journal`, `mentions_entity: ["[[reno]]"]`, and source `_agents/reno/atendimentos/lote-reno-dup-recovery-20260427-3min.md`. Do not create an entity for the lote file.

- [ ] **Step 5: Verify pilot links and obsolete references**

Run:

```powershell
rg -n "marcia-maria|eduarda|lote-reno-dup" _entities _journal/reno _meta/reno-atendimentos-migration-manifest-2026-05-11.md
rg -n "_agents/reno/atendimentos/(11266-marcia-maria|cliente-11010-eduarda|lote-reno-dup-recovery)" _entities _journal/reno
```

Expected: migrated notes exist and origin paths appear only under `## Evidência original` or migration manifest.

- [ ] **Step 6: Update manifest statuses**

In `_meta/reno-atendimentos-migration-manifest-2026-05-11.md`, mark the three pilot rows as `migrated-pilot`.

- [ ] **Step 7: Commit**

Run:

```powershell
git add -- _entities/marcia-maria.md _entities/eduarda.md _journal/reno _meta/reno-atendimentos-migration-manifest-2026-05-11.md
git commit -m "docs: pilot migrate Reno atendimentos"
```

Expected: commit succeeds with three pilot cases.

### Task 7: Batch Migrate Remaining Atendimento Files

**Files:**

- Modify: `_entities/*.md`
- Create: `_journal/reno/2026-*-atendimento-*.md`
- Modify: `_meta/reno-atendimentos-migration-manifest-2026-05-11.md`
- Modify: `_entities/index.md`

- [ ] **Step 1: Split remaining manifest rows into batches**

Use batches of 25 source files, preserving the manifest order. Since 3 pilot rows are already done, expect 150 remaining files, which yields 6 batches of 25.

Record batches in the manifest:

```markdown
## Batches

- Batch 1: rows 1–25 pending after pilots.
- Batch 2: rows 26–50 pending after pilots.
- Batch 3: rows 51–75 pending after pilots.
- Batch 4: rows 76–100 pending after pilots.
- Batch 5: rows 101–125 pending after pilots.
- Batch 6: rows 126–150 pending after pilots.
```

- [ ] **Step 2: For each normal atendimento source, update or create entity**

Use this entity rule for every source:

```text
If _entities/<slug>.md exists:
  update the existing entity with CRM ID, current status, durable preferences, related property/place, and links to new journals.
If _entities/<slug>.md does not exist:
  create _entities/<slug>.md with type: entity, subtype: person, CRM IDs, broker [[reno]], related project/property/place, current status, and concise consolidated history.
If slug clearly duplicates another person:
  update the canonical entity and add aliases/external_ids. Do not create a duplicate file.
If duplicate risk is unclear:
  keep separate entity and add "## Ambiguidade" explaining the uncertainty.
```

Every migrated entity must keep the same body structure used in the Marcia Maria pilot: title, one introductory sentence, `## Estado atual`, `## Contexto comercial consolidado`, `## Histórico resumido`, and `## Links operacionais`. The values must come from the source atendimento and related existing entity note; do not add inferred facts that are not present in either source.

- [ ] **Step 3: For each atendimento source, create journal**

Use this journal rule:

```text
Use the latest meaningful date in the source as the journal date.
If the source has multiple interaction dates but is one curated atendimento, create one journal with timeline bullets.
If the source is a batch, audit, or operational recovery file, use type: journal and do not create a person entity.
```

Every migrated journal must keep the same body structure used in the Marcia Maria pilot: title, one dated introductory sentence, `## Ação tomada`, `## Resultado`, `## Próximo passo registrado na origem`, and `## Evidência original`. Use `Nenhum próximo passo explícito registrado na origem.` when the source has no next step. The evidence line must contain the exact source path.

- [ ] **Step 4: Verify after each batch**

Run after each batch:

```powershell
rg -n "_agents/reno/atendimentos" _entities _journal/reno
(Select-String -LiteralPath '_meta\reno-atendimentos-migration-manifest-2026-05-11.md' -Pattern 'pending').Count
git diff --stat
```

Expected:

- `_agents/reno/atendimentos` appears only in `## Evidência original`.
- Pending count decreases by the batch size.
- Diff size is reviewable before commit.

- [ ] **Step 5: Commit after each batch**

Run for each batch:

```powershell
git add -- _entities _journal/reno _meta/reno-atendimentos-migration-manifest-2026-05-11.md
git commit -m "docs: migrate Reno atendimentos batch N"
```

Replace `N` with `1`, `2`, `3`, `4`, `5`, or `6`.

- [ ] **Step 6: Update `_entities/index.md`**

After all batches, update counts and add:

```markdown
## Migração Reno 2026-05-11

Os atendimentos antigos de `_agents/reno/atendimentos/` foram migrados para modelo duplo:

- perfil consolidado em `_entities/`;
- evento operacional datado em `_journal/reno/`.

Quando houve duplicidade provável, a entidade canônica recebeu aliases e múltiplos IDs externos. Quando houve ambiguidade real, a nota manteve seção `## Ambiguidade`.
```

- [ ] **Step 7: Commit index update**

Run:

```powershell
git add -- _entities/index.md _meta/migration-2026-05-11-reno-second-brain.md
git commit -m "docs: update entity index after Reno atendimento migration"
```

Expected: commit succeeds.

### Task 8: Migrate Auditorias, Journals, Plans, And Remaining Operational Notes

**Files:**

- Create: `_journal/reno/*.md`
- Modify: `_journal/index.md`
- Modify: `_meta/migration-2026-05-11-reno-second-brain.md`
- Read: `_agents/reno/auditorias/*.md`
- Read: `_agents/reno/journal/*.md`
- Read: `_agents/reno/planos/*.md`

- [ ] **Step 1: Migrate auditorias**

Move each `_agents/reno/auditorias/*.md` into `_journal/reno/` with the same basename unless the basename lacks a date. Preserve the date prefix. Use `type: journal`, `tags: [journal, reno, auditoria]`, and `mentions_entity: ["[[reno]]"]`.

Expected destinations include:

```text
_journal/reno/2026-04-27-auditoria-12-sem-atendimento.md
_journal/reno/2026-04-27-auditoria-19-nao-respondeu-sem-prova-envio.md
_journal/reno/2026-04-27-auditoria-87-nao-respondeu.md
_journal/reno/2026-04-27-auditoria-nao-respondeu-continuidade.md
_journal/reno/2026-04-27-auditoria-registro-vault.md
_journal/reno/2026-04-27-nova-analise-performance-reno.md
_journal/reno/2026-04-27-plano-correcao-registro-vault.md
_journal/reno/2026-04-27-reno-first-contact-uncertain17-10995-julia-santos.md
_journal/reno/2026-04-27-uncertain17-falha-10931.md
_journal/reno/2026-04-28-auditoria-registro-vault.md
_journal/reno/2026-04-28-correcao-diretorio-lead-atendimentos.md
_journal/reno/2026-04-28-fila-uncertain17-10570-supressao.md
_journal/reno/2026-04-28-first-contact-uncertain17-10714.md
_journal/reno/2026-04-29-auditoria-whatsapp-para-vault.md
_journal/reno/2026-05-06-fase-1-medicao-controle.md
```

- [ ] **Step 2: Migrate Reno journal files**

Move each `_agents/reno/journal/*.md` into `_journal/reno/` with the same basename and updated frontmatter. Preserve original body unless it contains obsolete path rules; if it does, add `## Estado atual` explaining the new global destinations.

Expected sources:

```text
_agents/reno/journal/2026-04-24-bootstrap-sanity.md
_agents/reno/journal/2026-04-24-documentos-operacionais-minimos-implementados.md
_agents/reno/journal/2026-04-24-governanca-e-manutencao-do-segundo-cerebro-formalizadas.md
_agents/reno/journal/2026-04-24-second-brain-writing-policy.md
_agents/reno/journal/2026-04-24-workflow-operacional-integrado.md
_agents/reno/journal/2026-04-24-workflow-to-mcp-obsidian-tool-mapping.md
```

- [ ] **Step 3: Migrate dated plan**

Migrate `_agents/reno/planos/2026-04-28-plano-reversao-resposta-agendamento.md` to `_journal/reno/2026-04-28-plano-reversao-resposta-agendamento.md` with `type: journal` unless the file is rewritten as a current procedure. If rewritten as a current procedure, destination is `_runbooks/reno-reversao-resposta-agendamento.md`; record that choice in the migration ledger.

- [ ] **Step 4: Verify operational notes**

Run:

```powershell
rg -n "_agents/reno/(auditorias|journal|planos)" _journal/reno _runbooks _meta/migration-2026-05-11-reno-second-brain.md
(rg --files '_journal\reno' | Measure-Object).Count
```

Expected: origin paths appear only in evidence/migration notes; `_journal/reno` count increased by at least 22 from these sources plus atendimento journals.

- [ ] **Step 5: Commit**

Run:

```powershell
git add -- _journal/reno _runbooks _journal/index.md _meta/migration-2026-05-11-reno-second-brain.md
git commit -m "docs: migrate Reno operational journals"
```

Expected: commit succeeds.

### Task 9: Fix Links And Remove `_agents`

**Files:**

- Modify: all migrated Markdown files with obsolete links.
- Delete: `_agents/README.md`
- Delete: `_agents/reno/**`
- Modify: `README.md`
- Modify: `_hubs/index.md`
- Modify: `_meta/migration-2026-05-11-reno-second-brain.md`

- [ ] **Step 1: Find obsolete links**

Run:

```powershell
rg -n "_agents/reno|_agents\\reno|\[\[reno/|\[\[playbook-atendimento\]\]|\[\[second-brain-governance\]\]|\[\[operacao-crm-webhook\]\]" --glob '!docs/superpowers/**'
```

Expected before fixes: matches in migrated content and old `_agents` sources.

- [ ] **Step 2: Apply canonical link replacements**

Use these replacements:

```text
[[reno/README|reno]] -> [[reno-hub]]
[[reno/README]] -> [[reno-hub]]
[[playbook-atendimento]] -> [[reno-playbook-atendimento]]
[[second-brain-governance]] -> [[reno-second-brain-governance]]
[[operacao-crm-webhook]] -> [[reno-operacao-crm-webhook]]
[[registro-vault-reno]] -> [[reno-registro-vault]]
```

For source-path evidence strings like `_agents/reno/atendimentos/<file>.md`, keep them inside `## Evidência original` or migration ledger only.

- [ ] **Step 3: Verify `_agents` is no longer needed**

Run:

```powershell
rg -n "_agents/reno|_agents\\reno|\[\[reno/" --glob '!docs/superpowers/**' --glob '!_meta/migration-2026-05-11-reno-second-brain.md' --glob '!_meta/reno-atendimentos-migration-manifest-2026-05-11.md'
```

Expected: no output outside migration evidence.

- [ ] **Step 4: Delete `_agents`**

Before deleting, verify absolute path:

```powershell
(Resolve-Path -LiteralPath '_agents').Path
```

Expected:

```text
C:\fama-brain\_agents
```

Delete with native PowerShell:

```powershell
Remove-Item -LiteralPath '_agents' -Recurse
```

- [ ] **Step 5: Verify deletion**

Run:

```powershell
Test-Path -LiteralPath '_agents'
git status --short --untracked-files=all
```

Expected:

```text
False
```

Git status should show `_agents` deletions plus link/map edits.

- [ ] **Step 6: Commit**

Run:

```powershell
git add -A
git commit -m "docs: remove legacy Reno agent namespace"
```

Expected: commit succeeds and records `_agents` removal.

### Task 10: Final Audit And Acceptance

**Files:**

- Modify: `_meta/migration-2026-05-11-reno-second-brain.md`
- Modify: `README.md`
- Modify: indexes if audit finds gaps.

- [ ] **Step 1: Audit obsolete namespace**

Run:

```powershell
rg -n "_agents/reno|_agents\\reno|\[\[reno/" --glob '!docs/superpowers/**' --glob '!_meta/migration-2026-05-11-reno-second-brain.md' --glob '!_meta/reno-atendimentos-migration-manifest-2026-05-11.md'
```

Expected: no output.

- [ ] **Step 2: Audit frontmatter**

Run:

```powershell
Get-ChildItem -Recurse -Filter *.md | Where-Object {
  $_.FullName -notlike '*\.git\*'
} | Where-Object {
  $first = Get-Content -LiteralPath $_.FullName -TotalCount 1 -ErrorAction SilentlyContinue
  $first -ne '---'
} | Select-Object -ExpandProperty FullName
```

Expected: no migrated content files without frontmatter. If docs under `docs/superpowers/` do not use vault frontmatter, record them as out-of-vault implementation docs in the migration ledger.

- [ ] **Step 3: Audit indexes**

Run:

```powershell
rg -n "reno-hub|reno-profile|_journal/reno|2026-05-11-reno-second-brain-vault|migration-2026-05-11-reno-second-brain" README.md _hubs/index.md _runbooks/index.md _journal/index.md _decisions/index.md _meta/index.md
```

Expected: every canonical new area is reachable from an index or root map.

- [ ] **Step 4: Audit atendimento migration count**

Run:

```powershell
(Select-String -LiteralPath '_meta\reno-atendimentos-migration-manifest-2026-05-11.md' -Pattern 'pending').Count
(Select-String -LiteralPath '_meta\reno-atendimentos-migration-manifest-2026-05-11.md' -Pattern 'migrated').Count
```

Expected:

```text
0
153
```

If special statuses are used, such as `migrated-journal-only` or `ambiguous`, total migrated/special statuses must equal 153 and `pending` must be 0.

- [ ] **Step 5: Record audit result in migration ledger**

Append:

```markdown
## Auditoria final

Data: 2026-05-11

Resultado:

- `_agents/` removido após migração.
- Nenhum link canônico restante aponta para `_agents/reno/**`.
- Atendimentos migrados para modelo duplo: `_entities/` + `_journal/reno/`.
- Runbooks do Reno migrados para `_runbooks/`.
- Decisões do Reno migradas para `_decisions/`.
- Índices principais atualizados.

## Pendências fora desta migração

- Adaptar MCP para aceitar e validar plenamente a arquitetura Reno-first.
- Revisar periodicamente entidades ambíguas marcadas durante deduplicação.
```

- [ ] **Step 6: Final commit**

Run:

```powershell
git add -- _meta/migration-2026-05-11-reno-second-brain.md README.md _hubs/index.md _runbooks/index.md _journal/index.md _decisions/index.md _meta/index.md
git commit -m "docs: finalize Reno second brain migration audit"
```

Expected: commit succeeds.

- [ ] **Step 7: Verify clean repo**

Run:

```powershell
git status --short --untracked-files=all
git log --oneline -5
```

Expected: `git status` has no output. Latest commits show the migration sequence.

## Self-Review

Spec coverage:

- Reno-first global architecture: covered by Tasks 2, 3, and 9.
- Atendimentos as `_entities/` plus `_journal/reno/`: covered by Tasks 5, 6, and 7.
- Schema/frontmatter/link rules: covered by Tasks 2, 3, 4, 6, 7, 8, and 10.
- Complete migration, not gradual: covered by Tasks 7, 8, and 9.
- Future Reno writing rules: covered by Tasks 2 and 3.
- Final audit: covered by Task 10.
- MCP excluded: stated in scope and migration ledger; no task modifies MCP.

Placeholder scan:

- The plan was checked for common unfinished-work markers, angle-bracket fields, and vague template fields.
- The only deliberate runtime branch is the dated plan destination in Task 8; it has an explicit decision rule and requires recording the chosen path in the migration ledger.

Type consistency:

- New notes use schema v1 `type` values: `reference`, `hub`, `runbook`, `decision`, `entity`, `interaction`, and `journal`.
- Reno hub filename is `reno-hub.md` to avoid collision with `_entities/reno.md`.
- Journals consistently live under `_journal/reno/`.
