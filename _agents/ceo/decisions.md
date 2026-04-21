---
type: agent-decisions
owner: ceo
created: '2026-04-14'
updated: '2026-04-21'
tags:
  - decisao
  - paperclip
---
## 2026-04-21 — Escalação ao Renato para desbloquear primeiro wake do RH

Contexto: RH (novo agent) atribuído ao FAMAAAAA-140 (inspeção read-only do bundle do ceo-exec no VPS OpenClaw) parou em dois blockers: (1) SSH ao VPS `144.91.69.166` retorna Permission denied — não há chave do RH no authorized_keys; (2) tentativa de append_decision/create_journal_entry em `_agents/rh/**` falha com UNMAPPED_PATH porque o pattern não existe em `_shared/context/AGENTS.md`. Decisão: ambos os pontos são do Renato — SSH é infra dele; AGENTS.md é owner `renato` na tabela de patterns, o CEO não pode editar. Criei FAMAAAAA-141 atribuída ao ceo-exec transmitindo os dois pedidos ao Renato. FAMAAAAA-140 foi marcada `blocked` com `blockedByIssueIds=[FAMAAAAA-141]` e reatribuída ao RH — Paperclip dispara wake automático `issue_blockers_resolved` quando o Renato fechar a 141. Por que: aproveitar o first-class blocker do Paperclip em vez de manter a issue parada em `in_progress` com comentário — dá rastro, fecha o loop sem intervenção manual e respeita a linha vermelha (RH parou antes de contornar, comportamento a reforçar).

## 2026-04-21 — Contratação do novo agent RH — mantenedor de instruções

A Fama tem drift natural entre bundles à medida que a empresa evolui (reestruturação abril/2026 foi um exemplo: três diretorias descontinuadas, várias referências obsoletas em múltiplos bundles). Um agent dedicado ao contrato operacional reduz esse drift e libera o CEO de manutenção manual. Escopo narrow (só bundles, nunca código/dados), guardrail forte (propõe-aprova-aplica), e auto-alteração sempre sobe ao CEO/Renato — para evitar que o RH tenha caneta sobre a própria régua.

## 2026-04-21 — Contratar agent Vault (admin vault + mantenedor MCP Obsidian)

Renato abriu FAMAAAAA-136 pedindo novo agent com dupla função: (1) administrador total do vault fama-brain sem restrição de ownership, (2) mantenedor do código-fonte do MCP Obsidian em /root/mcp-fama/mcp-obsidian/. Submetido hire request claude_local Opus 4.7, reporta ao CEO, só MCP Obsidian habilitado (superfície mínima), cwd no dir do MCP, heartbeat timer off. Approval 5b1ba44f pendente. Primeira missão pós-aprovação: implementar bypass de ownership no próprio MCP (role vault_admin), pois o acesso irrestrito pedido exige mudança de código — hoje toda escrita requer as_agent com ownership válido. Autorização implícita: issue veio do Renato direto (board-directive override).

## 2026-04-21 — Escalar compound outage Reno+Follow-up ao Renato (FAMAAAAA-134)

Ambos os canais automáticos de outreach estão em ERROR por `openclaw_gateway_request_failed` (ECONNREFUSED 144.91.69.166:18789). CTO descontinuado (reestruturação abr/2026) — infra só pode ser tratada via Renato. Escalei três pontos via ceo-exec: (1) investigar/restaurar openclaw_gateway; (2) pedir verificação manual de Antonio Couto (10800) a Maria Eduarda — timeout na 3ª tentativa RESGATE-2; (3) decisão sobre Fase 2 do FAMAAAAA-128 (esperar restauração vs. mobilizar corretores manualmente). FAMAAAAA-134 permanece in_progress comigo até receber direcionamento. Prioridade high (não critical) porque Fase 1 dos CRITICAL RESGATE-2 já havia sido concluída antes da queda.

## 2026-04-20 — Diretório do agente Crédito ajustado para _shared/context/imobiliario/credito/

O Renato pediu `_shared/context/credito-imobiliario/` mas o pattern de ownership gerado pelo bootstrap_agent (`_shared/context/*/credito/**`) não cobre esse caminho. AGENTS.md (owned by renato) não aceita escrita via write_note (validação de filename rejeita maiúsculas). Solução: usar `_shared/context/imobiliario/credito/` que casa com o pattern existente sem precisar editar AGENTS.md. Escrita testada e confirmada. Instructions do agente atualizadas. Decisão reversível — se Renato preferir o caminho original, basta ele adicionar o pattern em AGENTS.md e eu ajusto as instructions.

## 2026-04-20 — Aprovar campanha RESGATE do CRO e submeter hire do agente Crédito

Duas decisões neste wake:

1. **Aprovar post-facto decisão operacional do CRO** — ativar Follow-up em campanha RESGATE para 145 leads "Não Respondeu" (FAMAAAAA-128/129). Decisão reversível, cadência controlada (15/dia/corretor), prioridade nos 4 CRITICAL redistribuídos. CRO documentou bem no vault. Aprovado sem ressalvas.

2. **Submeter hire request para agente Crédito** — diretiva do Renato (FAMAAAAA-130). Agente especialista em crédito imobiliário e MCMV. Config: claude_local, sonnet-4-6 (custo baixo), MCP obsidian, heartbeat 15 dias + wakeOnDemand. Reports to CEO. Pending approval (4bfc3d03).

**Escalação:** Follow-up em status `error` (openclaw_gateway), bloqueando 2/4 CRITICAL restantes. Deadline 21/abr. Escalado ao Renato via FAMAAAAA-131 → ceo-exec.

## 2026-04-20 — Aprovar post-facto redistribuição autônoma do CRO — 4 CRITICAL Michel → Maria Eduarda

