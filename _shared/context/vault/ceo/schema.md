---
type: shared-context
owner: ceo
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - vault
  - schema
  - governance
  - standards
topic: vault
title: 'Schema canônico do vault Obsidian — types, frontmatter, paths'
---
## TL;DR

Este é o schema oficial do vault. Toda nota precisa ter frontmatter válido, type canônico e morar no path correto. O `vault-steward` enforça; cada agente é responsável pelo próprio território; cross-território é responsabilidade do steward.

## 1. Frontmatter obrigatório

Toda nota MUST ter frontmatter YAML com pelo menos:

```yaml
---
type: <um-dos-types-canônicos>
owner: <nome-do-agente-dono>      # nunca vazio
created: 'YYYY-MM-DD'             # data de criação
updated: 'YYYY-MM-DD'             # data da última edição substantiva
tags: [tag-1, tag-2]              # 3-5 tags específicas, não genéricas
---
```

Frontmatter adicional permitido por type — ver seção 2.

**Tag policy:**
- 3-5 tags por nota. Mais que isso vira ruído.
- Tags em kebab-case (`primeiro-contato`, não `primeiroContato`).
- Tags **específicas** > genéricas. `meta-ads-criativos` > `marketing`.
- Sem tags vazias, sem tags duplicadas, sem tags só com nome do agente (já está em `owner`).

## 2. Types canônicos

Cada nota tem exatamente um `type`. Lista fechada — qualquer type fora dessa lista é inválido.

| Type | O que é | Onde mora | Exemplo |
|---|---|---|---|
| `agent-profile` | Papel, escopo, modo de operar de um agente | `_agents/{agente}/profile.md` | `_agents/ceo/profile.md` |
| `agent-decisions` | Decisões em ordem cronológica reversa, com rationale | `_agents/{agente}/decisions.md` | `_agents/ceo/decisions.md` |
| `agent-readme` | Índice de pointers para o conteúdo do agente | `_agents/{agente}/README.md` | `_agents/reno/README.md` |
| `journal` | Atividade diária, log operacional, atendimento, auditoria | `_agents/{agente}/{subtopic}/{slug}.md` | `_agents/reno/atendimentos/10934-mateus-silva.md` |
| `entity-profile` | Perfil durável de uma entidade externa (cliente, broker, parceiro, lead) | `_agents/{agente}/clientes/{id}-{slug}.md` ou `_agents/{agente}/lead/{slug}.md` | `_agents/reno/clientes/10960-joao.md`, `_agents/reno/lead/jonathan-barbosa.md` |
| `context` | Contexto institucional curado por tema | `_shared/context/{topic}/{slug}.md` ou `_shared/context/{topic}/{agente}/{slug}.md` | `_shared/context/fama/historia.md` |
| `shared-context` | Contexto compartilhado escrito por agente, lido por todos | `_shared/context/{topic}/{agente}/{slug}.md` | `_shared/context/vault/ceo/schema.md` |
| `goal` | Meta declarada para um período | `_shared/goals/{periodo}/{agente}.md` | `_shared/goals/2026-q2/ceo.md` |
| `result` | Resultado entregue vs. meta | `_shared/results/{periodo}/{agente}.md` | `_shared/results/2026-q2/ceo.md` |
| `moc` | Map of Content — índice estruturado | `{path}/README.md` | `_agents/README.md` |
| `agents-map` | Ownership map (privilegiado) | `_shared/context/AGENTS.md` | único arquivo |
| `project-readme` | Doc de projeto técnico | `_infra/{projeto}/README.md` | `_infra/mcp-obsidian/README.md` |

**Regras de uso:**

- **Decisão estratégica (durável, com rationale)** → `agent-decisions`. NÃO journal.
- **Atividade do dia** → `journal`. NÃO decisão.
- **Aprendizado útil para outros agentes** → `shared-context`. NÃO journal privado.
- **Perfil de cliente que vai evoluir com cada interação** → `entity-profile`. NÃO journal.
- **Tema institucional (history, mercado, produtos)** → `context`. Não escrita por agente em particular, geralmente curado pelo Renato/CEO.

## 3. Paths e naming

### `_agents/{agente}/`

Território privado de cada agente. `agente` em lowercase, sem espaços.

Subpastas permitidas:
- `clientes/` (entity-profile com ID externo do CRM, plural — singular `cliente/` é typo).
- `lead/` (entity-profile criado pelo MCP `upsert_lead_timeline` — Plan 2 escreve hardcoded em `_agents/<agente>/lead/<slug>.md`. Lead vira `clientes/{id}-{slug}.md` quando o ID externo é atribuído).
- `atendimentos/` (journal de atendimento — log de interação CRM, não perfil).
- `auditorias/` (journal de auditoria).
- `decisions.md`, `profile.md`, `README.md` na raiz.

