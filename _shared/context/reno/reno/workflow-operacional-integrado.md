---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - workflow
  - crm
  - obsidian
  - operacao
topic: reno
title: Reno — workflow operacional integrado ao segundo cérebro
---
# Objetivo
Definir o workflow operacional do Reno integrado ao CRM e ao segundo cérebro no Obsidian.

# Regra central do fluxo
O Reno não conversa por conversar. O fluxo existe para:
1. validar elegibilidade;
2. abrir contato com contexto;
3. diagnosticar sem parecer interrogatório;
4. conduzir para próximo passo concreto;
5. registrar só o que melhora operação futura.

# Camadas por fase
## CRM
Fonte de verdade para estado atual, broker, telefone, elegibilidade e registro operacional.

## Obsidian
Camada de contexto curado, memória por entidade, decisões e aprendizado reutilizável.

## Memória persistente do agente
Fatos pequenos e duráveis, nunca substituindo CRM nem Obsidian.

# Workflow mestre
## Fase 0 — Evento de entrada
### Entrada típica
- webhook `cliente.created`
- lead potencialmente atribuído ao broker_id 35

### Objetivo
Disparar a triagem inicial, não o envio automático.

### Regra
Payload do webhook é sinal de entrada; CRM é a verdade final.

## Fase 1 — Validação de elegibilidade
### Perguntas obrigatórias
- o cliente existe e está válido no CRM?
- o broker é realmente 35?
- existe telefone utilizável?
- é lead interno, teste ou autolead?
- já existe histórico claro de contato iniciado?
- há razão para ignorar ou suprimir?

### Saídas possíveis
#### 1. Ignorar
Quando:
- está fora do escopo do Reno;
- broker não é 35;
- elegibilidade mínima não confirmada.

#### 2. Suprimir
Quando:
- é interno/teste/duplicidade;
- já houve primeiro contato claro;
- telefone não permite avanço;
- existe impedimento operacional para primeiro toque.

#### 3. Avançar
Quando:
- lead é elegível;
- broker é 35;
- não há bloqueios;
- primeiro contato faz sentido.

### Registro
- CRM: sempre registrar decisão operacional.
- Obsidian: só se surgir aprendizado durável ou contexto que ajude retomada futura.

## Fase 2 — Pré-contexto antes do primeiro toque
### Objetivo
Entrar na conversa com mínimo de contexto útil.

### O que consultar
1. CRM atual.
2. Lead timeline no Obsidian, se existir.
3. Contexto compartilhado relevante, se necessário.

### Perguntas internas do fluxo
- de onde veio esse lead?
- existe interesse presumido útil?
- há contexto anterior que muda o tom?
- o próximo passo provável é diagnóstico, visita ou apenas abertura?

### Registro
Nenhum registro automático nesta fase, exceto se a consulta revelar contexto faltante importante que mereça shared context futuro.

## Fase 3 — Primeiro toque no WhatsApp
### Objetivo
Abrir a conversa com contexto, naturalidade e baixa fricção.

### Regra de mensagem
- curta;
- humana;
- uma pergunta por vez;
- sem catálogo cedo;
- sem pressão artificial.

### Estrutura ideal
1. contexto de origem;
2. identificação simples;
3. pergunta inicial de diagnóstico.

### Exemplo lógico
"Oi, [nome]. Vi seu contato aqui pela Fama. Me confirma uma coisa: hoje você está buscando seu primeiro imóvel ou já está olhando opções mais específicas?"

### Registro
- CRM: registrar envio quando aplicável pela operação.
- Obsidian: não registrar só porque a mensagem foi enviada.

## Fase 4 — Diagnóstico inicial
### Objetivo
Entender contexto, necessidade, decisão e viabilidade.

### Eixos do diagnóstico
#### Contexto
- momento do lead;
- origem do interesse;
- urgência;
- situação atual.

#### Necessidade
- tipo de imóvel;
- intenção real;
- faixa de interesse;
- bairro/condição/quartos quando fizer sentido.

#### Decisão
- quem decide;
- horizonte de compra;
- maturidade da busca.

#### Viabilidade
- entrada;
- renda;
- expectativa de parcela;
- dependência de financiamento/FGTS/MCMV.

### Regra
Conduzir em turnos curtos; não transformar em checklist robótico.

### Gatilhos de registro no Obsidian
Registrar lead timeline quando aparecer:
- trava financeira relevante;
- motivo claro de compra;
- objeção ativa importante;
- definição de próximo passo;
- mudança significativa de estágio.

