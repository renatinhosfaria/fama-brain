---
type: context
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags:
  - plan
  - reno
  - vault
  - second-brain
  - skills
---
# Reno Vault Autonomous Memory Implementation Plan

> **For Hermes:** Use direct Hermes tools for MCP/vault writes and `skill_manage` for skill patches. If a coding-style execution agent is used later, use `subagent-driven-development` task-by-task and keep all vault writes verifiable by read-back.

**Goal:** Implementar a Opção C aprovada: Reno mantém o `fama-brain` como segunda memória autônoma, podendo atualizar `_entities/`, `_journal/reno/`, `_runbooks/`, `_hubs/` e `_shared/context/` com guardrails, evidência e read-back.

**Architecture:** O CRM/FamaChat continua como fonte operacional de verdade. O vault fica como memória curada por tipo de conhecimento: eventos em `_journal/reno/`, fatos duráveis em `_entities/`, procedimentos em `_runbooks/`, contexto institucional em `_shared/context/`, navegação em `_hubs/`, decisões aprovadas em `_decisions/` e governança técnica em `_meta/`. As skills Reno/Fama devem apontar para `fama-reno-vault-governance` como contrato central e não podem voltar a instruir escrita em `_agents/`.

**Tech Stack:** MCP `mcp-obsidian`, MCP `mcp-postgres` apenas quando houver validação CRM necessária, Hermes `skill_manage`, Hermes `search_files/read_file`, Markdown Obsidian, YAML frontmatter compatível com o vault.

---

## Reference Documents

**Approved design:**
- `docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md`

**Existing related plan:**
- `docs/superpowers/plans/2026-05-12-reno-vault-manuais.md`

**Canonical vault documents to respect:**
- `README.md`
- `_meta/schema.md`
- `_runbooks/reno-vault-operacao.md`
- `_runbooks/reno-second-brain-governance.md`
- `_runbooks/reno-registro-vault.md`
- `_hubs/reno-hub.md`
- `_shared/context/AGENTS.md`

**Primary local skills to audit and patch:**
- `/home/hermes/.hermes/skills/sales/fama-reno-vault-governance/SKILL.md`
- `/home/hermes/.hermes/skills/sales/fama-reno-governance/SKILL.md`
- `/home/hermes/.hermes/skills/devops/fama-reno-webhook-first-contact/SKILL.md`
- `/home/hermes/.hermes/skills/sales/fama-reno-whatsapp-qualification/SKILL.md`
- `/home/hermes/.hermes/skills/sales/repescagem-follow-up/SKILL.md`
- `/home/hermes/.hermes/skills/sales/resgate-follow-up/SKILL.md`
- `/home/hermes/.hermes/skills/sales/agendamento-follow-up/SKILL.md`
- `/home/hermes/.hermes/skills/sales/reno-visit-scheduling/SKILL.md`
- `/home/hermes/.hermes/skills/devops/reno-follow-up-recovery/SKILL.md`
- `/home/hermes/.hermes/skills/devops/fama-reno-follow-up-worker-audit/SKILL.md`
- `/home/hermes/.hermes/skills/sales/fama-reno-skill-authoring/SKILL.md`

## Task 1: Establish Implementation Baseline

**Objective:** Confirmar que o plano parte da spec aprovada, do vault atual e do drift real das skills.

**Files:**
- Read: `docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md`
- Read: `docs/superpowers/plans/2026-05-12-reno-vault-manuais.md`
- Inspect: `/home/hermes/.hermes/skills/**/SKILL.md`

**Step 1: Read the approved spec**

Use `mcp_mcp_obsidian_read_note` on:

```text
docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md
```

Expected: content confirms Opção C, autonomy matrix, CRM-first rule, `_agents/` prohibition and skill governance section.

**Step 2: Check vault status**

Use `mcp_mcp_obsidian_git_status`.

Expected: no pending vault changes before implementation, or explicitly record any pending state before writing.

**Step 3: Check current skill drift counts**

Run:

```bash
rg -n "_agents/reno|_agents/reno/atendimentos|atendimentos/\{client_id\}|entity-profile|shared-context|type: null" /home/hermes/.hermes/skills --glob 'SKILL.md'
```

Expected: occurrences are classified as active drift, historical/migration context, or negative rule. Active drift becomes patch work in later tasks.

**Step 4: Confirm no local vault filesystem dependency**

Do not use `/vault` or `/root/fama-brain` for writes. All vault writes must go through `mcp-obsidian`.

Expected: implementation notes explicitly say vault writes are MCP-only.

