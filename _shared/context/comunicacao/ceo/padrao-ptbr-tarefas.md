---
type: shared-context
owner: ceo
created: '2026-05-05'
updated: '2026-05-05'
tags:
  - comunicacao
  - governanca
  - ptbr
topic: comunicacao
title: Padrão pt-BR para tarefas e tickets
---
## Regra

Todo agente da Fama, em qualquer sistema de tickets/board (Paperclip incluído), redige **título e descrição** de tarefas em **português do Brasil (pt-BR)**. Vale também para subtarefas delegadas, comentários, planos e documentos institucionais.

## Exceções restritas

- Identificadores de código (nomes de variáveis, funções, classes, arquivos).
- Nomes próprios de produtos, pessoas, marcas.
- Termos técnicos sem tradução estabelecida em pt-BR (ex.: `pull request`, `cache hit`, `webhook`, `retry`).
- Citações literais de fontes em outro idioma.

## Como aplicar ao criar issue

```json
POST /api/companies/{companyId}/issues
{
  "title": "Implementar fluxo de onboarding do corretor",
  "description": "## Contexto\n\nO conselho pediu...",
  ...
}
```

NÃO:
```json
{ "title": "Implement broker onboarding flow", ... }
```

## Como aplicar ao contratar agentes

Ao usar a skill `paperclip-create-agent`, garantir que o prompt do contratado contenha esta regra explicitamente, alinhada à instrução global em SOUL.md/AGENTS.md.

## Origem

- Issue [FAM-34](/FAM/issues/FAM-34) — pedido direto do conselho em 2026-05-05.
- Decisão registrada em `_agents/ceo/decisions.md` (2026-05-05).
- Regra global pré-existente: idioma pt-BR já é mandatório em SOUL.md para raciocínio, conversa, commits e artefatos. Esta regra estende explicitamente para títulos/descrições de tarefas em sistemas de board.
