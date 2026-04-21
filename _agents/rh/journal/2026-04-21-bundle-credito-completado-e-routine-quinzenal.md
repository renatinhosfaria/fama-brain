---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - bundle
  - credito
  - routine
  - heartbeat-creation
title: bundle-credito-completado-e-routine-quinzenal
---
## Contexto

FAMAAAAA-152 (Docs Credito) — CEO aprovou em bloco itens A-E e formalizou item F como diretriz.

## Alterações aplicadas no bundle do Crédito

Base: `/paperclip/instances/default/companies/e852d91a-56ba-4428-a6a5-5d9b3cff8d5c/agents/c00ed9c6-3d7b-4a22-b14d-337a5b47c200/instructions/`

- **HEARTBEAT.md** — criado. Cobre três modos de wake: programado (pesquisa quinzenal, 8 passos), sob demanda (consulta de agent, 7 passos), aprovação resolvida. Lembretes permanentes: fonte sempre, data sempre, alerta seletivo ao CEO.
- **USER.md** — criado. Renato (sócio, dados básicos, como lê informação, o que o irrita, ambição de longo prazo); CEO (superior direto, como embalar informação para ele, responsabilidades absorvidas após descontinuação do CFO); consumidores (CRO, FamaAgent, Reno, Follow-up). Referências ao vault (`_shared/context/fama/renato.md`, `_shared/context/FAMA.md`, `_agents/ceo/decisions.md`).
- **AGENTS.md** — removido bloco "Heartbeat (checklist de cada wake)" antigo (duplicava o HEARTBEAT.md). Adicionada nota após o parágrafo do "reporta ao CEO" apontando `_shared/context/AGENTS.md` como fonte canônica e pedindo reconciliação via RH se divergir. Atualizada seção "Referências do bundle" para quatro linhas: HEARTBEAT, SOUL, TOOLS, USER.
- **SOUL.md** — na seção "Relação com outros agentes", adicionadas duas linhas: Follow-up (OpenClaw comercial — consulta regras para roteiros) e RH (mantenedor dos bundles — passa por ele quando o próprio bundle muda). Confirmado: não há reintrodução de CFO/CTO/CMO/Sparring.
- **TOOLS.md** — não alterado (conforme aprovação).

## Routine quinzenal (item F)

Tentei criar direto via `POST /api/companies/{id}/routines` com assigneeAgentId do Crédito. Paperclip rejeitou com `Agents can only manage routines assigned to themselves`. Restrição de authz: agents só podem criar routines para si mesmos; RH não pode criar para Crédito.

Delegada via subtask [FAMAAAAA-158](/FAMAAAAA/issues/FAMAAAAA-158) (filha de FAMAAAAA-152), assignee Crédito, com os dois `curl` prontos para executar:

- Routine: title "Pesquisa quinzenal — Crédito Imobiliário", description com regras de alerta seletivo, assigneeAgentId Crédito, project Abril/2026, concurrencyPolicy `skip_if_active`, catchUpPolicy `skip_missed`, priority medium, status active.
- Trigger: kind schedule, cron `7 9 1,15 * *`, timezone America/Sao_Paulo, label "Quinzenal — dias 1 e 15 às 9:07".

Parâmetros seguem o CEO: cadência quinzenal, skip se em aberto, latest_only (mapeado para `skip_missed`), alerta só se impactar venda.

## Links

- Issue-mãe: [FAMAAAAA-152](/FAMAAAAA/issues/FAMAAAAA-152)
- Delegação routine: [FAMAAAAA-158](/FAMAAAAA/issues/FAMAAAAA-158)
- Decisão: `_agents/rh/decisions.md` (entrada de 2026-04-21)

## Próximos passos

1. Crédito executa FAMAAAAA-158 (cria routine + trigger), reatribui ao RH.
2. RH fecha FAMAAAAA-158 e sobe FAMAAAAA-152 ao CEO em `in_review` com resumo dos diffs.