## Task 2: Register Canonical Decision For Opção C

**Objective:** Criar uma decisão canônica no vault dizendo que Renato aprovou a autonomia ampla com guardrails.

**Files:**
- Create: `_decisions/2026-05-12-reno-vault-memoria-autonoma.md`
- Read: `docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md`

**Step 1: Write the decision note via MCP**

Use `mcp_mcp_obsidian_write_note` with `as_agent='renato'`.

Frontmatter:

```yaml
type: decision
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags:
  - reno
  - vault
  - second-brain
  - autonomy
status: approved
```

Body must include:

```md
# Decisão: Reno pode operar o vault como memória autônoma com guardrails

## Decisão

Renato aprovou a Opção C: Reno pode atualizar `_entities/`, `_journal/reno/`, `_runbooks/`, `_hubs/` e `_shared/context/` conforme o tipo de conhecimento, desde que respeite evidência, ownership, read-back via MCP e guardrails da spec aprovada.

## Regras centrais

- CRM/FamaChat continua sendo a fonte operacional de verdade.
- Eventos e auditorias do Reno pertencem a `_journal/reno/`.
- Fatos duráveis pertencem a `_entities/` quando houver evidência rastreável.
- Procedimentos reutilizáveis pertencem a `_runbooks/`.
- Contexto institucional reutilizável pertence a `_shared/context/`.
- Hubs organizam navegação e não substituem fontes de verdade.
- Decisões canônicas exigem aprovação humana.
- Mudanças estruturais em `_meta/`, schema, ownership ou topologia exigem aprovação humana.
- Nenhuma escrita nova deve usar `_agents/`.

## Fonte

Spec aprovada: `docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md`.
```

**Step 2: Read back the decision**

Use `mcp_mcp_obsidian_read_note` on the new decision.

Expected: frontmatter is valid, status is `approved`, and the note does not claim anything beyond the approved spec.

**Step 3: Record a short journal entry for the decision registration**

Create or append a dated journal note in `_journal/reno/` summarizing that the decision was registered. Keep it concise and link the decision and spec.

Expected: audit trail exists in `_journal/reno/`.

## Task 3: Update Canonical Vault Runbooks And Hub

**Objective:** Garantir que os documentos centrais do vault expressem a Opção C sem drift para `_agents/`.

**Files:**
- Modify if needed: `_runbooks/reno-vault-operacao.md`
- Modify if needed: `_runbooks/reno-second-brain-governance.md`
- Modify if needed: `_runbooks/reno-registro-vault.md`
- Modify if needed: `_hubs/reno-hub.md`
- Reference: `_decisions/2026-05-12-reno-vault-memoria-autonoma.md`

**Step 1: Read each target note**

Use `mcp_mcp_obsidian_read_note` for each file.

Expected: all read successfully. If frontmatter fails, stop and report the exact MCP error before writing.

**Step 2: Patch active rules only**

Update only active instructions that conflict with Opção C. Preserve historical migration references if they are clearly marked as historical.

Required active rule block:

```md
## Regra atual de memória do Reno

Desde a decisão de 2026-05-12, o Reno opera o vault no modelo autônomo com guardrails:

- CRM/FamaChat é a fonte operacional de verdade.
- `_journal/reno/` guarda eventos e auditorias.
- `_entities/` guarda fatos duráveis com evidência.
- `_runbooks/` guarda procedimentos reutilizáveis.
- `_shared/context/` guarda contexto institucional reutilizável.
- `_hubs/` organiza navegação.
- `_decisions/` registra apenas decisões aprovadas.
- `_meta/` é restrito para schema, ownership e governança técnica.
- `_agents/` não deve ser recriado para novas escritas.
```

**Step 3: Update `reno-hub` navigation**

Ensure `_hubs/reno-hub.md` links to:

- the approved spec;
- the new decision;
- `_runbooks/reno-vault-operacao.md`;
- `_runbooks/reno-second-brain-governance.md`;
- `fama-reno-vault-governance` as skill reference if the hub includes skill references.

Expected: hub points to sources of truth and does not duplicate the full spec.

**Step 4: Read back all modified notes**

Use `mcp_mcp_obsidian_read_note` for each modified path.

Expected: each note reads successfully, frontmatter remains valid, and no active instruction says to write in `_agents/`.

## Task 4: Patch Central Governance Skills

**Objective:** Fazer a governança local das skills refletir a Opção C e servir como fonte central para as outras skills.

**Files:**
- Modify: `/home/hermes/.hermes/skills/sales/fama-reno-vault-governance/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/sales/fama-reno-governance/SKILL.md`

