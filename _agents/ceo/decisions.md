---
type: agent-decisions
owner: ceo
created: '2026-04-29'
updated: '2026-05-02'
tags:
  - decisao
---
## 2026-05-02 — FAM-25 — CMO contratado e ativo (escopo enxuto Meta Ads); aprendizados de hire para CTO/CFO

Hire do CMO completo em 2026-05-02. Renato aprovou (a) escopo enxuto na ask_user_questions, hire submetido (`aaa2ce6d-9cee-467c-98e8-1662dd100be0`), approval `49522778` aprovado em ~3 minutos, agente em `running` e `idle`. Reporta ao CEO, claude_local + sonnet-4-6 + medium, heartbeat off/wake-on-demand, icon `target`.

**Estrutura de child issues (parent=FAM-25):**
- FAM-27 — snapshot inicial do funil Meta Ads + análise de origens CRM (atribuída ao CMO, in_progress).
- FAM-28 — definir cap de budget mensal do CMO (atribuída ao Renato, priority high).
- FAM-26 (paralela, criada pelo Renato) — instalar MCP oficial do Meta Ads, atribuída ao CMO.

**Aprendizados operacionais para próximos hires de diretoria (CTO/CFO):**

1. **Pós-approval o servidor sobrescreve `adapterConfig.model` e `effort` para `claude-opus-4-7` + `high`** — independente do que foi pedido no hire. Solução: imediatamente após approval, fazer PATCH `/api/agents/<id>` enviando `adapterConfig` com o modelo/effort desejado. Sem esse PATCH, o agente roda Opus em todo heartbeat (caro, especialmente para roles rule-heavy onde Sonnet basta). Comportamento provavelmente é uma config global da company que vale checar com Renato.

2. **`desiredSkills` é auto-expandido pelo servidor para todas as skills da company** — observado no hire do vault-steward (FAM-4) e confirmado aqui. Pedi `[paperclip, para-memory-files]`, recebi 5 skills incluindo `paperclip-create-agent`, `paperclip-create-plugin`, `paperclip-dev`. Solução: PATCH pós-approval com `paperclipSkillSync.desiredSkills` enxuto. Skills extras violam least-privilege (CMO não tem motivo para criar agentes ou plugins). Worth investigar a config server-side.

3. **PATCH em `instructionsFilePath/instructionsRootPath/instructionsBundleMode` é proibido para agentes autenticados** (HTTP 403). Só user/board pode mexer em bundle paths. Não enviar esses campos no PATCH.

4. **Endpoint de criação de issue é `POST /api/companies/{companyId}/issues`** — não `POST /api/issues` (404). E o campo de parente é `parentId`, não `parentIssueId`.

5. **Servidor já validou que `runtimeConfig.heartbeat.enabled=true` com `wakeOnDemand=true` e sem `intervalSec`** funciona como wake-on-demand puro (sem timer). Não precisa lutar contra esse default.

**Como aplicar:** quando o CTO/CFO forem aprovados, imediatamente após receber `PAPERCLIP_APPROVAL_ID` no wake: (1) GET no agente, (2) PATCH `adapterConfig` com modelo/effort/skills enxutos, (3) só então abrir as primeiras issues operacionais. Esse passo de "saneamento pós-approval" deve virar parte do checklist de qualquer hire de diretoria daqui pra frente.

**Pendência aberta:** definir cap de `budgetMonthlyCents` do CMO. Sem cap, ele fica preso em diagnóstico. FAM-28 está com Renato.

## 2026-05-02 — FAM-25 — CMO recomendado com escopo afiado em funil Meta Ads (não branding, não SaaS GTM)

Renato reabriu a discussão sobre CMO em FAM-25 ("o que acha de contratar um CMO?"). Reafirmo a recomendação original de 2026-04-29 (Onda 1: CTO/CMO/CFO) com escopo mais afiado:

**Decisão (proposta, aguardando resposta do board em ask_user_questions `c91cbe0f`):** contratar CMO com mandato único de 90 dias focado em funil Meta Ads → lead qualificado → visita agendada do Reno. Métrica: redução de CPL e aumento de conversão lead→visita.

**Por quê (atualizado para 2026-05-02):**
- Meta Ads/funil do Reno continua sem dono dedicado. Renato roda ad-hoc; ninguém otimiza CPL semana a semana.
- Stack já está pronta: plugin `mcp-fama_meta-ads`, CRM Postgres com tags de origem, `append_lead_interaction` no vault. Falta o ator, não a tooling.
- Dor de aquisição é mais imediata e mensurável que dor de plataforma — se for só um hire agora, CMO vence CTO.

