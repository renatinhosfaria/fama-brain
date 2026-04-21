---
type: agent-decisions
owner: ceo
created: '2026-04-14'
updated: '2026-04-21'
tags:
  - decisao
  - paperclip
---
## 2026-04-21 — Escalar permissões de shared-keys ao Renato via ceo-exec

RH diagnosticou que o diretório /paperclip/instances/default/shared-keys/ está 0700 root:root e agents rodam como node (uid 1000) — chave SSH compartilhada inacessível. Fix da FAMAAAAA-141 ficou tecnicamente incompleto. Optei por escalar via ceo-exec (FAMAAAAA-162) pedindo chown root:node + 0750 dir + 0640 key (opção 2 do RH, menor blast radius, mantém root como owner sem escrita ao grupo). FAMAAAAA-140 segue blocked com blockedByIssueIds=[FAMAAAAA-162], reatribuída ao RH para wake automático.

## 2026-04-21 — Rejeitar proposta A/B do RH em FAMAAAAA-159 com correções de schema

RH (FAMAAAAA-159) propôs auditoria A/B para corrigir drift de schema no bundle do CEO. Verifiquei via ToolSearch contra os schemas vivos das tools MCP Obsidian e encontrei três tools que RH propôs migrar de `as_agent` → `agent` mas que na verdade ainda usam `as_agent` no schema real: `upsert_financial_snapshot`, `upsert_entity_profile`, `upsert_shared_context`. Além disso, a proposta introduziria um campo `content` genérico em `upsert_financial_snapshot` (que tem campos estruturados: caixa/despesa/receita) e um `path` em `upsert_shared_context` (que usa topic/slug/title). Aplicar como está introduziria NOVO drift. Decisão: aprovei em bloco as partes corretas (append_decision, create_journal_entry, update_agent_profile, upsert_goal/result, get_agent_delta split, read_agent_context, parte B do catálogo de approvals) e rejeitei as três tools erradas + levantei questão sobre o parâmetro `target` em upsert_goal/result que não existe no schema real (pode ser convenção de path). Reatribuí a issue em in_progress para RH revisar. Princípio aplicado: "não minta e não invente" — verificar contra a fonte antes de aprovar. Ref: FAMAAAAA-159.

## 2026-04-21 — Acesso SSH OpenClaw destravado — Padrão B (chave compartilhada) autorizado pelo Renato

Renato autorizou e configurou chave SSH compartilhada `paperclip-agents` (Ed25519, `/paperclip/instances/default/shared-keys/paperclip-agents`) autorizada na VPS OpenClaw (144.91.69.166) como root. Doc canônico em `_shared/context/infra/openclaw-access.md`. Trade-off: onboarding zero-touch para novos agents vs. ausência de audit trail por agent — red lines (nunca `openclaw gateway restart`, sem escrita em bundle sem autorização) viram disciplina dos SOUL/AGENTS. FAMAAAAA-157 encerra; Fase 3 da FAMAAAAA-151 (auditoria OpenClaw pelo RH) desbloqueada — RH retoma FAMAAAAA-140.

## 2026-04-21 — Fechamento FAMAAAAA-154 — bundle do RH atualizado

RH aplicou as correções A (schemas de tools MCP Obsidian: as_agent→agent, append_decision/create_journal_entry com campos novos, get_agent_delta dividido por agent), B (POST /api/companies/{companyId}/approvals no catálogo) e C (reescrita de "cinco arquivos" reconhecendo bundles reduzidos) exclusivamente no próprio bundle. Verifiquei via grep no filesystem: zero ocorrências de as_agent/title_slug nos cinco arquivos; schemas novos presentes nas linhas citadas; SOUL.md e USER.md intactos. Drift análogo persiste no meu bundle (HEARTBEAT.md §6 e §8) e será tratado em issue separada. Refs: FAMAAAAA-154, comentários 89236e44 (aprovação) e e1ee9ff4 (aplicação).

## 2026-04-21 — Bundle Vault aprovado (reorganização estrutural)

Contexto: FAMAAAAA-151 — Vault entregou Fase 1 (5 arquivos .proposed: AGENTS/SOUL/HEARTBEAT/TOOLS/USER) para revisão antes de aplicar em agents/7be1b6c7.../instructions/. Zero mudança de política; pura reorganização no padrão CEO/RH.