**Step 1: Load both skills**

Use `skill_view` for:

```text
fama-reno-vault-governance
fama-reno-governance
```

Expected: current content is available and can be patched with `skill_manage`.

**Step 2: Ensure `fama-reno-vault-governance` has the full canonical rule**

Required concepts:

- Opção C autônoma com guardrails;
- CRM-first;
- `_journal/reno/` for events;
- `_entities/` for durable facts;
- `_runbooks/`, `_hubs/`, `_shared/context/` for reusable knowledge;
- `_decisions/` requires approval;
- `_meta/` restricted;
- `_agents/` prohibited for new writes;
- read-back required after relevant writes.

Expected: the skill contains this rule near the top and in its checklist.

**Step 3: Add a short pointer in `fama-reno-governance`**

Patch a short block, not the full spec:

```md
## Vault e segunda memória

Quando uma tarefa do Reno tocar Obsidian/vault, siga `fama-reno-vault-governance` como contrato canônico. CRM/FamaChat continua como fonte operacional de verdade; eventos vão para `_journal/reno/`, fatos duráveis para `_entities/`, aprendizados reutilizáveis para `_runbooks/`, `_hubs/` ou `_shared/context/`, decisões canônicas exigem aprovação e nenhuma escrita nova deve usar `_agents/`. Toda escrita relevante exige read-back via MCP.
```

Expected: general governance points to the specialized skill without duplicating the whole document.

**Step 4: Verify central skills**

Run:

```bash
rg -n "_agents/reno/atendimentos|_agents/reno/auditorias|_agents/reno/context|Path oficial usa _agents|Documento único em `_agents`" /home/hermes/.hermes/skills/sales/fama-reno-vault-governance/SKILL.md /home/hermes/.hermes/skills/sales/fama-reno-governance/SKILL.md
```

Expected: no active old instruction remains. Negative rules such as “não criar em `_agents/`” are allowed.

## Task 5: Patch First Contact And Qualification Skills

**Objective:** Atualizar as skills que registram primeiro atendimento e qualificação para usarem o novo modelo `_journal/reno/` + `_entities/`.

**Files:**
- Modify: `/home/hermes/.hermes/skills/devops/fama-reno-webhook-first-contact/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/sales/fama-reno-whatsapp-qualification/SKILL.md`

**Step 1: Patch `fama-reno-webhook-first-contact` active vault effects**

Replace active references like:

```md
Documento único em `_agents/reno/atendimentos/{client_id}-{slug}.md`
```

with:

```md
Evento curado em `_journal/reno/YYYY-MM-DD-{evento}.md` e, quando houver fato durável confirmado, entidade consolidada em `_entities/{slug}.md`, sempre seguindo `fama-reno-vault-governance` e com read-back via MCP.
```

Expected: success criteria and checklists mention `_journal/reno/` and `_entities/`, not `_agents/reno/atendimentos/` as active destination.

**Step 2: Patch qualification skill**

Ensure the qualification skill says:

- CRM/FamaChat remains source of truth;
- qualification events and important turns are journaled in `_journal/reno/`;
- durable preferences or corrected client facts may be consolidated in `_entities/`;
- no raw WhatsApp transcript or internal tool output goes to the vault;
- follow `fama-reno-vault-governance` for any vault write.

Expected: the skill does not instruct writing a unique attendance document under `_agents/`.

**Step 3: Verify both skills**

Run:

```bash
rg -n "_agents/reno|atendimentos/\{client_id\}|documento único|Vault atualizado" /home/hermes/.hermes/skills/devops/fama-reno-webhook-first-contact/SKILL.md /home/hermes/.hermes/skills/sales/fama-reno-whatsapp-qualification/SKILL.md
```

Expected: any remaining `_agents/` reference is explicitly negative or historical. Active vault effects use `_journal/reno/` and `_entities/`.

## Task 6: Patch Follow-Up, Scheduling And Recovery Skills

**Objective:** Atualizar skills de repescagem, resgate, agendamento, visita, recovery e auditoria para não reintroduzirem `_agents/`.

**Files:**
- Modify: `/home/hermes/.hermes/skills/sales/repescagem-follow-up/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/sales/resgate-follow-up/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/sales/agendamento-follow-up/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/sales/reno-visit-scheduling/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/devops/reno-follow-up-recovery/SKILL.md`
- Modify: `/home/hermes/.hermes/skills/devops/fama-reno-follow-up-worker-audit/SKILL.md`

**Step 1: Add the short vault-governance block to each skill**

Use this block, adapted only for grammar:

