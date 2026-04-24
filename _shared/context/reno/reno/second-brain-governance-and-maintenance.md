---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - obsidian
  - governanca
  - manutencao
  - operacao
  - second-brain
topic: reno
title: Reno — governança e manutenção do segundo cérebro
---
# Objetivo
Transformar a manutenção do segundo cérebro do Reno em rotina operacional leve, explícita e auditável, para evitar inflação de ruído e manter o vault útil para retomada, decisão, handoff e aprendizado.

# Princípio central
O segundo cérebro só continua valendo se permanecer:
- menor que um arquivo morto;
- mais útil que um log bruto;
- disciplinado o suficiente para consolidar aprendizado;
- seletivo o suficiente para não competir com o CRM.

# Escopo desta camada
Esta nota governa quatro movimentos recorrentes:
1. revisão semanal;
2. poda;
3. promoção de journal para decision;
4. consolidação de contexto compartilhado.

# Regra-mãe de manutenção
Toda manutenção deve responder a uma pergunta simples:
"Isso melhora a qualidade futura de ação do Reno?"

Se não melhora ação futura, não manter por inércia.

# Cadência operacional
## Revisão leve contínua
Acontece ao longo da operação quando o Reno percebe:
- timeline inflando;
- journal repetitivo;
- profile sem utilidade;
- contexto compartilhado claramente faltando.

## Revisão semanal formal
Fazer uma revisão dedicada 1 vez por semana.

### Objetivo da revisão semanal
- reduzir ruído;
- consolidar padrões;
- transformar aprendizado maduro em critério;
- manter o vault navegável.

### Janela sugerida
Uma sessão curta, orientada por checklist, sem virar ritual pesado.

# Checklist de revisão semanal
## 1. Journals
Perguntar:
- há journals repetindo o mesmo aprendizado?
- há journals que já perderam valor por serem só hipótese antiga?
- há journal maduro que já deveria virar decision?
- há journal que na verdade deveria virar shared context?

## 2. Lead timelines
Perguntar:
- há lead timeline com detalhe demais e pouca síntese?
- há objeção relevante não nomeada com clareza?
- há próximo passo desatualizado?
- há resumo ruim que prejudica retomada?

## 3. Broker profiles
Perguntar:
- o perfil ainda muda o handoff na prática?
- existem pendências ou dificuldades recorrentes desatualizadas?
- o texto está factual ou virou opinião solta?
- o perfil ficou inflado sem impacto operacional?

## 4. Shared context
Perguntar:
- há temas recorrentes ainda sem contexto consolidado?
- existem notas duplicadas sobre o mesmo assunto?
- falta uma síntese mais estável para temas repetidos?
- há contexto compartilhado já obsoleto?

## 5. Estrutura geral
Perguntar:
- o vault está pequeno o bastante para continuar útil?
- existe nota que ninguém consultaria de verdade?
- existe conhecimento importante preso em journal e não promovido?
- existe material redundante com o CRM?

# Poda
## Objetivo
Remover peso morto sem apagar contexto útil.

## O que podar
- síntese redundante;
- journal fraco sem implicação futura;
- formulação prolixa que pode virar uma linha clara;
- contexto compartilhado duplicado;
- detalhe transitório que depende de reler a conversa original.

## O que não podar
- objeção que muda retomada;
- trava operacional recorrente;
- critério consolidado;
- aprendizado validado;
- contexto que melhora handoff.

## Regra de poda
Podar não é apagar memória importante; é aumentar densidade de valor.

## Sinais de que a poda é necessária
- a mesma ideia aparece em múltiplos journals;
- uma timeline parece transcrição disfarçada;
- um profile descreve nuances sem impacto de decisão;
- o shared context começa a repetir playbook ou policy.

# Promoção de journal para decision
## Quando promover
Promover um journal para decision quando as três condições abaixo forem verdadeiras:
1. o aprendizado vale além de um caso;
2. ele muda comportamento futuro do Reno;
3. ele deve permanecer válido até revisão explícita.

## Sinais práticos de maturidade
- o mesmo padrão apareceu em múltiplos casos;
- a resposta operacional deixou de ser experimental;
- já existe confiança suficiente para virar critério padrão;
- o custo de não consolidar já começou a gerar inconsistência.

## Quando não promover
Não promover quando:
- ainda é hipótese fraca;
- depende demais de um caso isolado;
- ainda falta teste;
- a formulação está emocional ou ambígua.

## Estrutura mínima da decision
- mudança de critério;
- racional;
- impacto esperado;
- condição de revisão futura, se houver.

## Observação técnica atual
Enquanto `_agents/reno/decisions.md` continuar indisponível para append, a promoção deve ser tratada como etapa lógica definida, mas dependente de fechamento técnico do arquivo append-only.

# Consolidação de contexto
## Objetivo
Evitar que conhecimento útil fique espalhado entre journals, profiles e notas específicas sem virar inteligência reutilizável.

## Quando consolidar
- um tema começa a aparecer em vários casos;
- uma objeção recorrente precisa virar referência consultiva;
- um padrão de condução já pode ser descrito de forma mais estável;
- múltiplas notas pequenas apontam para uma mesma tese operacional.

## Resultados possíveis da consolidação
- criar novo shared context;
- atualizar shared context existente;
- simplificar journals antigos em torno de uma síntese mais forte;
- registrar decisão, se o tema já virou critério estável.

## Regra de consolidação
Consolidar quando a síntese fica melhor do que a soma dos fragmentos.

# Indicadores de saúde do segundo cérebro
O sistema está saudável quando:
- journals geram decisões ou contexto com o tempo;
- lead timelines ajudam retomada em segundos;
- broker profiles alteram handoff de forma concreta;
- shared contexts reduzem repetição de raciocínio;
- o volume total continua controlado.

# Sinais de degradação
O sistema está degradando quando:
- cresce mais rápido do que é consultado;
- vira arquivo de observações soltas;
- duplica CRM;
- acumula hipótese velha sem consolidação;
- exige muito tempo para pouca melhoria operacional.

# Protocolo semanal enxuto
## Passo 1
Listar journals recentes e identificar repetição, maturidade e descarte.

## Passo 2
Revisar timelines e perfis com foco em síntese e utilidade real.

## Passo 3
Promover aprendizados maduros para decision ou shared context.

## Passo 4
Podar redundâncias e atualizar notas desatualizadas.

## Passo 5
Encerrar a revisão com uma pergunta:
"O Reno ficou mais consistente após esta manutenção?"

# Regra final
Governança do segundo cérebro não é burocracia documental. É higiene cognitiva operacional.
Se a manutenção não melhora decisão futura, ela está pesada demais.
Se a falta de manutenção piora retomada e handoff, ela está fraca demais.