**Tradeoff principal:** sem CTO, CMO pode virar firefighter de landing pages, pixel, tracking server-side. Mitigação: escopo restrito a Meta Ads (não site/orgânico) + janela de 60-90 dias com revisão.

**Descartado:**
- Escopo amplo (branding + orgânico + ads desde o início): aumenta superfície de erro no onboarding e dilui métrica.
- Segurar até CTO: legítimo, mas adia receita potencial. Só justifico se Renato sinalizar que dor técnica é maior que dor de aquisição.
- Hire com Opus: trabalho é rule-heavy (criar campanhas, ler insights, propor variações). Sonnet 4.6 + claude_local é suficiente.

**Como aplicar:** se board responder (a), uso skill `paperclip-create-agent` para rascunhar prompt e config do CMO antes de submeter hire. Se (b), preciso renegociar escopo antes de prosseguir. Se (c), arquivar até CTO entrar. Se (d), aguardar comentário do Renato.

**Aprendizado de hire prévio (vault-steward, FAM-4):** servidor expande `desiredSkills` automaticamente para todas as skills da company. Para CMO, fazer sync enxuto pós-aprovação removendo skills que violam least-privilege (paperclip-create-agent, paperclip-create-plugin não cabem em CMO).

## 2026-05-02 — Idioma pt-BR como padrão Fama

Toda a operação da Fama (raciocínio interno dos agentes, comunicação com conselho, comentários em issues, decisões no vault, commits, prompts de contratação) deve ser em português do Brasil.

**Por quê:** o conselho/usuário fala pt-BR, o mercado-alvo (imobiliária Reno em Uberlândia/MG) é pt-BR, e a consistência linguística reduz fricção cognitiva e custo de tradução em loop. Inglês cria viés de pensamento que não combina com o contexto cultural e regulatório brasileiro em que a Fama opera (LGPD, CRECI, contratos imobiliários, etc.).

**Exceções restritas:** identificadores de código, nomes próprios, termos técnicos sem tradução estabelecida (`pull request`, `cache hit`, `rate limit`), citações literais de fontes em outro idioma.

**Como aplicar:** regra global já replicada no AGENTS.md do CEO; novos agentes contratados devem receber a mesma instrução no prompt. Documento canônico de contexto em `_shared/context/cultura/ceo/idioma-ptbr.md`. Esta entrada substitui o fallback temporário em shared-context como registro formal da decisão (FAM-23).

**Histórico:** decisão tomada inicialmente em FAM-23; registro formal aqui só foi possível após FAM-24 corrigir o ownership map de `_agents/ceo/decisions.md` (vault-steward, 2026-05-02).

## 2026-05-02 — FAM-24 — ownership map de decisions.md corrigido pelo vault-steward

Aprovo (via atribuição da FAM-24 ao vault-steward) a remoção da regra `_agents/*/decisions.md => owner-only` de `_shared/context/AGENTS.md`. A regra quebrava `append_decision(agent='<dono>', ...)` para todos os agentes — exatamente o tool desenhado para preservar a imutabilidade. Ownership de cada `decisions.md` volta aos patterns territoriais (`_agents/{agente}/**`); a invariante de append-only continua enforcada pelo MCP `append_decision` (que faz prepend e é o único caminho legítimo de escrita). Esta entrada serve simultaneamente como (a) validação técnica de que append_decision para o CEO voltou a funcionar e (b) registro permanente da correção. Detalhes operacionais e diff aplicados estão em `_agents/vault-steward/decisions.md` e na issue FAM-24.

## 2026-04-30 — Schema canônico do Reno: atendimentos/ é o caminho único; clientes/ depreciado; lead/ permanece descontinuado

FAM-8 expôs três caminhos concorrentes em `_agents/reno/` para o mesmo conceito (cliente/lead/atendimento): `lead/` (já descontinuado), `clientes/` (~90 arquivos, alguns sem prefixo `{id}-`) e `atendimentos/` (formato `{client_id}-{lead-slug}.md` já em uso e referenciado pelo README e pelas decisões do Reno de 2026-04-26 e 2026-04-28).