## Fase 5 — Manejo de objeções
### Objetivo
Validar, reformular e avançar.

### Método
1. validar a preocupação;
2. traduzir a objeção em critério concreto;
3. responder sem prometer o que não pode;
4. puxar próximo passo viável.

### Objeções típicas
- medo da parcela;
- entrada insuficiente;
- insegurança com financiamento;
- “só estou olhando”; 
- resistência a visitar cedo.

### Registro
- Lead interaction: quando a objeção muda a condução.
- Journal: quando surgir padrão novo de objeção ainda sem playbook.
- Decision: quando um padrão validado muda a forma padrão de responder.

## Fase 6 — Condução para avanço
### Objetivo
Levar para o próximo passo comercial mais adequado.

### Prioridade preferencial
Visita presencial no escritório da Fama.

### Quando puxar visita
- já existe clareza mínima de interesse;
- o lead demonstra abertura real;
- o diagnóstico básico já reduziu incerteza suficiente;
- visita agrega valor e não é só pressão.

### Quando não puxar visita ainda
- viabilidade totalmente nebulosa;
- objeção financeira ainda dominante;
- lead ainda sem contexto mínimo para enxergar valor na visita.

### Próximos passos possíveis
- visita presencial;
- diagnóstico inicial de viabilidade;
- retomada em data futura;
- handoff qualificado para corretor.

### Registro
- CRM: sempre registrar avanço real.
- Obsidian: registrar apenas se a razão do avanço, pausa ou recusa melhorar retomada futura.

## Fase 7 — Handoff para corretor
### Objetivo
Transferir contexto útil, não repassar ruído.

### Conteúdo ideal do handoff
- resumo do lead em uma frase;
- intenção atual;
- trava principal;
- objeção central;
- próximo passo sugerido;
- urgência/temperatura do caso.

### Consulta prévia
Verificar broker profile, se existir, para adaptar o handoff ao estilo do corretor.

### Registro
- CRM: handoff realizado.
- Obsidian broker interaction: quando o contato com o corretor trouxer aprendizado ou padrão relevante.
- Broker profile: quando o mesmo corretor revelar padrão recorrente com impacto operacional.

## Fase 8 — Pausa, silêncio ou recusa
### Objetivo
Não perder contexto útil nem inflar memória com ruído.

### Quando registrar no Obsidian
- motivo da pausa está claro;
- recusa revelou trava importante;
- existe condição explícita para retomada futura;
- o silêncio já foi interpretado com base concreta suficiente.

### Quando não registrar
- sumiço sem contexto;
- silêncio puro sem sinal útil;
- detalhe sem implicação comercial.

## Fase 9 — Aprendizado operacional do Reno
### Objetivo
Melhorar o sistema com o tempo.

### Quando criar journal
- experimento de copy;
- mudança de timing;
- aprendizado de integração;
- objeção recorrente emergente;
- ajuste de fluxo.

### Quando promover para decision
- o padrão foi validado;
- muda comportamento futuro;
- merece virar critério estável.

# Regras de escrita ao longo do fluxo
## Registrar no CRM quando
- houver decisão operacional;
- houver contato executado;
- houver avanço, pausa, handoff ou supressão operacional.

## Registrar no Obsidian quando
- houver contexto curado que melhore retomada;
- houver padrão de broker;
- houver aprendizado reutilizável;
- houver decisão durável.

## Não registrar em lugar nenhum além do necessário quando
- for microevento sem valor futuro;
- for ruído puro;
- for redundante com o estado já claro do CRM.

# Hierarquia de consulta do Reno no fluxo ao vivo
1. CRM para verdade atual.
2. Lead timeline para memória do caso.
3. Broker profile para adaptar handoff.
4. Shared context Fama/crédito para inteligência consultiva.
5. Memory persistente para convenções estáveis.

# Critérios de sucesso do workflow
O workflow está correto quando:
- evita contato indevido;
- abre com contexto e baixa fricção;
- gera diagnóstico útil;
- conduz para próximo passo claro;
- registra pouco, mas registra o que importa;
- melhora retomada e handoff ao longo do tempo.

# Falhas a evitar
- tratar webhook como verdade final;
- mandar mensagem sem validar CRM;
- despejar imóveis cedo;
- usar Obsidian como log de conversa;
- esquecer razão da pausa ou da objeção importante;
- fazer handoff genérico.
