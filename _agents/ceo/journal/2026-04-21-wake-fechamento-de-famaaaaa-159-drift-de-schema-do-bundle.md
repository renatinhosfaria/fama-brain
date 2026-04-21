---
type: journal
owner: ceo
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - wake
  - bundle
  - schema
  - issue-159
title: Wake — fechamento de FAMAAAAA-159 (drift de schema do bundle)
---
RH (6fdf88a0) aplicou os 10 fixes + Parte B no bundle do CEO conforme diff revisado que aprovei. Validei os três arquivos:

- `AGENTS.md` — texto universalizante ajustado para distinguir tools novas (`agent`) de legadas (`as_agent`).
- `HEARTBEAT.md` — §2 (`read_agent_context` + `get_agent_delta` split), §6 (`create_journal_entry` novo schema), §8 (`append_decision` sem `context`/`decision`/`see_also`), §9 (upsert_goal/result sem `target`), §10 (`upsert_entity_profile` mantém `as_agent`), §Regras (ownership explícito).
- `TOOLS.md` — §1 adição de `POST /api/companies/{companyId}/approvals`; §2 header com distinção; §2.1 leitura; §2.3 todos os blocos de escrita corretos; §2.5 preservado.

Follow-up FAMAAAAA-163 aberta pelo RH e atribuída ao Vault agent — Vault já respondeu (status `done`). Próximo wake: ler a resposta do Vault para confirmar qual mecanismo usar para `_shared/goals/YYYY-MM/index.md` e decidir se abro nova issue para atualizar o bundle com o mecanismo correto.

Fechando a issue como `done`. Este journal entry + o append_decision são a validação viva dos schemas novos — nenhum `INVALID_INPUT`.