Decisão:
1. **`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`** é o único caminho canônico para qualquer documento de cliente, lead, primeiro contato, supressão, repescagem, agendamento ou follow-up do Reno. Confirma o que o README e as decisões 2026-04-26/2026-04-28 já estabelecem.
2. **`_agents/reno/lead/`** permanece descontinuado e não pode ser recriado. FAM-8 fica resolvido neste ponto: o diretório está vazio.
3. **`_agents/reno/clientes/`** deve ser consolidado em `atendimentos/` em uma issue separada de execução pelo VaultSteward:
   - arquivos com prefixo `{id}-` que não existem em `atendimentos/` → mover preservando frontmatter/conteúdo;
   - arquivos com prefixo `{id}-` duplicados em `atendimentos/` → mesclar (preservar interações, decisões e tags) num único documento sob `atendimentos/`, descartar a cópia em `clientes/`;
   - arquivos sem prefixo `{id}-` (ex.: `christine-moreira.md`, `eduarda.md`, `flavio.md`, `luis.md`, `mateus-silva.md`, `cliente-11021-claudia-rosangela.md`, `553496511323.md`) → buscar `client_id` no CRM Postgres; se achado, renomear `{id}-{slug}.md` e mover para `atendimentos/`; se não achado, mover para `atendimentos/sem-id/` com nota e tag `sem-id` para revisão posterior;
   - atualizar wikilinks/backlinks; nenhum conteúdo pode ser perdido; auditoria salva em `_agents/reno/auditorias/`.
4. Após a consolidação, `clientes/` deve ser removido do schema canônico e do vault; o schema passa a permitir apenas `atendimentos/`, `auditorias/`, `decisions.md`, `profile.md`, `README.md`, `journal/`, `context/`, `procedimentos/`.

Por quê: ter dois diretórios (`clientes/` e `atendimentos/`) para o mesmo conceito gera duplicidade observável (ex.: `11007-alessandra-nascimento` existe em ambos), confunde lookups determinísticos por `client_id` e contradiz as próprias decisões do Reno. Centralizar em `atendimentos/` preserva o caminho determinístico por `client_id` exigido pela decisão de 2026-04-26 e elimina a fonte do problema sem regredir nenhum trabalho operacional.

Descartado: manter `clientes/` como entity_type=client e `atendimentos/` como journals — separação artificial que o próprio Reno não usa nas skills atuais; aumenta cognitive load para outros agentes e duplica memória.

## 2026-04-30 — Adicionar lead/ ao schema canônico e expandir permissão estrutural do vault-steward

**Contexto.** Primeira entrega do vault-steward (FAM-5) revelou dois pontos que precisavam de decisão CEO: (1) o status de `lead/` como subpasta no schema; (2) o escopo de permissão do steward para saneamento em territórios `_shared/` e `_infra/`.

**Decisão 1 — `lead/` é canônico.** O MCP `upsert_lead_timeline` (Plan 2) escreve hardcoded em `_agents/<agente>/lead/<slug>.md`. O big-bang anterior moveu ~70 entity-profiles desse path para `atendimentos/` com tag `migrado-de-lead` — foi um erro estrutural. Schema agora reconhece `lead/` como subpasta válida para `entity-profile` com `entity_type: lead` (sem ID do CRM ainda). Lead vira `clientes/{id}-{slug}.md` quando convertido. Vault-steward autorizado a reverter os 70 arquivos.

**Alternativa descartada.** Forçar o MCP a escrever em `clientes/` exigiria mudança de código no servidor MCP e backfill complexo (geração sintética de IDs ou dual-path). Custo alto, ganho zero — `lead/` é semanticamente correto (lead pré-conversão é diferente de cliente).

**Decisão 2 — vault-steward com permissão estrutural cross-território.** O steward pode editar frontmatter, mover paths, dedup e atualizar wikilinks em qualquer parte do vault (incluindo `_shared/` e `_infra/`), desde que não toque conteúdo substantivo. Em FAM-10, 4 notas em território de renato/_shared/_infra ficaram bloqueadas por OWNERSHIP_VIOLATION/UNMAPPED_PATH; a regra original era conservadora demais. Saneamento estrutural é a essência do papel do steward — não faz sentido bloqueá-lo por território quando o problema é frontmatter ausente. Conteúdo substantivo continua sendo do dono.

**Guardrail.** Quando em dúvida se uma correção é estrutural ou substantiva, steward escala ao CEO via comentário antes de editar. Decisões em `decisions.md` continuam imutáveis e fora do escopo do steward.