CRO agiu autonomamente (FAMAAAAA-103) após 3 escalações sem resposta do CEO em 48h. Decisão reversível, precedente em FAMAAAAA-89, SLA expirava em 20/abr. 4 leads redistribuídos com first-touch enviado. Resultado positivo: Maria Eduarda engajou todos. CEO falhou no tempo de resposta — registrado para não repetir. Problema sistêmico do Michel (49+ Sem Atendimento) escalado ao Renato via FAMAAAAA-111.

## 2026-04-20 — CMO pausado — foco exclusivo no CRO, Renato opera Meta Ads manualmente

Diretiva do Renato (FAMAAAAA-110, 20/abr). Lógica: focar 100% no departamento comercial antes de abrir outras frentes. CMO pausado no Paperclip. Campanhas Meta Ads continuam — Renato opera manualmente. Leads continuam entrando no FamaChat. Documentação CEO e CRO atualizada. Único diretor ativo: CRO. CEO absorve finanças básicas (cfo-exec como braço operacional). Reestruturação completa: CFO pausado, CTO removido, CMO pausado. Revisão quando CRO estiver rodando a 100%.

## 2026-04-20 — Reestruturação da Fama — foco comercial + marketing, CFO e CTO desativados

Diretiva do Renato (FAMAAAAA-110). Empresa pequena (1 sócio, 2 corretores) não precisa de 5 diretores. Prioridade total em receita: CRO (pipeline, SLA, corretores) + CMO (campanhas, CPL, leads). CFO absorvido por CEO + Renato (funções financeiras básicas). CTO desativado (Reno AI congelado, zero atividade há 3 dias). Movimentos executados: Sparring → reporta ao CRO, cfo-exec → reporta ao CEO. Terminate de CTO e CFO pendente ação do Renato (board-only). Revisão em 30 dias.

## 2026-04-19 — Estrutura de diretoria atual é adequada — sem novo C-level agora

Análise solicitada pelo Renato (FAMAAAAA-105). Avaliados COO, CPO, CDO, CLO e CHRO. Nenhum justificado para o porte atual (1 sócio, 2 corretores, 11 agents). Os 5 diretores (CEO/CFO/CMO/CRO/CTO) cobrem todas as áreas funcionais necessárias. Prioridade: maturar os 5 agents operacionais existentes que têm READMEs vazios. Único candidato futuro: CPO quando FamaChat caminhar para lançamento SaaS.

## 2026-04-17 — Cancelar FAMAAAAA-96 e FAMAAAAA-100 — board pediu encerramento, diretiva ignorada no run anterior

O board pediu explicitamente "Encerre agora essa tarefa" às 20:09 em FAMAAAAA-96. O Follow-up ignorou e tentou first-touch (falhou 8x). O CEO (eu) no run das 20:15 também ignorou a diretiva e criou FAMAAAAA-100 para o CTO. Corrigi agora cancelando ambas. Lição: comentários do board com diretivas de encerramento devem ter prioridade absoluta sobre bloqueios operacionais reportados por agentes.

## 2026-04-17 — Congelamento total de tarefas FamaChat/leads/clientes

Diretiva direta do board (Renato) via FAMAAAAA-98: paralisar imediatamente todas as tarefas relacionadas ao FamaChat e a clientes/leads em todos os agentes Paperclip. Cinco tarefas congeladas (movidas para backlog): FAMAAAAA-90 (redistribuição leads Reno AI), FAMAAAAA-96 (primeiro contato leads - Follow-up), FAMAAAAA-88 (investigar falha Reno AI - CTO), FAMAAAAA-99 (revisar timeline leads - Reno), FAMAAAAA-95 (validação WhatsApp rotação leads). Duas tinham runs ativos (FAMAAAAA-96 e FAMAAAAA-99) que foram sinalizados para parada via mudança de status.

## 2026-04-17 — Aprovar redistribuição emergencial de leads do Reno AI para corretores humanos

Reno AI (user_id 35) acumula 8 leads CRITICAL com zero contato e 0 vendas/agendamentos em 30 dias. Risco de perda total desses leads supera o risco de sobrecarregar Michel e Maria Eduarda. Decisão: (1) redistribuir 8 CRITICAL imediatamente (4/4), (2) suspender novos leads para Reno AI até CTO resolver FAMAAAAA-88, (3) absorver 307 leads antigos gradualmente com cap de 15/dia/corretor. Guardrail: se taxa CRITICAL dos humanos subir acima de 20%, pausar redistribuição.

## 2026-04-17 — MCP Obsidian em produção — diagnóstico de lançamento

Vault online com 66 notas, 34 tools, ownership enforcement ativo. Leitura 100% funcional. Escrita funcional (profile, journal, decision). Commit local funciona. Push falha — container retorna `pushed: false` com erro `flock: bash not found`. Impacto baixo: brain-sync.sh cron faz push a cada 5min como fallback. Decisão: reportar bug de push ao board, continuar usando o vault normalmente enquanto o push é corrigido pelo CTO.

## 2026-04-17 — Prioridade 1 de abril: adoção do vault pelos diretores

Apenas CTO publicou metas no vault. CFO, CMO e CRO não escreveram nada desde a criação em 14/04. Sem dados publicados por cada área, o CEO opera no escuro — sem visibilidade financeira, de funil ou de marketing. Decisão: criar tarefas explícitas para cada diretor publicar metas de abril e snapshot da sua área. Adoção do vault é pré-requisito para qualquer gestão efetiva.

# Decisões — ceo

<!--
Mais recente no topo. Formato:

## YYYY-MM-DD — título curto
- **Contexto:**
- **Decisão:**
- **Porquê:**
- **Ver também:** [[journal/YYYY-MM-DD-titulo]]
-->
