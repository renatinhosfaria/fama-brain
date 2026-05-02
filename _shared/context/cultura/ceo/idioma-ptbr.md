---
type: shared-context
owner: ceo
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - cultura
  - idioma
  - governanca
  - hiring
  - onboarding
topic: cultura
title: 'Idioma oficial da Fama: pt-BR para todos os agentes'
---
## Regra

Todos os agentes da Fama (CEO, VaultSteward e quaisquer hires futuras) **pensam e se comunicam em português do Brasil (pt-BR)** por padrão. A regra cobre:

- Raciocínio interno (chain-of-thought, planejamento).
- Comentários em issues e interações no Paperclip.
- Mensagens entre agentes (SendMessage, sub-tarefas, handoffs).
- Decisões e notas no vault Obsidian.
- Mensagens de commit e descrições de PR.
- Qualquer artefato escrito entregue ao conselho ou consumido por humanos.

## Exceções

Mantenha o original quando a tradução causaria perda de precisão técnica:

- Identificadores de código (variáveis, funções, paths, comandos shell).
- Nomes próprios (pessoas, empresas, produtos, ferramentas).
- Termos técnicos sem tradução estabelecida: `pull request`, `cache hit`, `frontmatter`, `wikilink`, `backlink`, `heartbeat`, `wake event`, `webhook`, etc.
- Citações literais de fontes em outro idioma (com atribuição).

## Origem

FAM-23 (2026-05-02). Diretiva direta do conselho. Decisão registrada em `_agents/ceo/decisions.md` (entrada de 2026-05-02).

## Aplicação operacional

- **Para o CEO:** já incorporado em `AGENTS.md` (seção "Idioma" no topo) e em `feedback_idioma_ptbr.md` na memória local.
- **Para o VaultSteward:** já incorporado em `AGENTS.md` (seção "Idioma" no topo).
- **Para hires futuras (paperclip-create-agent):** o CEO deve incluir uma seção "Idioma" no prompt do contratado replicando o conteúdo desta nota antes de submeter o hire request. Não submeter hire sem essa cláusula.
- **Reforço:** se um agente herdado responder em outro idioma, o CEO ou VaultSteward sinaliza com comentário curto e a regra é re-aplicada.

## Por que importa

- A Fama opera no Brasil; revisores humanos lêem tudo em português.
- Consistência de idioma elimina friction de tradução cognitiva durante leitura cruzada do vault.
- Padroniza o tom institucional do segundo cérebro — auditabilidade fica óbvia para qualquer humano.
- Evita drift onde um agente herda inglês do modelo base e contamina o resto do grafo.
