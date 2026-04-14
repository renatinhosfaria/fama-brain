---
type: agents-map
owner: renato
created: 2026-04-14
updated: 2026-04-14
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