```md
### Vault e segunda memória

Quando esta rotina tocar o vault, siga `fama-reno-vault-governance`. CRM/FamaChat continua como fonte operacional de verdade; eventos, envios, falhas e auditorias vão para `_journal/reno/`; fatos duráveis confirmados podem atualizar `_entities/`; aprendizados reutilizáveis podem atualizar `_runbooks/`, `_hubs/` ou `_shared/context/`; decisões canônicas exigem aprovação; `_meta/` é restrito; nenhuma escrita nova deve usar `_agents/`; toda escrita relevante exige read-back via MCP.
```

Expected: every operational skill has the same short pointer instead of duplicating the full spec.

**Step 2: Replace active “documento curado/documento único” references**

For each skill, replace active references to:

- `_agents/reno/atendimentos/`;
- `_agents/reno/auditorias/`;
- “documento único do atendimento”;
- “documento curado em `_agents/reno/`”.

Use the new terms:

- “journal curado em `_journal/reno/`” for events/audits;
- “entidade em `_entities/`” for durable facts;
- “runbook/context/hub” for reusable operational learning.

Expected: no task outcome requires `_agents/`.

**Step 3: Preserve operational status/meta_data rules**

Do not change:

- repescagem status/meta rules;
- resgate status/meta rules;
- agendamento status/meta rules;
- WhatsApp bridge behavior;
- follow-up max step behavior;
- appointment creation/validation behavior.

Expected: vault path changes do not alter CRM/FamaChat business logic.

**Step 4: Verify patched follow-up skills**

Run:

```bash
rg -n "_agents/reno|_agents/reno/atendimentos|_agents/reno/auditorias|documento único|documento curado" /home/hermes/.hermes/skills/sales/repescagem-follow-up/SKILL.md /home/hermes/.hermes/skills/sales/resgate-follow-up/SKILL.md /home/hermes/.hermes/skills/sales/agendamento-follow-up/SKILL.md /home/hermes/.hermes/skills/sales/reno-visit-scheduling/SKILL.md /home/hermes/.hermes/skills/devops/reno-follow-up-recovery/SKILL.md /home/hermes/.hermes/skills/devops/fama-reno-follow-up-worker-audit/SKILL.md
```

Expected: remaining matches are either negative rules, historical reference notes, or explicitly marked migration context.

## Task 7: Patch Skill Authoring And Classify Generic Obsidian Mentions

**Objective:** Garantir que futuras skills Reno/Fama nasçam com a topologia nova e que skills genéricas não sejam alteradas sem necessidade.

**Files:**
- Modify: `/home/hermes/.hermes/skills/sales/fama-reno-skill-authoring/SKILL.md`
- Inspect only unless active Reno drift exists: `/home/hermes/.hermes/skills/note-taking/obsidian/SKILL.md`
- Inspect only unless active Reno drift exists: `/home/hermes/.hermes/skills/note-taking/obsidian-agent-second-brain-design/SKILL.md`

**Step 1: Patch Reno skill-authoring template**

Add guidance that any new Reno/Fama skill touching vault must include the short vault-governance block and refer to `fama-reno-vault-governance`.

Expected: future skills stop reintroducing `_agents/`.

**Step 2: Inspect generic note-taking skills**

Use `read_file` or `search_files` to inspect matches in generic skills.

Expected: do not patch generic skills if mentions are examples, historical references, or non-Fama/non-Reno guidance. Patch only if an active instruction for Reno/Fama points to `_agents/`.

**Step 3: Verify authoring skill**

Run:

```bash
rg -n "fama-reno-vault-governance|_journal/reno|_entities|_agents/reno" /home/hermes/.hermes/skills/sales/fama-reno-skill-authoring/SKILL.md
```

Expected: new governance appears; `_agents/reno` appears only as a negative/legacy warning if present.

## Task 8: Run Final Drift Audit Across Skills And Vault

**Objective:** Confirmar que o drift ativo foi eliminado e que o vault não manda mais criar `_agents/`.

**Files:**
- Inspect: `/home/hermes/.hermes/skills/**/SKILL.md`
- Inspect via MCP: `_runbooks/`, `_hubs/`, `_shared/context/`, `_meta/`, `docs/superpowers/specs/`, `docs/superpowers/plans/`

**Step 1: Run local skill drift search**

Run:

```bash
rg -n "_agents/reno|_agents/reno/atendimentos|_agents/reno/auditorias|atendimentos/\{client_id\}|entity-profile|shared-context|type: null|documento único em `_agents`|documento curado em `_agents`" /home/hermes/.hermes/skills --glob 'SKILL.md'
```

