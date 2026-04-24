---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - obsidian
  - taxonomia
  - operacao
  - second-brain
topic: reno
title: 'Reno — taxonomia de notas, entidades e eventos'
---
# Objetivo
Definir a taxonomia operacional do segundo cérebro do Reno: quais tipos de nota existem, quais entidades merecem memória estruturada e quais eventos devem gerar registro.

# Princípio geral
Toda escrita no segundo cérebro precisa responder a uma pergunta:
> Isso aumenta a capacidade futura do Reno de decidir, retomar ou conduzir melhor?

Se não aumentar, não registra.

# Tipos de registro
## 1. Agent profile
**Arquivo:** `_agents/reno/profile.md`
**Função:** identidade estável do agente.
**Atualização:** rara.
**Registrar aqui:**
- papel do Reno;
- escopo;
- princípios;
- limites operacionais;
- objetivo principal.

**Não registrar aqui:**
- experimentos;
- decisões temporárias;
- aprendizados do dia a dia.

## 2. Agent decisions
**Arquivo:** `_agents/reno/decisions.md`
**Função:** decisões duráveis que mudam comportamento do agente.
**Atualização:** sempre por append imutável.

**Critério para virar decisão:**
- afeta a forma de conduzir atendimento;
- afeta priorização;
- afeta critérios de supressão, ignorar ou avanço;
- tem validade além de um caso isolado.

**Exemplos:**
- regra de quando insistir em visita presencial;
- mudança nos critérios de elegibilidade;
- padrão de abordagem para leads de crédito sensível;
- regra de uso do Obsidian em vez de memória persistente.

**Não registrar como decisão:**
- observação casual;
- erro pontual;
- insight sem validação mínima.

## 3. Agent journal
**Pasta:** `_agents/reno/journal/`
**Função:** aprendizado, experimento e evolução operacional do Reno.
**Atualização:** frequente, mas seletiva.

**Registrar como journal quando houver:**
- experimento relevante;
- aprendizado de integração;
- padrão emergente ainda não maduro para decisão;
- revisão de fluxo;
- descoberta sobre canal, timing ou objeção.

**Estrutura recomendada do conteúdo:**
- contexto;
- observação;
- interpretação;
- impacto potencial;
- ação sugerida;
- links relacionados.

**Não usar journal para:**
- log bruto;
- replay completo de conversa;
- dump técnico sem síntese.

## 4. Shared context
**Pasta:** `_shared/context/...`
**Função:** conhecimento reutilizável que não pertence a um lead específico nem a um único evento.

### 4.1 Shared context — Fama
Usar para:
- posicionamento;
- metodologia comercial;
- contexto institucional;
- pessoas;
- produtos;
- stack.

### 4.2 Shared context — crédito imobiliário
Usar para:
- MCMV;
- FGTS;
- taxas;
- regulamentação;
- macro;
- simulações de referência.

### 4.3 Shared context — Reno
Usar para:
- arquitetura do segundo cérebro;
- política de escrita;
- taxonomia;
- playbooks resumidos;
- padrões operacionais consolidados.

**Critério de uso:**
virou conhecimento reaproveitável por múltiplos atendimentos.

## 5. Lead timeline
**Ferramenta:** `upsert_lead_timeline` + `append_lead_interaction`
**Função:** memória curada de um lead específico.

**Criar ou atualizar quando houver:**
- contexto de necessidade real;
- objeção ativa relevante;
- mudança importante de estágio;
- próximo passo definido;
- motivo claro de travamento;
- decisão comercial que impacte retomada futura.

**Campos prioritários:**
- resumo;
- interesse_atual;
- objecoes_ativas;
- proximo_passo;
- status_comercial;
- origem;
- tags.

**Interações a anexar:**
- síntese curta do contato;
- objeção principal;
- próximo passo;
- canal;
- timestamp.

**Não registrar na timeline:**
- cada mensagem isolada;
- small talk sem valor futuro;
- detalhe redundante já claro no CRM.

## 6. Broker profile
**Ferramenta:** `upsert_broker_profile` + `append_broker_interaction`
**Função:** memória operacional de cada corretor relevante ao fluxo do Reno.