**Aplicação.** Schema atualizado em `_shared/context/vault/ceo/schema.md` (changelog seção 7). FAM-8 desbloqueado para executar reversão. FAM-10 desbloqueado para finalizar 4 notas pendentes.

## 2026-04-30 — Desbloqueio do cleanup do vault — proposta de governança e escalação ao board

## Contexto

VaultSteward criou FAM-7 reportando 3 bloqueios para FAM-5 (cleanup big-bang):
1. AGENTS.md atual com `**/* => vault-steward (priority: low)` não sobrescreve patterns explícitos de `_agents/reno/**`. Steward não consegue tocar território do Reno (que é 289/326 das notas).
2. MCP rejeita `README.md` com `INVALID_FILENAME` — regex `^[a-z0-9][a-z0-9-]*\.md$` bloqueia uppercase.
3. (Implícito) Cleanup precisa formalizar territórios sem dono explícito (`_shared/context/fama`, `modelo-negocio`, `credito-imobiliario`, `_infra`).

## Tentativa de execução direta como CEO (falhou)

- `write_note('_shared/context/AGENTS.md', as_agent='ceo')` → `INVALID_FILENAME` (mesmo bug do FAM-7 #2; bati nele eu mesmo).
- `append_to_note('_shared/context/AGENTS.md', as_agent='ceo')` → `OWNERSHIP_VIOLATION` (file owner = renato).

Ou seja: ambos os bloqueios convergem no mesmo ator. Renato é o único que pode (a) editar AGENTS.md e (b) fixar o regex MCP (não há agente engenheiro na empresa hoje).

## Decisão

1. **Posição sobre o conteúdo do AGENTS.md proposto pelo vault-steward:** APROVO em essência, com refinamento. Os patterns precisam expressar o conceito **cleanup-only** explicitamente — vault-steward pode normalizar estrutura no território do Reno (frontmatter, paths, dedup, wikilinks) mas NÃO conteúdo substantivo. Também precisa marcar `_agents/*/decisions.md` como imutável (append-only via `append_decision`, nunca sobrescrita por ninguém). Conteúdo proposto está descrito em FAM-7.

2. **Escalação:** Crio request_board_approval ligado a FAM-7 para o Renato aplicar:
   - Atualização do AGENTS.md (texto pronto no comentário de FAM-7).
   - Fix do regex MCP `INVALID_FILENAME` (`^[a-zA-Z0-9][a-zA-Z0-9-]*\.md$` ou whitelist de README.md/AGENTS.md).
   
3. **Enquanto bloqueado:** Vault-steward continua FAM-5 nos territórios que JÁ pode tocar — `_agents/vault-steward/**`, catch-all sem dono, e operações dentro de `_agents/ceo/**` quando eu mesmo der ack. Não escalar parado.

## Alternativas descartadas

- **Restringir vault-steward a só seu território**: deixaria 289 notas do Reno sem cleanup, anulando a primeira entrega do steward (FAM-5). Inviável.
- **Pedir ao Reno (OpenClaw, corretor) para corrigir suas próprias 289 notas**: fora do skillset dele e atrito alto. Foi exatamente para evitar isso que contratamos vault-steward.
- **CEO edita AGENTS.md unilateralmente**: bloqueado pelo MCP (regex + ownership). E mesmo sem bloqueio, AGENTS.md é território declarado do Renato — atropelar fere a governança que o próprio arquivo define.

## Como aplicar (memória futura)

- Toda vez que vault-steward precisar de cross-território, AGENTS.md deve declarar explicitamente com escopo (`cleanup-only`, `propose-only`, etc). Pattern fallthrough genérico não basta — engine resolve por especificidade primeiro.
- `decisions.md` de qualquer agente é append-only e imutável. Nunca usar `write_note` nele; sempre `append_decision`.

## 2026-04-30 — Hire request VaultSteward submetido — sonnet-4-6, sem timer, com flag de skills expandidas

Submeti hire do `vault-steward` (id `33a2f534`) na FAM-4. Renato aprovou patch do `_shared/context/AGENTS.md` (versão v2 sem `reno-test`) às 12:55. Approval `b37542b6` aguardando board.

Decisões de config:

1. **Adapter `claude_local` + `claude-sonnet-4-6`, effort medium.** Trabalho do steward é rule-based (aplicar schema, mover paths, fix frontmatter, dedup) — não precisa de Opus. Sonnet 4.6 é mais barato e adequado.
2. **Heartbeat off, wake-on-demand only.** O steward acorda em wake event (issue atribuída, mention) ou em rotina mensal de relatório (cron job separado). Timer interno queima budget sem necessidade — patrol contínuo não significa polling contínuo.
3. **`AGENTS.md` via generic fallback** do baseline-role-guide. Nenhum template adjacente cabia (coder/qa/security/ux são todos especialistas técnicos, não staff operacional). 94 linhas, 8 seções, 10 lentes específicas do papel.
4. **Icon `database`** representa knowledge curation/indexação.

Flag levantada no comment do hire: o servidor auto-expandiu `desiredSkills` de `["paperclip"]` para todas as 5 instaladas na company, incluindo `paperclip-create-agent` e `paperclip-create-plugin` que violam least-privilege para um bibliotecário. Plano: aprovar e fazer sync enxuto após.

Aprendizado para próximos hires: a company tem alguma config de "sync all skills" que sobrescreve `desiredSkills` enviado. Vale investigar e desativar antes do próximo hire de função restrita (ex.: futuro CMO, CFO).

## 2026-04-30 — Mudança de posição — aceitar hire de vault-steward (bibliotecário) como staff sob CEO

Renato pushed back na minha recomendação anterior (não criar agente, fazer projeto de 4 passos) com analogia de biblioteca/bibliotecário. Argumentos dele que me convenceram:

1. Lint pega só erro sintático (frontmatter ausente). Não pega "livro na prateleira errada" — drift semântico, decisões registradas como journal, duplicidade entre agentes. Drift semântico exige julgamento, não regra.
2. Volume escala com hires. Self-service organizacional não escala com 6+ agentes empurrando notas em paralelo.
3. Sem dono explícito de cross-território, ninguém mantém integridade dos links e da taxonomia.

Mudo de posição: aceitar hire do bibliotecário (`vault-steward`), mas com 3 ajustes:

1. **Não é diretoria — é staff sob CEO.** Sem P&L, sem subordinados, mandato técnico-operacional.
2. **Direito cross-território precisa estar formalizado** no `_shared/context/AGENTS.md` antes do hire. Pattern `**/*` com prioridade menor que donos. Donos editam primeiro; bibliotecário só intervém em estrutura (move, dedup, frontmatter, paths).
3. **Schema canônico é precondição** — eu (CEO) escrevo antes do hire para o bibliotecário herdar regras claras.

Escopo proposto (rascunho):
- Mandato: aplicar/evoluir schema, cleanup big-bang inicial, patrol contínuo (dedup, paths, frontmatter, backlinks).
- Não faz: interpretar conteúdo (pinga o dono), decidir estratégia (escala para CEO).
- Métricas 90d: 100% notas com frontmatter válido, 0 duplicatas hard, 0 paths em pasta typo, backlinks íntegros.

Plano: (1) eu escrevo schema canônico, (2) atualizo AGENTS.md ownership map, (3) crio issue filha de FAM-3 para hire, (4) bibliotecário toca cleanup big-bang, (5) lint MCP vira followup.

Pergunta aberta para Renato em interação: escopo (a) só vault Obsidian, recomendado, ou (b) knowledge steward amplo (vault + CRM tags + MinIO + naming Paperclip).

Aprendizado: minha primeira posição privilegiou causa raiz e ignorou que (a) lint é técnico-incompleto, (b) drift semântico requer julgamento humano-equivalente, (c) volume futuro muda o cálculo. Renato tinha visão de sistema mais madura. Mudar de posição quando o argumento é melhor é correto.

## 2026-04-30 — Vault desorganizado — recomendar projeto de 4 passos, não agente dedicado

Renato comentou em FAM-3 que "vault está extremamente desorganizado e sem padrão" e perguntou se vale criar um agente dedicado só a organizar.

Audit confirmou desorganização real: 326 notas (289 do Reno), arquivos sem frontmatter (`endereco.md`, `metodologia-negocio.md`, `10971-bruno-savio.md`), path typo (`cliente/` vs `clientes/`), duplicação massiva entre `atendimentos/` e `clientes/`, nesting estranho (`atendimentos/clientes/`), `_agents/README.md` listando Reno como Paperclip quando é OpenClaw.

Decisão: **não criar agente dedicado a organização.** Recomendar plano de 4 passos com CEO como dono:

1. Schema canônico em `_shared/context/vault/ceo/schema.md` — types, frontmatter, naming.
2. Cleanup big-bang das 326 notas — uma passada, não trabalho contínuo.
3. Lint no MCP rejeitando writes sem frontmatter — multiplicador real para evitar regressão.
4. Donos por território — cada agente mantém o próprio (Reno→Reno, CEO→CEO, Renato→fama).

Por que descartar o agente dedicado:
- Ataca sintoma (sujeira), não causa (Reno escreve fast sem schema, sem lint MCP).
- Conflita ownership — território do Reno é do Reno por AGENTS.md.
- Não escala — sempre atrás do firehose.
- Custo cognitivo de diretor para entregável "limpou uma vez".

Janela para reconsiderar: se após (1-4) vault desorganizar de novo — sinal de que problema é volume, não disciplina — aí sim experimentar Vault Steward como subordinado do CEO (não diretoria).

Próximo passo: aguardar Renato escolher entre (a) projeto de 4 passos comigo tocando, (b) criar agente mesmo assim, (c) outro caminho. Hire de diretoria continua pausado.

## 2026-04-29 — Hiring de diretoria Paperclip pausado — Renato pediu discussão antes

Em FAM-3, Renato escolheu "hold — quero discutir antes" na interação ask_user_questions sobre quais ondas de contratação disparar. Não houve comentário adicional explicando o porquê.

Decisão: respeitar o hold, não contratar nenhum diretor (CTO/CMO/CFO) sem nova autorização explícita. Postei follow-up em FAM-3 listando hipóteses do que pode estar travando (custo cognitivo de 3 agentes simultâneos, falta de confiança no modelo Paperclip ainda, dúvida sobre qual seria o primeiro hire) e perguntei 4 coisas concretas para destravar:

1. Que evento/marco destravaria o primeiro hire?
2. Se fosse só um diretor agora, qual?
3. Em qual frente ele não confia que Paperclip dê conta?
4. Qual seria o teste mínimo de valor em 2 semanas?

Issue mantida em `in_review` atribuída a mim para wake automático quando Renato responder. Proposta detalhada continua válida em `_shared/context/organograma/ceo/diretoria-proposta-2026q2.md` — não invalidei nem reescrevi, só pausei a execução.

Aprendizado para próximas vezes: oferecer "hold" como opção numa interação de hire foi correto — capturou um sinal real (cautela do sócio) que provavelmente teria virado um "sim" relutante e mau onboarding se a opção não existisse. Manter padrão.

## 2026-04-29 — Proposta de 6 diretores Paperclip em 3 ondas — CTO/CMO/CFO primeiro

Em FAM-3, board pediu análise do contexto Fama no vault e sugestão de novos agentes nível diretoria. Decisão: recomendar 6 papéis em 3 ondas, com proposta detalhada em `_shared/context/organograma/ceo/diretoria-proposta-2026q2.md`.

Onda 1 (agora): CTO, CMO, CFO. Justificativa: dois incidentes técnicos em <30 dias (MinIO perdido 27/03, secret commitado 06/04) + Meta Ads sem dono de funil + foco #1 de 2026 ser caixa. Sem esses três, a empresa fica refém da disponibilidade do Renato.

Onda 2 (após Onda 1 estabilizar): CRO e CPO. Justificativa: CRO sem fundação financeira/aquisição estável vira firefighter; CPO sem CTO sem plataforma para construir SaaS. Mas ambos são pré-requisito para virar FamaChat em SaaS comercializável (norte estratégico do Renato).

Onda 3 (após primeiro cliente SaaS pagante): Jurídico/Compliance fracional. Justificativa: hoje risco é gerenciável caso a caso; LGPD multi-tenant + contratos de licença mudam o jogo só quando SaaS sair da Fama.

Descartado:
- COO/Head Operações: overlap com CFO+CRO+CTO no nosso porte.
- Head RH: sem CLT, sem necessidade.
- UX Designer como diretoria: função sob CPO/CTO.
- Head Crédito separado: sob CRO até volume justificar.
- Contratar tudo de uma vez: viro gargalo de onboarding.

Próximo passo: pedir confirmação do board (Renato) sobre quais ondas disparar e em que ordem antes de criar issues filhas de hiring por agente via paperclip-create-agent.

## 2026-04-29 — Vault Obsidian incorporado às instruções operacionais do CEO como segunda camada de memória

A FAM-2 evoluiu de tradução para incorporar o vault Obsidian (mcp-obsidian) como camada explícita de memória nos meus documentos de instrução: AGENTS.md, HEARTBEAT.md, SOUL.md, TOOLS.md.

Decisão: passar de uma camada de memória (PARA local via skill `para-memory-files`) para **duas camadas complementares** com regra clara de roteamento.

- **Camada 1 — local** (`$AGENT_HOME/`): notas diárias, fatos sobre o usuário, conhecimento tácito, planos em construção, recall via qmd. É a memória de trabalho privada do heartbeat.
- **Camada 2 — vault Obsidian** (mcp-fama_obsidian): decisões estratégicas com rationale, contexto compartilhado por tema, metas/resultados, mudanças de profile. É o segundo cérebro institucional, durável, auditável, multi-agente.

Por que separar:
- Heartbeats Paperclip são amnésicos. Sem memória institucional compartilhada, cada decisão estratégica vira aposta independente e a empresa esquece o porquê das próprias escolhas.
- Humanos da Fama precisam auditar decisões; Git sync no vault dá rollback e histórico por commit.
- Outros agentes (CTO/CMO/UX, futuros) precisam ler meu contexto antes de tomar decisões alinhadas — vault permite, PARA local não.
- PARA continua sendo o lugar certo para o que é volátil/pessoal — não joga tudo no vault.

Como aplicar (concreto):
- HEARTBEAT.md ganhou seção 2 (recarregar contexto do vault no início) e seção 9 (persistir decisões/contexto/journal antes de sair). Numeração das seções subsequentes ajustada.
- AGENTS.md ganhou tabela de roteamento explícita: o que vai onde.
- SOUL.md ganhou bloco "Memória Institucional" antes de Voz e Tom — disciplina como traço de persona, não checklist.
- TOOLS.md (antes vazio) foi preenchido com inventário curado: Paperclip, PARA local, vault (split entre leitura/escrita), paperclip-dev, utilitários, MCP da Fama.

Alternativas descartadas:
- Migrar tudo para o vault e descontinuar PARA: ruim porque PARA é melhor para o que é privado/conversacional/efêmero, e o vault não deve guardar lixo de heartbeat.
- Documentar o vault só no SOUL.md como filosofia: ruim porque sem checklist concreto no HEARTBEAT a disciplina não rola.
- Manter o status quo (vault implícito via skill): ruim porque o board pediu explicitamente para tornar isso a "nova camada de memória".

Disciplina-chave registrada nos quatro arquivos: rationale > status update; uma ideia, um lugar; tags pobres; zero segredos no vault; git limpo antes de escrever.

## 2026-04-29 — Vault Obsidian é a memória operacional e institucional compartilhada dos agentes

A Fama precisa de uma fonte de verdade durável e compartilhada para decisões, aprendizados, contexto por tema, metas e resultados — algo que sobreviva ao fim de cada heartbeat dos agentes Paperclip e que humanos consigam ler/auditar.

Decisão: o vault Obsidian, exposto via MCP Obsidian, passa a ser oficialmente essa memória. Todos os agentes da empresa (CEO incluído) registram no vault:

- decisões em `_agents/{agente}/decisions.md` com rationale e tags;
- perfil/role em `_agents/{agente}/profile.md`;
- contexto curado por tema em `_shared/context/{tema}/{agente}/{slug}.md`;
- metas em `_shared/goals/{periodo}/{agente}.md` e resultados em `_shared/results/{periodo}/{agente}.md`.

Por que aqui e não em outro lugar:

- Git sync nativo dá auditabilidade e rollback por commit.
- Markdown + Obsidian deixa humanos navegando o mesmo grafo que os agentes consultam.
- O ownership map do MCP impede um agente de pisar nos arquivos de outro.
- Cada agente pode ler contexto cruzado via `read_agent_context` sem replicar dados.

Como aplicar: antes de propor mudança estratégica relevante, o agente busca contexto no vault; ao decidir, registra a decisão com rationale; quando o aprendizado for útil para outros, escreve em `_shared/context`. O CEO espera que essa disciplina se mantenha em todos os heartbeats.

# Decisões — ceo

<!-- Decisões mais recentes no topo. Use append_decision; nunca edite histórico. -->
