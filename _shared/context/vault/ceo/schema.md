---
type: shared-context
owner: ceo
created: '2026-04-30'
updated: '2026-05-07'
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
| `journal` | Atividade diária, log operacional, atendimento, auditoria | `_agents/{agente}/{subtopic}/{slug}.md` | `_agents/reno/atendimentos/2026-04-27-auditoria.md` |
| `entity-profile` | Perfil durável de uma entidade externa (cliente, broker, parceiro, lead) | `_agents/{agente}/atendimentos/{id}-{slug}.md` (com `client_id`, canônico via EntityResolver), `_agents/{agente}/clientes/{id}-{slug}.md` (alternativa), ou `_agents/{agente}/lead/{slug}.md` (sem ID) | `_agents/reno/atendimentos/10930-cassio-coimbra.md`, `_agents/reno/lead/jonathan-barbosa.md` |
| `context` | Contexto institucional curado por tema | `_shared/context/{topic}/{slug}.md` ou `_shared/context/{topic}/{agente}/{slug}.md` | `_shared/context/fama/historia.md` |
| `shared-context` | Contexto compartilhado escrito por agente, lido por todos | `_shared/context/{topic}/{agente}/{slug}.md` | `_shared/context/vault/ceo/schema.md` |
| `goal` | Meta declarada para um período | `_shared/goals/{periodo}/{agente}.md` | `_shared/goals/2026-q2/ceo.md` |
| `result` | Resultado entregue vs. meta | `_shared/results/{periodo}/{agente}.md` | `_shared/results/2026-q2/ceo.md` |
| `moc` | Map of Content — índice estruturado | `{path}/README.md` | `_agents/README.md` |
| `agents-map` | Ownership map (privilegiado) | `_shared/context/AGENTS.md` | único arquivo |
| `project-readme` | Doc de projeto técnico | `_infra/{projeto}/README.md` | `_infra/mcp-obsidian/README.md` |
| `hub` | Nota canônica de empreendimento, fonte ou região (referenciada via auto-wikilinks) | `_shared/hubs/{tipo}/{slug}.md` | `_shared/hubs/empreendimentos/garden-sul.md` |

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
- `atendimentos/` — convive com dois usos pelo design do MCP:
  - `entity-profile` com `client_id` na forma `{id}-{slug}.md` — **path canônico via EntityResolver** (busca prefix `{id}-` aqui).
  - `journal` de atendimento na forma `YYYY-MM-DD-{slug}.md` — log de interação CRM, sem ID.
- `lead/` — `entity-profile` `entity_type: lead` na forma `{slug}.md`. Sem ID externo. Escrito hardcoded pelo MCP `upsert_lead_timeline`. Lead vira `atendimentos/{id}-{slug}.md` quando o ID externo é atribuído.
- `clientes/` — caminho alternativo histórico para `entity-profile` com ID. **Mantido apenas para retrocompatibilidade**; novas escritas devem ir para `atendimentos/{id}-{slug}.md` (canônico via resolver).
- `auditorias/` — `journal` de auditoria.
- `brokers/` — `entity-profile` de broker na forma `broker-{id}-{slug}.md` (canônico via EntityResolver).
- `decisions.md`, `profile.md`, `README.md` na raiz.

**Naming de arquivos em subpastas:**
- entity-profile com ID: `{id}-{slug}.md` em `atendimentos/` (preferencial) ou `clientes/` (legado).
- entity-profile broker: `broker-{id}-{slug}.md` em `brokers/`.
- entity-profile lead (pré-conversão): `{slug}.md` em `lead/` — pelo MCP por design.
- journal de atendimento sem ID: `atendimentos/YYYY-MM-DD-{slug}.md`.
- journal de auditoria: `auditorias/YYYY-MM-DD-{slug}.md`.

**Anti-padrões a corrigir:**
- `_agents/reno/cliente/` (singular) — mover para `_agents/reno/clientes/` ou `atendimentos/` por convenção atual.
- `entity-profile` solto em `_agents/{agente}/` (fora de subpasta) — mover para `atendimentos/{id}-{slug}.md`.
- `type: interaction` ou outros types fora da lista canônica — re-tipar para `entity-profile` (com ID) ou `journal` (sem ID).
- `cliente-{id}-{slug}.md` (prefix legado) — renomear para `{id}-{slug}.md`.
- Notas duplicadas com e sem ID (`bruno-savio.md` + `10971-bruno-savio.md`) — manter a com ID, deduplicar a outra.
- Nesting confuso (`atendimentos/clientes/...`) — escolher um nível.

### `_shared/context/{topic}/`

Contexto institucional. `topic` em kebab-case, lowercase.

- Sem agente owner: `_shared/context/{topic}/{slug}.md` (curado pelo Renato ou CEO).
- Com agente owner: `_shared/context/{topic}/{agente}/{slug}.md`.
- Index do tema: `_shared/context/{topic}/index.md` quando o tema tem múltiplas notas.

### `_shared/hubs/{tipo}/`

Notas-âncora canônicas para conectores naturais (empreendimentos, brokers, fontes, regiões). Type `hub`. Criadas via `upsert_hub` ou auto-stub do EntityResolver.

- `_shared/hubs/empreendimentos/{slug}.md` (Garden Sul, Union Vista, Union Vereda, Grand Ville, Place Arbi, Shopping Park, ...).
- `_shared/hubs/fontes/{slug}.md` (Facebook Ads, WhatsApp, FamaChat).
- `_shared/hubs/regioes/{slug}.md` (Jaraguá, Zona Sul, Zona Oeste, Centro).
- `_shared/hubs/brokers/broker-{id}-{slug}.md` (quando relevante a múltiplos agentes).

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

- 2026-05-07 (vault-steward, autorizado pelo CEO via [FAM-772](/FAM/issues/FAM-772) — D1 `resolver-wins`): schema reconhece `_agents/{agente}/atendimentos/{id}-{slug}.md` como path canônico de `entity-profile` com `client_id`. Motivação: o `EntityResolver` (`src/vault/entity-resolver.ts`) deployado em 2026-05-07 busca client_id por prefix `{id}-` em `atendimentos/`. Mover ~140 arquivos para alinhar a um doc de schema seria cauda balançando o cachorro; ajustar o doc é zero-risco. `clientes/` continua válido para retrocompatibilidade. Adicionado também `hub` à lista de types canônicos e seção `_shared/hubs/{tipo}/`. Anti-padrões atualizados: entity-profile em atendimentos não é mais erro; entity-profile solto fora de subpasta sim.
- 2026-04-30 (CEO): adicionado `lead/` como subpasta canônica em `_agents/{agente}/`. Motivação: o MCP `upsert_lead_timeline` (Plan 2) escreve hardcoded nesse path por design. Schema deve refletir o que o tool já faz. Atendimentos/ é reservado para journals; entity-profile com `entity_type: lead` mora em `lead/`. Reverter ~70 arquivos migrados erroneamente para `atendimentos/` durante o big-bang. Também explicitada permissão cross-território do vault-steward para saneamento estrutural.