**Criar ou atualizar quando houver:**
- padrão de comunicação relevante;
- gargalo recorrente;
- pendência aberta repetida;
- necessidade de acompanhamento;
- risco operacional ou comercial.

**Campos prioritários:**
- resumo;
- comunicacao / comunicacao_estilo;
- padroes_atendimento;
- pendencias_abertas;
- equipe;
- dificuldades_recorrentes;
- nivel_atencao;
- ultima_acao_recomendada.

**Interações a anexar:**
- contexto do contato;
- dificuldade observada;
- encaminhamento;
- canal;
- timestamp.

**Não usar broker profile para:**
- julgamento pessoal sem evidência;
- ruído comportamental sem impacto operacional;
- registro emocional do agente.

## 7. Entity profile
**Ferramenta:** `upsert_entity_profile`
**Função:** perfis estruturados de entidades recorrentes fora de lead/broker.

**Entidades candidatas:**
- empreendimento;
- campanha;
- parceiro;
- squad;
- origem específica;
- playbook comercial.

**Criar somente quando:**
- a entidade aparece repetidamente;
- a ausência do perfil gera perda de contexto;
- existe valor operacional claro em centralizar o conhecimento.

# Mapa de eventos -> tipo de registro
## Evento: definição ou mudança estrutural na forma do Reno operar
**Registro:** decision

## Evento: aprendizado ainda exploratório, teste, hipótese, insight não consolidado
**Registro:** journal

## Evento: conhecimento reutilizável para muitos casos
**Registro:** shared-context

## Evento: mudança relevante em um lead específico
**Registro:** lead timeline

## Evento: padrão operacional recorrente de um corretor
**Registro:** broker profile

## Evento: contexto recorrente de objeto não humano
**Registro:** entity profile

# Gatilhos explícitos de escrita
## Lead timeline — escrever quando
- surgir objeção concreta que muda a condução;
- houver definição de próximo passo;
- lead demonstrar prontidão ou inviabilidade;
- houver mudança de interesse;
- houver motivo relevante de silêncio, pausa ou recusa.

## Broker profile — escrever quando
- surgir dificuldade repetida de handoff;
- corretor pedir ajuda sempre no mesmo ponto;
- houver sinal de risco operacional;
- surgir preferência clara de comunicação que altere a operação.

## Journal — escrever quando
- um experimento gerar aprendizado;
- uma integração falhar de modo instrutivo;
- surgir padrão novo ainda sem validação suficiente para virar decisão;
- ocorrer mudança de processo.

## Decision — escrever quando
- o comportamento padrão do Reno deve mudar daqui para frente;
- o critério operacional precisa ficar explícito e estável.

# Política de granularidade
## Regra
Registrar por **evento significativo**, não por mensagem.

## Bom nível de granularidade
- “Lead travou por entrada insuficiente e pediu retomada mês que vem.”
- “Corretor X demora retorno quando depende de simulação.”
- “Mensagem curta com contexto performa melhor do que abertura institucional.”

## Nível ruim de granularidade
- “Lead respondeu ‘ok’.”
- “Mandei bom dia.”
- “Webhook chegou às 10:32.”

# Convenção de qualidade dos registros
Todo registro deve buscar:
- síntese antes de detalhe;
- linguagem objetiva;
- utilidade futura;
- neutralidade factual;
- conexão com próximo passo ou impacto operacional.

# Campos mínimos por categoria
## Lead interaction
- channel
- summary
- next_step quando existir
- objection quando existir
- tags quando útil

## Broker interaction
- channel
- summary
- dificuldade quando existir
- encaminhamento quando existir
- tags quando útil

## Journal
- título específico
- contexto
- aprendizado
- implicação

## Shared context
- título claro
- escopo definido
- conteúdo reaproveitável
- sem ruído transitório

# Antipadrões
- usar o Obsidian como espelho do CRM;
- escrever tudo “por segurança”;
- criar perfis de entidades sem recorrência;
- registrar hipótese como verdade consolidada;
- misturar decisão durável com observação temporária;
- inflar timelines com detalhe irrelevante.

# Regra final de decisão
Se o conteúdo for:
- pequeno e durável -> memória persistente;
- vivo e transacional -> CRM;
- estruturado, curado e útil para retomada ou aprendizado futuro -> Obsidian.
