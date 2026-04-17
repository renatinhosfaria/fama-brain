---
type: agents-map
owner: renato
created: 2026-04-14
updated: 2026-04-16
tags: [agents, paperclip, openclaw]
---
# Mapa de Agentes da Fama

Ecossistema dividido em duas plataformas integradas.

## Paperclip — Estratégia e Governança

Agentes de nível diretoria. Definem estratégia, governam e orquestram os OpenClaw.

- [[../../_agents/ceo/README|CEO]] — visão geral da empresa, agregação de metas e resultados
- [[../../_agents/cfo/README|CFO]] — finanças
- [[../../_agents/cmo/README|CMO]] — marketing
- [[../../_agents/cro/README|CRO]] — receita e vendas
- [[../../_agents/cto/README|CTO]] — tecnologia

## OpenClaw — Execução Operacional

Agentes operacionais. Executam tarefas de forma independente ou dirigidos por um diretor Paperclip.

- [[../../_agents/ceo-exec/README|ceo-exec]]
- [[../../_agents/cfo-exec/README|cfo-exec]]
- [[../../_agents/famaagent/README|famaagent]]
- [[../../_agents/follow-up/README|follow-up]]
- [[../../_agents/reno/README|reno]]
- [[../../_agents/sparring/README|sparring]]

## Regras do ecossistema

- Cada agente é dono exclusivo da sua pasta em `_agents/<nome>/`.
- Agentes **leem** o que precisam do `_shared/` e escrevem apenas no próprio espaço e nos arquivos de metas/resultados que lhes cabem.
- Cada diretor Paperclip escreve sua meta e resultado mensal em `_shared/goals/YYYY-MM/<diretor>.md` e `_shared/results/YYYY-MM/<diretor>.md`.
- O CEO agrega as metas e resultados do mês em `index.md`.

## Ownership patterns

Tabela `pattern => agent` consumida pelo **mcp-obsidian** (MCP server) para resolver ownership de escritas. Parseada de blocos de código com fence triplo. Primeira linha que casa vence (ordem importa para sub-paths específicos que devem vir antes de globs amplos).

```
_agents/ceo/**                   => ceo
_agents/cfo/**                   => cfo
_agents/cmo/**                   => cmo
_agents/cro/**                   => cro
_agents/cto/**                   => cto
_agents/ceo-exec/**              => ceo-exec
_agents/cfo-exec/**              => cfo-exec
_agents/famaagent/**             => famaagent
_agents/follow-up/**             => follow-up
_agents/reno/**                  => reno
_agents/sparring/**              => sparring

_shared/goals/*/ceo.md           => ceo
_shared/goals/*/cfo.md           => cfo
_shared/goals/*/cmo.md           => cmo
_shared/goals/*/cro.md           => cro
_shared/goals/*/cto.md           => cto
_shared/goals/*/index.md         => ceo
_shared/results/*/ceo.md         => ceo
_shared/results/*/cfo.md         => cfo
_shared/results/*/cmo.md         => cmo
_shared/results/*/cro.md         => cro
_shared/results/*/cto.md         => cto
_shared/results/*/index.md       => ceo

_shared/financials/*/ceo.md      => ceo
_shared/financials/*/cfo.md      => cfo
_shared/financials/*/ceo-exec.md => ceo-exec
_shared/financials/*/cfo-exec.md => cfo-exec

_shared/context/*/ceo/**         => ceo
_shared/context/*/cfo/**         => cfo
_shared/context/*/cmo/**         => cmo
_shared/context/*/cro/**         => cro
_shared/context/*/cto/**         => cto
_shared/context/*/ceo-exec/**    => ceo-exec
_shared/context/*/cfo-exec/**    => cfo-exec
_shared/context/*/famaagent/**   => famaagent
_shared/context/*/follow-up/**   => follow-up
_shared/context/*/reno/**        => reno
_shared/context/*/sparring/**    => sparring

README.md                        => renato
MEMORY.md                        => renato
```

Para adicionar um novo pattern: insira a linha no bloco acima e commit no vault — o MCP recarrega via `stat mtime` na próxima escrita.
