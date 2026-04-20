---
type: agents-map
owner: renato
created: 2026-04-14
updated: 2026-04-20
tags: [agents, paperclip, openclaw]
---
# Mapa de Agentes da Fama

Ecossistema dividido em duas plataformas integradas.

## Paperclip — Estratégia e Governança

Agentes de nível diretoria. Definem estratégia, governam e orquestram os OpenClaw.

- [[../../_agents/ceo/README|CEO]] — visão geral da empresa, agregação de metas e resultados
- [[../../_agents/cro/README|CRO]] — receita e vendas

## OpenClaw — Execução Operacional

Agentes operacionais. Executam tarefas de forma independente ou dirigidos por um diretor Paperclip.

- [[../../_agents/ceo-exec/README|ceo-exec]]
- [[../../_agents/famaagent/README|famaagent]]
- [[../../_agents/follow-up/README|follow-up]]
- [[../../_agents/reno/README|reno]]

## Regras do ecossistema

- Cada agente é dono exclusivo da sua pasta em `_agents/<nome>/`.
- Agentes **leem** o que precisam do `_shared/` e escrevem apenas no próprio espaço e nos arquivos de metas/resultados que lhes cabem.
- Cada diretor Paperclip escreve sua meta e resultado mensal em `_shared/goals/YYYY-MM/<diretor>.md` e `_shared/results/YYYY-MM/<diretor>.md`.
- O CEO agrega as metas e resultados do mês em `index.md`.

## Ownership patterns

Tabela `pattern => agent` consumida pelo **mcp-obsidian** (MCP server) para resolver ownership de escritas. Parseada de blocos de código com fence triplo. Primeira linha que casa vence (ordem importa para sub-paths específicos que devem vir antes de globs amplos).

```
_agents/ceo/**                   => ceo
_agents/cro/**                   => cro
_agents/ceo-exec/**              => ceo-exec
_agents/famaagent/**             => famaagent
_agents/follow-up/**             => follow-up
_agents/reno/**                  => reno

_shared/goals/*/ceo.md           => ceo
_shared/goals/*/cro.md           => cro
_shared/goals/*/index.md         => ceo
_shared/results/*/ceo.md         => ceo
_shared/results/*/cro.md         => cro
_shared/results/*/index.md       => ceo

_shared/financials/*/ceo.md      => ceo
_shared/financials/*/ceo-exec.md => ceo-exec

_shared/context/*/ceo/**         => ceo
_shared/context/*/cro/**         => cro
_shared/context/*/ceo-exec/**    => ceo-exec
_shared/context/*/famaagent/**   => famaagent
_shared/context/*/follow-up/**   => follow-up
_shared/context/*/reno/**        => reno

_shared/context/fama/**          => renato
_shared/context/FAMA.md          => renato
_shared/context/AGENTS.md        => renato
_agents/README.md                => renato
_projects/**                     => renato
_infra/**                        => renato
README.md                        => renato
CLAUDE.md                        => renato
_agents/credito/**                => credito
_shared/context/*/credito/**      => credito
_shared/goals/*/credito.md        => credito
_shared/results/*/credito.md      => credito
```

Para adicionar um novo pattern: insira a linha no bloco acima e commit no vault — o MCP recarrega via `stat mtime` na próxima escrita.