**Naming de arquivos em subpastas:**
- Com ID externo: `{id}-{slug}.md` (ex.: `10934-mateus-silva.md`).
- Sem ID (lead pré-conversão): `{slug}.md` em `lead/` — pelo MCP por design.
- Auditoria: `YYYY-MM-DD-{slug}.md` (ex.: `2026-04-27-auditoria-12-sem-atendimento.md`).

**Distinção lead/ vs clientes/ vs atendimentos/:**
- `lead/{slug}.md` — `entity-profile` `entity_type: lead`, sem ID do CRM ainda. Escrito pelo MCP Plan 2.
- `clientes/{id}-{slug}.md` — `entity-profile` com ID do CRM (cliente convertido).
- `atendimentos/{id}-{slug}.md` ou `atendimentos/YYYY-MM-DD-{slug}.md` — `journal` de cada interação. NUNCA entity-profile.

**Anti-padrões a corrigir:**
- `_agents/reno/cliente/` (singular) — mover para `_agents/reno/clientes/`.
- entity-profile em `atendimentos/` — mover para `lead/` (sem ID) ou `clientes/` (com ID).
- Notas duplicadas com e sem ID (`bruno-savio.md` + `10971-bruno-savio.md`) — manter a com ID, deduplicar a outra.
- Nesting confuso (`atendimentos/clientes/...`) — escolher um nível.

### `_shared/context/{topic}/`

Contexto institucional. `topic` em kebab-case, lowercase.

- Sem agente owner: `_shared/context/{topic}/{slug}.md` (curado pelo Renato ou CEO).
- Com agente owner: `_shared/context/{topic}/{agente}/{slug}.md`.
- Index do tema: `_shared/context/{topic}/index.md` quando o tema tem múltiplas notas.

### `_shared/goals/` e `_shared/results/`

- Período em kebab-case: `2026-q2`, `2026-04`, `2026-w17`.
- Por agente: `_shared/goals/2026-q2/ceo.md`.

### Anti-padrões cross-vault

- Frontmatter ausente.
- `type` fora da lista canônica.
- `owner` vazio ou inconsistente com o path.
- Paths em camelCase ou com espaços.
- Tags genéricas (`fama`, `marketing`) sem tags específicas.
- Documentos de "outro agente" no território próprio (ex.: decisão do Reno em `_agents/ceo/`).
- Múltiplas notas para a mesma entidade — escolher canônica, redirecionar/dedup outras.

## 4. Operações estruturais (responsabilidade do vault-steward)

O steward pode:
- Adicionar/corrigir frontmatter ausente em qualquer território do vault (incluindo `_shared/`, `_infra/`, `_agents/<qualquer>/` para correções estruturais — frontmatter, paths, dedup, wikilinks).
- Mover notas para path correto (e atualizar wikilinks).
- Deduplicar (consolidar conteúdo, redirecionar links).
- Renomear arquivos para seguir naming convention.
- Atualizar `_agents/README.md` quando agentes mudam.
- Reportar problemas de conteúdo (decisão registrada como journal, etc.) ao dono — sem reescrever.

O steward NÃO:
- Edita conteúdo substantivo (interpretação, julgamento, narrativa).
- Adiciona/remove decisões em `decisions.md` (histórico imutável).
- Decide estratégia ou taxonomia sem CEO.

**Permissão cross-território para correções estruturais:** O steward tem permissão de escrita em todo o vault para operações de saneamento (frontmatter ausente, path typo, naming convention, dedup) — desde que não toque conteúdo substantivo. Quando em dúvida sobre se uma correção é "estrutural" ou "substantiva", escala ao CEO via comentário antes de editar.

## 5. Checklist de auto-verificação para autores

Antes de escrever qualquer nota, garantir:

- [ ] Type está na lista canônica.
- [ ] Path bate com o type (ver tabela seção 2).
- [ ] Frontmatter completo (type, owner, created, updated, tags).
- [ ] 3-5 tags específicas em kebab-case.
- [ ] Owner == agente que está escrevendo.
- [ ] É o tipo certo? (decisão durável → decisions, não journal.)
- [ ] Não duplica nota existente — se duplica, atualiza a existente.

## 6. Evolução do schema

Mudanças neste schema seguem fluxo:
1. Proposta vai como decisão em `_agents/ceo/decisions.md` com rationale.
2. CEO atualiza este documento.
3. `vault-steward` aplica a mudança em todas as notas afetadas.
4. Próximas notas seguem o schema novo.

Schema é vivo. Mas mudança incremental, não reset.

## 7. Changelog

- 2026-04-30 (CEO): adicionado `lead/` como subpasta canônica em `_agents/{agente}/`. Motivação: o MCP `upsert_lead_timeline` (Plan 2) escreve hardcoded nesse path por design. Schema deve refletir o que o tool já faz. Atendimentos/ é reservado para journals; entity-profile com `entity_type: lead` mora em `lead/`. Reverter ~70 arquivos migrados erroneamente para `atendimentos/` durante o big-bang. Também explicitada permissão cross-território do vault-steward para saneamento estrutural.
