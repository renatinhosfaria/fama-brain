---
created: '2026-05-13'
owner: renato
schema_version: 1
source: mcp-obsidian-audit
status: active
tags:
  - meta
  - inventory
  - reno
  - post-migration
  - vault
type: context
updated: '2026-06-01'
---
# Inventário pós-migração — Reno vault

## Resumo executivo

Este inventário registra o baseline pós-migração do vault `fama-brain` após a integração do Agent Reno e das skills às novas configurações do vault/MCP.

A arquitetura ativa é Reno-first por tipo de conhecimento. O namespace `_agents/` não é destino operacional ativo e não deve ser recriado. Referências textuais a `_agents/reno` ainda existem como proveniência histórica, manifesto de migração, inventário antigo ou documentação de implementação; elas não devem ser interpretadas como rota atual de escrita.

## Baseline da auditoria

- Data: 2026-05-13.
- Ferramenta: `mcp-obsidian`.
- Estado inicial do git na Fase 0: `modified=[]`, `untracked=[]`, `ahead=0`, `behind=0`.
- Estatística observada: 442 notas, 11 tipos e 2 agentes.
- Listagem de `_agents`: 0 itens via MCP.

## Estrutura ativa

- `_entities/` — fatos duráveis sobre pessoas, leads, clientes, imóveis, empreendimentos, organizações e conceitos consolidados como entidade.
- `_journal/reno/` — eventos datados, atendimentos, auditorias e registros curados do Reno.
- `_runbooks/` — procedimentos operacionais e governança reutilizável.
- `_decisions/` — decisões atômicas aprovadas.
- `_hubs/` — navegação e MOCs.
- `_shared/context/` — contexto institucional, comercial e conceitual da Fama.
- `_meta/` — schema, inventário, migração, avaliação e estado técnico.
- `_projects/` — projetos, planos e iniciativas ativas ou históricas.

## Documentos canônicos Reno

- [[2026-05-12-reno-vault-memoria-autonoma]] — decisão canônica da Opção C: autonomia do Reno com guardrails.
- [[reno-vault-operacao]] — runbook principal de operação do vault pelo Reno.
- [[reno-second-brain-governance]] — governança do segundo cérebro do Reno.
- [[reno-registro-vault]] — procedimento de registro no vault.
- [[reno-hub]] — hub de navegação do Reno.
- [[_shared/context/AGENTS]] — mapa de ownership e autorização operacional.
- [[schema]] — schema e política de frontmatter/types.

## Classificação de drift `_agents/reno`

### Sem drift ativo encontrado

As buscas da Fase 0 retornaram zero ocorrência específica de `_agents/reno` em:

- `_runbooks/`
- `_shared/context/`
- `_hubs/`

Essas áreas não indicavam `_agents/reno` como destino ativo no baseline.

### Proveniência histórica aceitável

Ocorrências em `_journal/reno/` e `_entities/` aparecem majoritariamente como linhas `Origem migrada: ...`. Essas referências preservam rastreabilidade da migração e podem permanecer.

### Manifestos e inventários históricos

Ocorrências em `_meta/` aparecem em documentos como inventário antigo, manifestos e ledger de migração. São aceitáveis como histórico, desde que os índices atuais deixem claro que não são destino ativo.

### Decisões antigas

Algumas decisões antigas preservam texto original ou nota de migração com `_agents/reno`. Quando houver conflito operacional, a decisão de 2026-05-12 e a migração Reno-first de 2026-05-11 devem ser tratadas como contexto superseding para o destino documental. Decisões antigas não devem ser reescritas materialmente sem governança apropriada.

### Docs de implementação

Ocorrências em `docs/superpowers/**` são specs/plans históricos. Devem ser tratados como documentação de implementação ou auditoria, não como fonte operacional padrão do Reno.

## Pendências para Fase 2

- Atualizar [[schema]] para refletir o estado operacional atual do MCP/vault.
- Criar `_meta/embedding-state.md`.
- Criar `_meta/golden-queries.md`.
- Criar `_meta/retrieval-policy.md`.

## Pendências para Fase 3

- Corrigir `_entities/index.md` sobre `whatsapp-lua`, se confirmado pelo manifesto.
- Auditar entidades sem `entity_type` explícito.
- Revisar decisões antigas com path legado, preservando imutabilidade material.
- Classificar `docs/superpowers/**` como histórico/retrieval controlado.

## Regra operacional consolidada

Referências históricas a `_agents/reno` podem permanecer quando forem proveniência, manifesto, inventário ou evidência de migração. Qualquer instrução operacional ativa deve apontar para `_journal/reno/`, `_entities/`, `_runbooks/`, `_decisions/`, `_hubs/`, `_shared/context/`, `_meta/` ou `_projects/`, conforme o tipo de conhecimento.