Expected: no active instruction remains. Remaining references must be one of:

- negative prohibition;
- historical migration reference;
- fallback note explicitly marked as obsolete/legacy;
- generic non-Reno example that does not govern current Reno operations.

**Step 2: Run vault drift searches via MCP**

Use `mcp_mcp_obsidian_search_content` for:

```text
_agents/reno/atendimentos
_agents/reno/auditorias
entity-profile
shared-context
type: null
```

Run searches in scoped paths where possible: `_runbooks`, `_hubs`, `_shared/context`, `_meta`, `docs/superpowers`.

Expected: active runbooks/hubs/context do not instruct new `_agents/` writes. Migration manifests may still mention old paths as historical evidence.

**Step 3: Check `_agents` remains inactive**

Use `mcp_mcp_obsidian_list_folder` on `_agents`.

Expected: `0 item(s)` or no active namespace. If `_agents` exists, stop and report before continuing.

**Step 4: Verify central positive terms exist**

Run local and MCP checks for:

```text
_journal/reno
_entities
fama-reno-vault-governance
read-back
CRM/FamaChat continua como fonte operacional
```

Expected: affected skills and runbooks consistently use the new terms.

## Task 9: Register Implementation Journal And Update Hub Links

**Objective:** Deixar trilha de auditoria no vault sobre o que foi implementado.

**Files:**
- Create: `_journal/reno/2026-05-12-reno-vault-memoria-autonoma-implementacao.md`
- Modify if needed: `_hubs/reno-hub.md`

**Step 1: Write implementation journal**

Use `mcp_mcp_obsidian_write_note` with `as_agent='reno'` if allowed for `_journal/reno/`; otherwise use the owner indicated by MCP and record the ownership reason.

Frontmatter:

```yaml
type: journal
owner: reno
created: '2026-05-12'
updated: '2026-05-12'
tags:
  - reno
  - vault
  - implementation
  - audit
```

Body must include:

- approved spec path;
- decision path;
- list of vault docs changed;
- list of skills patched;
- final drift audit result;
- remaining allowed historical references;
- any blockers or non-changes.

**Step 2: Update `reno-hub` if needed**

Ensure `reno-hub` links to the decision, spec, plan and implementation journal.

Expected: hub works as navigation entry point, not as duplicated content.

**Step 3: Read back journal and hub**

Use `mcp_mcp_obsidian_read_note`.

Expected: both read successfully and links are visible.

## Task 10: Final Verification And Handoff

**Objective:** Fechar a implementação com evidência verificável.

**Files:**
- All modified vault notes.
- All modified skill files.

**Step 1: Re-run placeholder searches**

For vault plan/spec/journal docs, use MCP searches for:

```text
TBD
TODO
pendente
preencher depois
```

For local skills, run:

```bash
rg -n "TBD|TODO|FIXME|preencher depois|pendente inserir" /home/hermes/.hermes/skills/sales /home/hermes/.hermes/skills/devops --glob 'SKILL.md'
```

Expected: no new placeholders introduced. Existing unrelated placeholders must be identified as pre-existing or out of scope.

**Step 2: Re-run read-back for every modified vault note**

Use `mcp_mcp_obsidian_read_note` on each modified path.

Expected: all frontmatter valid and all notes readable.

**Step 3: Check vault Git status**

Use `mcp_mcp_obsidian_git_status`.

Expected: status is clean or any non-clean state is reported exactly. Do not claim a manual commit if MCP reports clean without a visible commit operation.

**Step 4: Summarize local skill changes**

Run:

```bash
rg -n "Vault e segunda memória|fama-reno-vault-governance|_journal/reno|_entities|nenhuma escrita nova deve usar `_agents`" /home/hermes/.hermes/skills --glob 'SKILL.md'
```

Expected: all affected Reno/Fama skills include the governance pointer or updated canonical behavior.

**Step 5: Final user report**

Report to Renato:

- vault notes created/updated;
- skills patched;
- drift patterns eliminated or intentionally retained as historical/negative;
- MCP read-back result;
- vault Git status;
- any remaining risks or follow-up recommendations.

## Self-Review Checklist

Before executing this plan, confirm:

- The design spec has been approved by Renato.
- The plan does not ask to recreate `_agents/`.
- The plan does not change CRM/FamaChat status rules.
- The plan does not change follow-up cadence or WhatsApp sending behavior.
- The plan separates design/spec/planning from implementation.
- The plan updates skills selectively, not blindly.
- The plan requires read-back after every relevant vault write.
- The plan treats decisions and `_meta/` as approval-gated.
