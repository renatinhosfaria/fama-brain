---
type: agent-decisions
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - decisao
---
## 2026-04-21 — FAMAAAAA-140: standby até FAMAAAAA-162 resolver permissões do shared-keys

Inspeção do bundle do ceo-exec no VPS falhou por EACCES em `/root/.openclaw/shared-keys/` (0700 root:root, workspace roda como uid 1000). CEO reproduziu, confirmou que o fix anterior (FAMAAAAA-141) ficou incompleto e escalou ao Renato via ceo-exec na FAMAAAAA-162 com a opção `chown root:node + 0750 dir + 0640 chave`. RH mantém FAMAAAAA-140 `blocked` com `blockedByIssueIds=[FAMAAAAA-162]`, aguarda wake `issue_blockers_resolved`. Não tentar workaround no VPS antes disso — o diagnóstico correto é infra, não bundle.

## 2026-04-21 — Routine quinzenal de pesquisa de crédito ativa (FAMAAAAA-158)

Subtask FAMAAAAA-158 fechada em `done`. Crédito criou a routine `2d5dfd78-9d92-4183-a734-cfd518c5a792` ("Pesquisa quinzenal — Crédito Imobiliário") com trigger schedule `e026944a...` (cron `7 9 1,15 * *` America/Sao_Paulo, próximo disparo 2026-05-01 09:07 BRT). Policies: `skip_if_active` + `skip_missed`. Duplicata `d9608ae2...` criada por retry foi arquivada por Crédito via PATCH (o DELETE do endpoint de routines não existe). Issue-mãe FAMAAAAA-152 (Docs Credito) já estava `done`. Fluxo confirmou a regra do Paperclip: só o próprio agent cria/gerencia suas routines — qualquer solicitação de routine para outro agent deve ser delegada via subtask assinalada a ele.

## 2026-04-21 — Fase 1 bundle Vault — 5 arquivos aplicados com ajuste L56

Reorganização estrutural do bundle do Vault (agent 7be1b6c7). AGENTS.md antes absorvia inline SOUL/HEARTBEAT/TOOLS/USER — agora vira entrypoint enxuto apontando para os 4 arquivos companheiros. Zero mudança de política: só reorganização do que já estava em AGENTS.md mais preenchimento do USER.md do zero (Renato + CEO). Ajuste obrigatório na L56 do AGENTS.md aplicado conforme exigido pelo CEO em comment-8e13fe55: "combinar com Renato antes do restart em produção" → "combine com o Renato via CEO/ceo-exec", alinhando com a regra de canal único que já aparecia nas linhas vermelhas. Backup AGENTS.md.bak-2026-04-21 preservado. Origem: FAMAAAAA-161 (subtask de FAMAAAAA-151). Aprovações: comment-8e13fe55 + comment-3369bb35 na issue-mãe.

## 2026-04-21 — Routine de pesquisa de crédito é quinzenal, criada pelo próprio agent Crédito

**Decisão:** A curadoria da base `_shared/context/credito-imobiliario/` roda via routine Paperclip quinzenal (cron `7 9 1,15 * *` America/Sao_Paulo), criada e assignada ao próprio agent Crédito, com `skip_if_active` + `skip_missed`.

**Why:** (1) Autorização Paperclip só permite que o agent crie routines assignadas a si mesmo — RH não consegue criar a routine sob Crédito. Qualquer ajuste futuro de cadência/policies precisa ser executado pelo próprio Crédito. (2) CEO aprovou cadência quinzenal + policies em [FAMAAAAA-152](/FAMAAAAA/issues/FAMAAAAA-152); sem mudança relevante o Crédito encerra no journal e só alerta o CEO quando o delta impacta a operação comercial.

**How to apply:** Se o CEO pedir mudança na pesquisa de crédito (cadência, escopo, alertas), abrir subtask para o Crédito executar o PATCH na routine/trigger — nunca tentar do RH. Routine ID: `2d5dfd78-9d92-4183-a734-cfd518c5a792` · Trigger ID: `e026944a-87df-459c-a482-819196378afb`.

## 2026-04-21 — FAMAAAAA-154: correção de schemas MCP Obsidian e catálogo no próprio bundle

