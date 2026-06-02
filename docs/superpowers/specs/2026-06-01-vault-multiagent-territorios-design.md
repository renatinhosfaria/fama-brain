---
title: Design: vault multiagent por territorios
type: context
status: approved-for-spec-review
created: 2026-06-01
updated: 2026-06-01
owner: renato
source: brainstorming
tags: [vault, multiagent, governance, marketing]
---

# Design: vault multiagent por territorios

## Objetivo

Evoluir o `fama-brain` de uma arquitetura Reno-first para uma arquitetura multiagent por contrato, sem recriar o namespace legado `_agents/` e sem mover notas em massa apenas por estetica.

O primeiro agente novo sera o agente de Marketing. A solucao deve deixar o vault pronto para qualquer agente futuro usando o mesmo padrao de identidade, ownership, rotas de escrita e validacao.

## Decisoes de design

1. Manter a organizacao por tipo de conhecimento.
2. Representar agentes por territorio, ownership e documentos de entrada.
3. Isolar o Reno formalmente no territorio que ele ja usa.
4. Criar o territorio inicial do Marketing com autonomia ampla e guardrails.
5. Preservar `_entities/` e `_shared/context/` como memoria compartilhada controlada.
6. Nao recriar `_agents/`.
7. Nao migrar historico em massa nesta primeira fase.

## Arquitetura de territorios

Cada agente tera um `agent_id` estavel em kebab-case ou lowercase simples. O `agent_id` define caminhos, ownership e convencoes de nome.

Padrao geral:

- Evento datado do agente: `_journal/{agent_id}/`
- Projeto, campanha ou iniciativa: `_projects/{agent_id}/`
- Procedimento do agente: `_runbooks/{agent_id}-*.md`
- Hub do agente: `_hubs/{agent_id}-hub.md`
- Decisao aprovada ligada ao agente: `_decisions/YYYY-MM-DD-{agent_id}-{slug}.md`
- Contexto duravel tematico: `_shared/context/{tema}/`
- Entidade compartilhada: `_entities/`

Territorio inicial do Reno:

- `_journal/reno/**`
- `_hubs/reno-hub.md`
- `_runbooks/reno-*.md`
- `_decisions/*-reno-*.md`

Territorio inicial do Marketing:

- `_journal/marketing/**`
- `_hubs/marketing-hub.md`
- `_runbooks/marketing-*.md`
- `_projects/marketing/**`
- `_decisions/*-marketing-*.md`
- `_shared/context/marketing/**`

## Ownership e permissoes

`_shared/context/AGENTS.md` deve virar o registro formal de agentes e ownership. Ele deve cadastrar pelo menos:

- `reno`
- `marketing`

Cada agente deve ter:

- `agent_id`
- nome
- missao
- territorio primario
- territorio controlado
- acoes que exigem confirmacao do Renato
- regras de handoff

Niveis de escrita:

- Verde: o agente pode escrever sozinho no territorio primario.
- Amarelo: o agente pode escrever com fonte rastreavel e read-back em territorio compartilhado controlado.
- Vermelho: o agente precisa de aprovacao explicita do Renato.

Para o Marketing:

- Verde: `_journal/marketing/**`, `_projects/marketing/**`, `_runbooks/marketing-*.md`, `_hubs/marketing-hub.md`, `_shared/context/marketing/**`.
- Amarelo: `_entities/**` e decisoes de marketing quando houver decisao explicita do Renato.
- Vermelho: schema, ownership, contexto institucional geral da Fama, promessas comerciais, fatos financeiros sensiveis, conflitos entre fontes, orcamento e mudancas estruturais.

## Fluxo operacional padrao

Todo agente deve seguir este fluxo antes de responder ou escrever:

1. Ler `README.md` quando a topologia estiver incerta.
2. Ler `_shared/context/AGENTS.md` para confirmar identidade, ownership e limites.
3. Ler o proprio hub, por exemplo `_hubs/marketing-hub.md`.
4. Ler `_meta/retrieval-policy.md` e `_meta/schema.md` quando houver duvida de destino ou tipo.
5. Buscar nota existente antes de criar nota nova.
6. Decidir o destino pela combinacao de tipo de memoria e agente responsavel.
7. Escrever apenas no territorio permitido.
8. Fazer read-back apos escrita.
9. Atualizar hub ou indice apenas quando o novo material for duravel ou operacionalmente relevante.

## Handoff entre agentes

Um agente pode consultar e linkar notas de outro agente, mas nao deve escrever no territorio primario de outro agente.

Exemplo: Marketing pode ler aprendizados operacionais do Reno e criar uma nota em `_journal/marketing/` sobre oportunidade de campanha. Marketing nao deve editar `_journal/reno/`.

Quando uma acao exigir mudanca em territorio de outro agente, o agente deve registrar uma pendencia no proprio territorio ou pedir confirmacao do Renato.

## Fase 1: formalizar multiagent sem mover massa

Alteracoes propostas:

1. Atualizar `README.md` para trocar Reno-first por multiagent por territorios.
2. Atualizar `_shared/context/AGENTS.md` com cadastro de `reno` e `marketing`.
3. Atualizar `_meta/schema.md` com o padrao `{agent_id}`.
4. Atualizar `_meta/retrieval-policy.md` para considerar agente responsavel.
5. Atualizar `_meta/golden-queries.md` com validacoes multiagent.
6. Criar `_hubs/marketing-hub.md`.
7. Criar `_journal/marketing/README.md`.
8. Criar `_projects/marketing/README.md`.
9. Criar `_shared/context/marketing/README.md`.
10. Criar `_runbooks/marketing-vault-operacao.md`.

Esta fase nao deve mover as notas existentes do Reno nem alterar historico apenas por organizacao visual.

## Fase 2: isolar Reno por contrato

O Reno ja esta majoritariamente separado por caminho e convencao. A fase 2 deve formalizar isso:

- Declarar `_journal/reno/**` como territorio primario do Reno.
- Declarar `_runbooks/reno-*.md` como territorio primario do Reno.
- Declarar `_hubs/reno-hub.md` como hub do Reno.
- Preservar `_entities/**` como memoria compartilhada com Renato como dono primario.
- Manter referencias historicas a `_agents/` como proveniencia, nao como destino ativo.

Nao ha migracao massiva prevista nesta fase.

## Validacao

A implementacao deve ser validada por:

- checagem de links internos principais;
- leitura dos documentos atualizados;
- golden queries novas para multiagent;
- confirmacao de que `_agents/` nao foi recriado;
- confirmacao de que Reno e Marketing tem territorios claros;
- confirmacao de que `_entities/` e contexto compartilhado continuam protegidos.

## Fora de escopo

- Criar automacoes de campanha.
- Integrar Meta Ads ou outras plataformas externas.
- Migrar todas as notas antigas.
- Reescrever historico do Reno.
- Alterar o MCP sem uma decisao tecnica separada.

## Resultado esperado

Depois da implementacao, o vault deve estar pronto para o agente de Marketing escrever em territorio proprio e para novos agentes nascerem com o mesmo contrato: identidade explicita, hub proprio, journal proprio, projetos proprios, runbooks proprios, ownership claro e acesso controlado a memoria compartilhada.
