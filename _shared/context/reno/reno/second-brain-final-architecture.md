---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - obsidian
  - second-brain
  - arquitetura
  - operacao
topic: reno
title: Reno — arquitetura final do segundo cérebro
---
# Visão geral
O segundo cérebro do Reno é a camada de conhecimento estruturado do agente. Ele não substitui CRM, nem memória persistente curta do agente. Sua função é acumular contexto curado, histórico útil, decisões e perfis que melhorem a qualidade da retomada e da condução comercial.

# Princípios de arquitetura
1. CRM é a fonte de verdade do estado atual do lead.
2. Memória persistente do agente guarda apenas fatos compactos, duráveis e de alto reaproveitamento.
3. Obsidian guarda contexto estruturado, histórico curado e conhecimento reutilizável.
4. Só registrar informação com valor futuro.
5. Registrar síntese e estrutura; evitar log bruto e dump de payload.

# Papel de cada camada
## Camada 1 — memória persistente do agente
Usada para:
- preferências do Renato;
- regras duráveis da operação;
- convenções críticas do ambiente;
- fatos estáveis que evitam correções recorrentes.

## Camada 2 — Obsidian / segundo cérebro
Usado para:
- perfil do Reno;
- decisões operacionais;
- journals de aprendizado e mudanças;
- contexto compartilhado da Fama;
- contexto de crédito imobiliário;
- perfis de brokers;
- timelines de leads;
- perfis de entidades relevantes;
- snapshots e sínteses periódicas.

## Camada 3 — CRM / sistemas operacionais
Usado para:
- lead atual;
- broker responsável;
- status comercial vivo;
- histórico de contato operacional;
- ações executadas.

# Núcleo estrutural do Reno no vault
## 1. Identidade do agente
### `_agents/reno/profile.md`
Contém:
- papel;
- escopo;
- objetivo principal;
- princípios de atendimento;
- limites operacionais.

### `_agents/reno/README.md`
Contém:
- mapa de navegação do Reno no vault;
- links para perfil, decisões, journals e contextos compartilhados.

### `_agents/reno/decisions.md`
Contém decisões duráveis, como:
- critérios de suprimir vs ignorar vs enviar;
- regra de quando puxar visita presencial;
- regra de quando aprofundar viabilidade financeira;
- heurísticas que mudem o comportamento do agente.

## 2. Diário operacional do agente
### `_agents/reno/journal/`
Registrar apenas eventos com aprendizado futuro.

Tipos de journal recomendados:
- mudança de abordagem;
- insight sobre objeção recorrente;
- teste de fluxo relevante;
- aprendizado sobre canal ou integração;
- ajuste de playbook.

Template mental do journal:
- contexto;
- o que mudou;
- por que importa;
- impacto esperado;
- links relacionados.

# Camada de conhecimento compartilhado
## 3. Contexto institucional e comercial
### `_shared/context/fama/*`
Conteúdo estável da Fama:
- posicionamento;
- história;
- produtos;
- pessoas;
- stack;
- metodologia.

## 4. Contexto de crédito imobiliário
### `_shared/context/credito-imobiliario/*`
Conteúdo que dá inteligência consultiva ao Reno:
- MCMV;
- FGTS;
- taxas;
- regulamentação;
- referências de simulação;
- contexto macro.

## 5. Contexto específico do Reno
### `_shared/context/reno/reno/*`
Conteúdo curado sobre o próprio modelo operacional do Reno:
- arquitetura do segundo cérebro;
- política de escrita;
- taxonomias;
- playbooks resumidos;
- critérios de priorização.

# Camada por entidade
## 6. Brokers
Ferramentas:
- `upsert_broker_profile`
- `append_broker_interaction`

Registrar quando houver padrão recorrente ou risco operacional.

Estrutura desejada:
- resumo do broker;
- estilo de comunicação;
- equipe;
- dificuldades recorrentes;
- pendências abertas;
- nível de atenção;
- última ação recomendada.

Objetivo:
permitir que o Reno adapte handoff, cobrança, follow-up e tom conforme o corretor real.

## 7. Leads
Ferramentas:
- `upsert_lead_timeline`
- `append_lead_interaction`

Registrar quando houver valor de retomada comercial.

Estrutura desejada:
- resumo do lead;
- interesse atual;
- objeções ativas;
- próximo passo;
- origem;
- status comercial.

Objetivo:
permitir retomada com contexto sem depender só do CRM cru ou da conversa atual.

## 8. Outras entidades
Ferramenta:
- `upsert_entity_profile`

Usar para:
- empreendimentos;
- parceiros;
- campanhas;
- squads;
- temas de operação.

Só criar quando houver benefício recorrente claro.

# Política de escrita
## Deve entrar no segundo cérebro
- decisões com impacto futuro;
- síntese de aprendizados;
- padrão recorrente de objeção;
- perfil útil de broker;
- contexto de lead que melhore retomada;
- conhecimento institucional reutilizável;
- contexto de crédito que apoie conversa consultiva.

## Não deve entrar
- dump bruto de webhook;
- log técnico completo;
- erro transitório sem aprendizado;
- conversa inteira sem curadoria;
- informação redundante já confiável no CRM;
- detalhe descartável sem valor futuro.

# Fluxo operacional recomendado
## A. Entrada de lead
1. Validar CRM.
2. Checar elegibilidade do Reno.
3. Detectar interno, teste, duplicidade ou ausência de telefone utilizável.
4. Decidir: ignorar, suprimir ou enviar.
5. Registrar a decisão no CRM.
6. Registrar no Obsidian somente se houver valor futuro.

## B. Durante a conversa
Registrar no Obsidian apenas quando surgir:
- objeção relevante recorrente;
- contexto financeiro importante;
- padrão comportamental útil;
- decisão de condução que mereça reuso;
- sinal forte para visita ou inviabilidade.

## C. Pós-avanço
Se houve:
- visita agendada;
- travamento por crédito;
- objeção persistente;
- handoff sensível ao broker;
- insight de origem/campanha;
então registrar síntese em lead timeline, broker profile ou journal.

# Hierarquia de consulta do Reno
Quando o Reno precisar agir, consultar nesta ordem lógica:
1. CRM para verdade atual.
2. Lead timeline do Obsidian para contexto curado.
3. Broker profile do Obsidian para contexto de handoff/operação.
4. Contexto compartilhado Fama/crédito para inteligência consultiva.
5. Memória persistente do agente para convenções estáveis e preferências.

# Critérios de sucesso do segundo cérebro
O segundo cérebro está funcionando quando:
- o Reno retoma casos com contexto útil rapidamente;
- a qualidade do handoff melhora;
- objeções recorrentes deixam rastro estruturado;
- decisões importantes não ficam presas em conversas antigas;
- o agente melhora sem inflar memória persistente.

# Riscos a evitar
- transformar o vault em depósito de log;
- duplicar o CRM;
- registrar contexto demais e síntese de menos;
- deixar a taxonomia frouxa;
- criar notas demais sem rotina clara de consulta.

# Regra final
Se uma informação ajuda o Reno a decidir melhor no futuro, mas não pertence ao CRM e é grande demais para a memória persistente, ela pertence ao segundo cérebro no Obsidian.