CEO aprovou itens A/B/C da auditoria do meu bundle (comentário 89236e44 em 2026-04-21). A: corrigi `as_agent`→`agent` e os campos de `append_decision`/`create_journal_entry` em AGENTS.md, HEARTBEAT.md e TOOLS.md; `get_agent_delta` foi documentado como uma chamada por agent (singular). B: adicionei `POST /api/companies/{companyId}/approvals` ao catálogo em TOOLS.md. C: reescrevi a linha "cinco arquivos" em AGENTS.md para reconhecer bundles reduzidos aprovados pelo CEO. Sem mudança de política. D/E sem ação (SOUL/USER limpos; E fica observado até Vault destravar `_shared/context/AGENTS.md`). Auto-alteração só seguiu após aprovação explícita do CEO — regra do cargo preservada.

## 2026-04-21 — Bundle do CRO alinhado com Crédito, RH e Vault (FAMAAAAA-153)

Bundle do CRO não reconhecia os três agents Paperclip adicionados em abril/2026 (Crédito, RH, Vault). Apliquei 7 diffs aprovados pelo CEO em AGENTS.md (tabela segundo cérebro + lista "NÃO escreve em"), HEARTBEAT.md (get_agent_delta passou a incluir credito+rh; regras de escalação ganharam rotas diretas para credito/vault/rh) e TOOLS.md (intro, paperclip-create-plugin, get_agent_delta). SOUL.md e USER.md não foram tocados. Nenhuma mudança de política comercial ou de linha de comando — só vocabulário e roteamento. Risco baixo, reversível.

## 2026-04-21 — Bundle do Crédito completado + routine quinzenal formalizada (FAMAAAAA-152)

CEO aprovou em bloco itens A-E da FAMAAAAA-152. Aplicado: (A) HEARTBEAT.md criado com checklist dos três modos de wake (programado, sob demanda, aprovação) — extraído do AGENTS.md (linhas 105-126 originais). (B) USER.md criado com ficha do Renato (sócio, nunca acessado direto pelo Crédito) e do CEO (superior direto, canal oficial); padrão enxuto no estilo dos bundles ativos. (C) AGENTS.md atualizado: removida duplicação do checklist (agora vive em HEARTBEAT.md), adicionada nota apontando _shared/context/AGENTS.md como fonte canônica da estrutura de agents, e corrigida a referência cruzada do bloco "Referências do bundle" (incluindo USER.md). (D) SOUL.md atualizado: adicionados Follow-up (OpenClaw comercial) e RH (mantenedor de bundles) na seção "Relação com outros agentes"; confirmado que não há reintrodução de CFO/CTO/CMO/Sparring. (E) TOOLS.md não tocado, conforme aprovação. (F) Routine não pôde ser criada pelo RH por restrição de autorização do Paperclip (agents só gerenciam routines assignadas a si mesmos). Delegado ao Crédito via subtask FAMAAAAA-158 com parâmetros completos: cadência quinzenal (cron "7 9 1,15 * *" America/Sao_Paulo), concurrencyPolicy skip_if_active, catchUpPolicy skip_missed, alerta ao CEO apenas quando a mudança impactar a operação comercial. Projeto: Abril/2026 (único operacional ativo). Próximo passo: Crédito executa FAMAAAAA-158; ao concluir, FAMAAAAA-152 sobe ao CEO em in_review.

## 2026-04-21 — Aplicação dos 9 blocos no bundle do CEO (FAMAAAAA-150)

Auditoria do bundle do CEO identificou drift: reestruturação abril/2026 bem refletida, mas as contratações pós-reestruturação (Crédito 2026-04-20, Vault e RH 2026-04-21) não apareciam em nenhum dos 5 arquivos. Renato aprovou o pacote completo via FAMAAAAA-155 (escalação via ceo-exec). Aplicados 9 edits aditivos em AGENTS.md (3), HEARTBEAT.md (4), SOUL.md (1), TOOLS.md (2). USER.md sem alteração. Impacto: CEO passa a puxar deltas dos 4 reports (cro, credito, vault, rh), delegar corretamente para agents de função e agregar goals/results incluindo Crédito no index.md. Todos os diffs são reversíveis. Ver journal 2026-04-21 e issues FAMAAAAA-150, FAMAAAAA-155.

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
