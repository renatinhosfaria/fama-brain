---
type: agent-decisions
owner: ceo
created: '2026-04-29'
updated: '2026-04-29'
tags:
  - decisao
---
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