Decisão: APROVADO após 1 ajuste menor — AGENTS.md:56 (missão 1 "Deploy") precisa trocar "combinar com Renato antes do restart em produção" por "via CEO/ceo-exec" para consistência com a linha vermelha (AGENTS.md:96) e com TOOLS.md/USER.md. Aprovado também: (a) CEO como aprovador no dia a dia e Renato como aprovador final para infra crítica; (b) uso de vault_admin para atualizar _shared/context/AGENTS.md quando cabível, com journal + append_decision obrigatórios; (c) canal único ceo-exec para todo contato com Renato; (d) Fase 2 (Crédito — HEARTBEAT e USER) pode encadear após a Fase 1.

Rationale: Bundle segue padrão da casa (proposta → review → aplicação), elimina ponteiro quebrado em AGENTS.md→HEARTBEAT.md e distribui peso do AGENTS.md denso entre 5 arquivos menores. Fase 3 (OpenClaw) segue bloqueada pelo SSH no VPS 144.91.69.166; escalarei ao Renato via ceo-exec em paralelo, sem prender o Vault.

## 2026-04-21 — Aprovação de correção de docs RH (FAMAAAAA-154)

RH auditou o próprio bundle e encontrou drift entre a doc (`as_agent`, `title_slug`, `body`, `context`, `decision`, `see_also`) e o schema real das tools MCP Obsidian (`agent`, `title`, `content`, `rationale`, `tags`). Verifiquei os schemas reais via ToolSearch — a leitura da RH é correta. Aprovei as três correções (A crítica: assinaturas de tool; B menor: adicionar endpoint de approvals em TOOLS.md; C cosmética: flexibilizar "cinco arquivos") por se tratar de mudança operacional, reversível, sem impacto estratégico/financeiro e dentro do escopo do bundle do próprio agent — decisão autônoma do CEO, sem escalar ao Renato. Escopo restrito: RH toca apenas no próprio bundle. O mesmo drift existe no meu HEARTBEAT.md §6 e §8 (CEO) e precisa ser corrigido em issue separada, não por contágio.

## 2026-04-21 — Aprovar diffs de alinhamento no bundle do CRO (Crédito/RH/Vault)

Diagnóstico bate com a realidade (Crédito, RH e Vault existem como agents Paperclip). Mudanças são puramente alinhamento de vocabulário e roteamento — não alteram política comercial, escopo ou linha de comando do CRO. Reversível, baixo risco, dentro do escopo já acordado. Por política interna, bundle do CRO é aprovado pelo CEO e não precisa subir ao Renato.

## 2026-04-21 — Aprovado normalização do bundle do agente Crédito + routine quinzenal de pesquisa

FAMAAAAA-152: RH diagnosticou bundle incompleto do Crédito (faltam HEARTBEAT.md e USER.md, referência cruzada quebrada no AGENTS.md linha 191, desalinhamento pós-reestruturação abril/2026). Aprovei em bloco A–E (criar HEARTBEAT.md e USER.md no padrão dos demais bundles, corrigir AGENTS.md, atualizar SOUL.md para refletir Follow-up e RH). Sobre F: diretriz de formalizar routine Paperclip quinzenal para pesquisa do Crédito (Selic, MCMV, SFH, F4 CAIXA mudam com frequência — não depender de trigger manual). Concurrency skip, catchUp latest_only, ação: revisar _shared/context/credito-imobiliario/ e publicar delta. Issue reatribuída ao RH em in_progress para executar.

## 2026-04-21 — Renato aprovou atualização do bundle do CEO — pacote completo reatribuído ao RH

Wake `issue_children_completed` em FAMAAAAA-150. ceo-exec (FAMAAAAA-155) entregou resposta integral do Renato via Telegram: "Aprovado. Pode tocar o pacote inteiro dos 9 blocos e reatribuir a FAMAAAAA-150 ao RH para aplicar os diffs, registrar decision + journal e fechar." Reasoning do Renato: ajuste de documentação reflete estrutura já autorizada; risco de aprovar baixo, risco de não aprovar médio (mapa desatualizado). Ação: reatribuí FAMAAAAA-150 ao RH (todo, blockers limpos) com escopo completo dos 9 blocos. Loop de governança fechado — RH propôs, CEO validou, ceo-exec intermediou, Renato aprovou, RH aplica.

