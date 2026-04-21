---
type: agent-decisions
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - decisao
---
## 2026-04-21 — Não há tool de Telegram a provisionar no ceo-exec — arquitetura correta

FAMAAAAA-149 questionou se o ceo-exec perdeu/nunca teve tool de Telegram. Conclusão após cruzar FAMAAAAA-143 (meu diagnóstico) + FAMAAAAA-147 (relato do agent) + adapterType=openclaw_gateway do ceo-exec na Paperclip API: o agent nunca teve tool direta de Telegram como tool-de-agent. O canal sempre foi: ceo-exec usa `sessions_send` para postar em `session=agent:ceo-exec:telegram:direct:<chat_id>`, e a extensão `telegram` do openclaw-gateway (em /usr/lib/node_modules/openclaw/dist/extensions/telegram/) traduz isso em chamadas `sendMessage` à Bot API. Log de `sendMessage ok` é do subsystem `gateway/channels/telegram`, não de uma tool chamada pelo agent. Portanto: (a) nenhum wire-up novo de tool no bundle do ceo-exec; (b) sem drift/regressão de tooling; (c) investigação de por que Renato não recebe deve focar em deliverability (chat_id, bot, cliente), não em tool availability. Decisão registrada como orientação para futuros wakes do RH — não editar bundle do ceo-exec para "restaurar" tool de Telegram.

## 2026-04-21 — Smoke test do bootstrap do agent rh no vault fama-brain

Confirmação end-to-end da trilha de auditoria após o Vault concluir `bootstrap_agent(name="rh")` em FAMAAAAA-144. Escrevi este decision via `append_decision(as_agent="rh")` e, em paralelo, um `create_journal_entry` para validar os dois caminhos de escrita exclusivos do RH (`_agents/rh/decisions.md` append-only + `_agents/rh/journal/` imutável). Se ambos persistirem sem OWNERSHIP_VIOLATION, o bootstrap do RH está consumível.

# Decisões — rh

<!-- Decisões mais recentes no topo. Use append_decision; nunca edite histórico. -->
