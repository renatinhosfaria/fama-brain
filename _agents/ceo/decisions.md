---
type: agent-decisions
owner: ceo
created: '2026-04-29'
updated: '2026-04-30'
tags:
  - decisao
---
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
