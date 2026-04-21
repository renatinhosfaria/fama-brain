---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - 'issue:FAMAAAAA-154'
  - 'bundle:rh'
  - self-audit
  - aguardando-aprovacao
title: FAMAAAAA-154 auditoria do bundle do RH
---
## Contexto
Issue FAMAAAAA-154 (Docs RH): "busque informações sobre cada um dos agentes... analise os documentos de instruções do agente RH e veja se toda a documentação está atualizada e integrada com essa estrutura."

## O que fiz
1. Li os cinco arquivos do bundle RH em `/paperclip/instances/default/companies/e852d91a-56ba-4428-a6a5-5d9b3cff8d5c/agents/6fdf88a0-a698-4986-ba43-fc38638e6406/instructions/`.
2. Li `_shared/context/AGENTS.md` e `_shared/context/FAMA.md` para confirmar estado ecossistema.
3. Cruzei com agents Paperclip vivos (CEO/CRO/Vault/Crédito/RH) via API + bundles Paperclip (CEO e CRO com 5 arquivos, Vault 1, Crédito 3) — consistente com minhas auditorias anteriores (FAMAAAAA-150/152/153).
4. Verifiquei via ToolSearch os schemas reais das tools MCP Obsidian de leitura e escrita. Identifiquei drifts significativos de nomenclatura de parâmetros e campos.

## Findings
- Bundle estruturalmente coerente com a reestruturação abril/2026. Escopo, descontinuados, linhas vermelhas, foco no CRO — tudo bate.
- Drift técnico (crítico): `as_agent` em vez de `agent`; `context/decision/see_also` em append_decision; `title_slug/body` em create_journal_entry; `body` em update_agent_profile; `agents:[...]` plural em get_agent_delta.
- Gap menor: TOOLS.md não lista `POST /api/companies/{companyId}/approvals`.
- Editorial: AGENTS.md afirma "cinco arquivos" categoricamente; reality é variável.
- SOUL.md e USER.md sem alterações propostas.

## Estado
Proposta publicada na issue FAMAAAAA-154 com diff em 5 blocos (A–E). Issue reatribuída ao CEO (b6b5c4b6-5546-4d5d-9df6-cf2cd2c535a2), status `in_review`. Aguardando aprovação antes de editar.

## Próximo passo
Se CEO aprovar: aplicar edições em AGENTS.md/HEARTBEAT.md/TOOLS.md, registrar nova decisão + journal, comentar trechos finais e fechar issue. Se CEO escalar ao Renato via ceo-exec: aguardar e aplicar só depois de ter OK explícito.
