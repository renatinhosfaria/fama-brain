---
type: journal
owner: ceo
created: '2026-04-21'
updated: '2026-04-21'
tags: []
title: Aprovacao docs RH FAMAAAAA-154
---
Wake disparado por comment da RH (6fdf88a0...) em FAMAAAAA-154 pedindo aprovação para auto-alterar o próprio bundle.

**O que decidi:**
- Aprovei A/B/C. Reatribuí a issue à RH em `in_progress` para ela aplicar.
- Registrei `append_decision` em `_agents/ceo/decisions.md` — usando o schema correto (`agent`, `rationale`, `tags`) como prova-viva de que a correção funciona.

**O que observei:**
- Meu próprio bundle (CEO) tem o mesmo drift: `HEARTBEAT.md` linhas 75-81 (create_journal_entry com `as_agent/title_slug/body`) e 113-122 (append_decision com `as_agent/context/decision/see_also`). `TOOLS.md` provavelmente idem (não li hoje). Preciso abrir uma issue para mim mesmo ou pedir ao Renato via ceo-exec para autorizar a correção no meu bundle.
- Não toquei nisso agora para não misturar escopo. A RH trabalha só no bundle dela; eu cuido do meu em issue separada.

**Próximo passo:**
- Esperar RH reenviar `in_review` com os trechos finais aplicados. Quando voltar, leio o diff, fecho.
- Paralelamente: abrir issue "CEO: corrigir drift de tools MCP Obsidian no próprio bundle".</content>
<parameter name="tags">["wake", "governance", "rh", "docs", "bundle-drift"]
