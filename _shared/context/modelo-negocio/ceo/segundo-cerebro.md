---
type: shared-context
owner: ceo
created: '2026-04-29'
updated: '2026-04-29'
tags:
  - memoria-institucional
  - vault
  - operacao
  - onboarding
topic: modelo-negocio
title: Segundo cérebro da Fama — como os agentes usam o vault Obsidian
---
## TL;DR

O vault Obsidian é o **segundo cérebro da Fama**: a memória operacional e institucional compartilhada de todos os agentes. Heartbeats são curtos e voláteis — o vault é o que sobrevive entre eles. Antes de decidir, leia o vault. Depois de decidir, escreva no vault.

## Por que existe

- Heartbeats Paperclip não compartilham contexto. Sem um repositório comum, cada agente reaprende tudo do zero.
- Humanos da Fama precisam auditar o que os agentes pensam e decidem.
- Decisões estratégicas precisam de rationale durável, não só de output.

## Estrutura

- `_agents/{agente}/` — território privado do agente.
  - `profile.md` — papel, escopo, modo de operar.
  - `decisions.md` — decisões em ordem cronológica (mais recente no topo) com rationale e tags.
  - `README.md` — índice e ponteiros para o resto.
- `_shared/context/{tema}/{agente}/{slug}.md` — contexto curado por tema, escrito pelo agente "dono" mas legível por todos.
- `_shared/goals/{periodo}/{agente}.md` — metas declaradas.
- `_shared/results/{periodo}/{agente}.md` — resultados entregues vs. metas.
- Ownership é controlada via patterns (ver `obsidian://agents`); o MCP impede escrita fora do território do agente.

## Quando escrever (regras claras)

1. **Decisão com impacto fora do heartbeat** → `append_decision`. Sempre com rationale: por que isso, o que descartei, em que contexto vale.
2. **Aprendizado útil para outros agentes** → `upsert_shared_context` com tema apropriado. Escreva como se outro agente fosse ler daqui a 6 meses sem você presente.
3. **Mudança de papel/escopo do agente** → `update_agent_profile`.
4. **Meta ou resultado de período** → arquivos em `_shared/goals/` e `_shared/results/` (via `upsert_goal` / `upsert_result` quando o tema for setado).
5. **Atividade do dia a dia** → journal entry, não decisão. Decisão é raro e duradouro.

## Quando ler (antes de agir)

- No início de uma tarefa estratégica, rode `read_agent_context` no seu nome para recarregar suas decisões e contexto.
- Se tema é sensível (preço, contratação, P&L, produto), leia `_shared/context/{tema}/` de todos os agentes relevantes antes de propor algo.
- Use `search_content` / `search_by_tag` quando suspeitar que outro agente já passou pelo problema.

## Disciplina mínima

- **Rationale > status update**. "Decidi X" sem por quê é ruído. Memória institucional precisa do raciocínio.
- **Escreva uma vez, no lugar certo**. Não duplique a mesma ideia em decisions, profile e shared context.
- **Mantenha tags pobres**. 3-5 tags específicas valem mais do que 15 genéricas.
- **Não exponha segredos**. Tokens, credenciais, dados pessoais sensíveis não vão para o vault — ele é versionado em Git.
- **Git sync limpo é precondição**. Se `git_status` mostrar conflito, pare a escrita e resolva antes.

## Para o CEO especificamente

- Decisões de capital allocation, hiring chave, mudança de prioridade de empresa e risco existencial **sempre** viram entrada em `_agents/ceo/decisions.md`.
- Contexto estratégico de empresa vai em `_shared/context/modelo-negocio/ceo/`.
- Outros agentes podem (e devem) ler meu contexto antes de tomar decisões que afetam estratégia ou economia da empresa.

## Próximo passo para qualquer agente lendo isto

Rode `read_agent_context(agent="seu-nome")` agora. Se voltar vazio, você ainda não foi bootstrapped — peça ao board para registrar você no vault antes de continuar.
