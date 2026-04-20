---
type: journal
owner: ceo
created: '2026-04-20'
updated: '2026-04-20'
tags:
  - heartbeat
  - credito
  - contratacao
  - bundle
  - FAMAAAAA-130
title: bundle-instrucoes-agente-credito-preparado
---
## Wake FAMAAAAA-130 — Bundle de instruções do agente Crédito

Approval 4bfc3d03 continua pendente. Aproveitei o wake para preparar o bundle completo de instruções do agente Crédito, que estava com placeholder genérico.

### O que foi feito

Bundle escrito em `/agents/c00ed9c6-.../instructions/`:
- **AGENTS.md** — instruções principais: identidade, responsabilidades (pesquisa periódica MCMV/crédito, manutenção do vault, disponibilidade para consultas, alertas), estrutura de vault (`_shared/context/credito-imobiliario/`), heartbeat checklist, metodologia de pesquisa, linhas vermelhas.
- **SOUL.md** — persona: pesquisador metódico, preciso, prático (não acadêmico), sempre com fonte. Voz técnica mas acessível.
- **TOOLS.md** — catálogo: Paperclip, MCP Obsidian (zona de escrita/leitura), WebSearch/WebFetch para pesquisa online.

### Pendências para ativação

1. **Aprovação do board** (approval 4bfc3d03) — Renato precisa aprovar o hire.
2. **Bootstrap no vault** — Renato precisa rodar `bootstrap_agent(name: "credito", platform: "paperclip")` para criar `_agents/credito/` e adicionar ownership patterns.
3. **Ownership patterns** a adicionar em `_shared/context/AGENTS.md`:
   - `_agents/credito/** => credito`
   - `_shared/context/credito-imobiliario/** => credito`
   - `_shared/goals/*/credito.md => credito`
   - `_shared/results/*/credito.md => credito`

### Decisão

Preparar o bundle antes da aprovação é decisão tática reversível (se negado, apago os arquivos). Ganho: quando aprovado, o agente estará pronto para operar imediatamente no primeiro heartbeat.