## 2026-04-21 — Aprovei reorganização dos bundles Vault e Crédito; escalei SSH OpenClaw ao Renato

FAMAAAAA-151: RH auditou os 9 bundles. Vault só tem AGENTS.md (faltam SOUL/HEARTBEAT/TOOLS/USER); Crédito faltam HEARTBEAT/USER; OpenClaw não inspecionável (SSH negado). Aprovei Fases 1 (Vault) e 2 (Crédito) como pura reorganização estrutural — decisão operacional reversível, sem mudança de policy. Exigi diff no thread antes de aplicar. Fase 3 (OpenClaw) depende de destravar SSH no VPS 144.91.69.166 — criei FAMAAAAA-156 para ceo-exec levar ao Renato, opção 1 (chave pública) preferida por reutilização. RH segue Fase 1+2 em paralelo, não bloqueada pelo SSH.

## 2026-04-21 — Aprovar proposta do RH de atualização do bundle do CEO — escalado ao Renato

RH (FAMAAAAA-150) auditou meu bundle e detectou drift real: as três contratações pós-reestruturação (Crédito 2026-04-20, Vault e RH 2026-04-21) não aparecem em AGENTS.md/HEARTBEAT.md/SOUL.md/TOOLS.md, embora já estejam no `_shared/context/AGENTS.md` (owner: Renato) e nas minhas decisions. Validei as 3 contratações contra o vault — checam. Aprovei o pacote inteiro de 9 blocos (todos aditivos, reversíveis, sem mudança de escopo/autoridade — apenas documentam o que já foi autorizado). Como é meu próprio bundle, escalei ao Renato via ceo-exec (FAMAAAAA-155) conforme o guardrail do próprio RH e a linha vermelha do meu AGENTS.md. FAMAAAAA-150 marcada como blocked por FAMAAAAA-155 — wake automático quando o Renato aprovar. Próximo passo: reatribuir ao RH para aplicar os 9 diffs.

## 2026-04-21 — Diagnóstico ceo-exec Telegram: canal Renato OK, falha é de outro fluxo

RH entregou diagnóstico completo no FAMAAAAA-143 (log OpenClaw VPS 144.91.69.166). Evidência: sendMessage ok para chat=8564576789 (Renato) em 2026-04-21 10:40 BRT; 227 INFO / 52 WARN / 6 ERROR em 24h; apenas 1 HttpError transiente sem recorrência. Hipótese (a) alucinação do ceo-exec descartada. Os 5 ERRORs remanescentes são de outro fluxo: tentativas de envio a telefones E.164 de corretor (DDD 34) — tool exige chat_id numérico, não existe mapeamento phone→chat_id no OpenClaw. Decisão: (1) fechei FAMAAAAA-143 como done; (2) abri FAMAAAAA-145 sob CRO para investigar origem e propor resolver vs ajuste de caller; (3) comentei no parent FAMAAAAA-142 pedindo ao Renato confirmar recepção das mensagens das tasks afetadas — se sim, fecha-se o incidente; se não, é problema do lado cliente Telegram. Porque: separar escopos evita que o incidente-pai fique travado pelo sub-problema de corretor (menor prioridade, domínio CRO) e desbloqueia encerramento do FAMAAAAA-142 assim que Renato confirmar.

## 2026-04-21 — Suspender delegação ao ceo-exec até Telegram confirmado

Renato abriu FAMAAAAA-142 reportando que ceo-exec não entrega ao Telegram. Revisão das últimas 3 tasks (FAMAAAAA-131/133/141) mostra padrão: agent fecha como done com narrativa de entrega, mas Renato não recebe — alucinação de tool ou bridge OpenClaw/Telegram quebrado. Sem CTO ativo para debugar OpenClaw VPS. Decisão: pausar delegações de recado via ceo-exec; toda comunicação com Renato passa por comment em Paperclip (canal comprovadamente funcional) até ele confirmar que o Telegram voltou. Issue FAMAAAAA-142 reatribuída a Renato (in_review) aguardando decisão dele: corrigir manualmente no VPS 144.91.69.166 ou autorizar contratação de agent técnico via paperclip-create-agent.

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
