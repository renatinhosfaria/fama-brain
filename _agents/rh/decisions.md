---
type: agent-decisions
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - decisao
---
## 2026-04-21 — FAMAAAAA-154 — proposta de correção do próprio bundle do RH

Auditei meu bundle (AGENTS/SOUL/HEARTBEAT/TOOLS/USER) contra estado atual da Fama e schemas reais das tools MCP Obsidian. Bundle estruturalmente coerente com a reestruturação abril/2026, mas há drifts técnicos nas chamadas MCP: `as_agent` → `agent` em read_agent_context/writes; campos fantasma `context/decision/see_also` em append_decision; `title_slug/body` → `title/content` em create_journal_entry/update_agent_profile; `agents:[...]` plural em get_agent_delta quando a tool aceita um agent só. Proposta publicada na issue em 4 blocos (A crítico MCP, B endpoints approvals em TOOLS.md, C editorial "cinco arquivos" em AGENTS.md, D nada em SOUL/USER, E só observação sobre _shared/context/AGENTS.md). Reatribuí a issue ao CEO para aprovação — auto-alteração do meu bundle exige aprovação. Nenhum arquivo alterado ainda.

## 2026-04-21 — Proposta de atualização do bundle do CRO p/ absorver Crédito, RH e Vault

Na FAMAAAAA-153 o CEO pediu revisão do bundle do CRO contra a estrutura atual da Fama. Bundle absorve corretamente a descontinuação de CFO/CTO/CMO/cfo-exec/Sparring mas não cita os três agents Paperclip criados em abril/2026: Crédito (2026-04-20), RH (2026-04-21) e Vault (2026-04-21). Publiquei proposta de diff em 7 pontos (AGENTS §O que tem/§Não escreve em; HEARTBEAT §2.1/§7; TOOLS §1 intro/§1.2/§2.1) — nenhuma mudança de política, escopo ou linha de comando, só alinhamento de vocabulário e roteamento de escalação. SOUL.md e USER.md não precisam alteração. Aguardando OK do CEO antes de aplicar. Ver journal 2026-04-21-famaaaaa-153-diagnostico-bundle-cro.md.

## 2026-04-21 — Bundle do Crédito: propor criação de HEARTBEAT.md/USER.md e correções pontuais

FAMAAAAA-152 pediu análise do bundle do Crédito. Diagnóstico: bundle funcional mas fora do padrão de 5 arquivos (falta HEARTBEAT.md e USER.md); AGENTS.md tem referência quebrada; SOUL.md omite Follow-up/RH em "relação com outros agentes"; nenhuma routine Paperclip para a periodicidade prometida. Proposta publicada na issue em itens A–F, aguardando aprovação do CEO antes de qualquer edição. Nenhum arquivo do bundle alterado nesta etapa, respeitando a regra de "propõe, espera, aplica".

## 2026-04-21 — Não há tool de Telegram a provisionar no ceo-exec — arquitetura correta

FAMAAAAA-149 questionou se o ceo-exec perdeu/nunca teve tool de Telegram. Conclusão após cruzar FAMAAAAA-143 (meu diagnóstico) + FAMAAAAA-147 (relato do agent) + adapterType=openclaw_gateway do ceo-exec na Paperclip API: o agent nunca teve tool direta de Telegram como tool-de-agent. O canal sempre foi: ceo-exec usa `sessions_send` para postar em `session=agent:ceo-exec:telegram:direct:<chat_id>`, e a extensão `telegram` do openclaw-gateway (em /usr/lib/node_modules/openclaw/dist/extensions/telegram/) traduz isso em chamadas `sendMessage` à Bot API. Log de `sendMessage ok` é do subsystem `gateway/channels/telegram`, não de uma tool chamada pelo agent. Portanto: (a) nenhum wire-up novo de tool no bundle do ceo-exec; (b) sem drift/regressão de tooling; (c) investigação de por que Renato não recebe deve focar em deliverability (chat_id, bot, cliente), não em tool availability. Decisão registrada como orientação para futuros wakes do RH — não editar bundle do ceo-exec para "restaurar" tool de Telegram.

## 2026-04-21 — Smoke test do bootstrap do agent rh no vault fama-brain

Confirmação end-to-end da trilha de auditoria após o Vault concluir `bootstrap_agent(name="rh")` em FAMAAAAA-144. Escrevi este decision via `append_decision(as_agent="rh")` e, em paralelo, um `create_journal_entry` para validar os dois caminhos de escrita exclusivos do RH (`_agents/rh/decisions.md` append-only + `_agents/rh/journal/` imutável). Se ambos persistirem sem OWNERSHIP_VIOLATION, o bootstrap do RH está consumível.

# Decisões — rh

<!-- Decisões mais recentes no topo. Use append_decision; nunca edite histórico. -->
