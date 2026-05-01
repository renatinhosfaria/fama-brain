---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Sonia Silva
client_id: 10949
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-04-30'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
---
# Atendimento — Sonia Silva

## Resumo atual
Cliente do Reno (`broker_id=35`) em `Não Respondeu`, originada de Facebook Ads/lead automático, com interesse associado ao empreendimento Union Vista na região do Grand Ville. Primeiro contato e repescagens steps 1, 2 e 3 foram enviados sem resposta real registrada até esta atualização. Em 2026-05-01 foi enviada repescagem step 3 com diagnóstico leve sobre prazo/momento de mudança, usando o contexto de lançamento com entrega prevista para 2027.

## Dados operacionais
- Cliente ID: 10949
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: WhatsApp disponível no CRM; envio realizado pelo JID salvo
- Última interação relevante: 2026-05-01T17:25:08-03:00 — repescagem step 3 enviada

## Contexto comercial
Interesse inicial vinculado ao Union Vista, empreendimento da HLTS Construtora na região do Grand Ville/Zona Leste de Uberlândia. O empreendimento está em lançamento, com entrega prevista para Jul/2027, unidades de 2 quartos e valores a partir de aproximadamente R$292 mil. Ainda não há resposta da cliente, então não há confirmação de finalidade de compra, urgência, região alternativa, orçamento ou preferência de financiamento.

## Diagnóstico
### Necessidade
Indefinida por ausência de resposta real. Contexto sugere busca por imóvel específico, mas ainda sem confirmação se o objetivo é morar, investir ou apenas avaliar oportunidade.

### Momento
Cliente silenciosa após primeiro contato e repescagens anteriores. Step 3 buscou abrir diagnóstico por timing: mudança imediata versus possibilidade de esperar um lançamento ficar pronto.

### Decisão
Sem dados sobre decisores ou influência familiar.

### Viabilidade
Sem dados de renda, entrada ou financiamento. Repescagem step 2 já abordou encaixe financeiro; step 3 mudou o ângulo para prazo de entrega e momento de uso do imóvel, evitando repetir o mesmo argumento.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato Reno
Mensagem inicial enviada via WhatsApp mencionando interesse no Union Vista, região do Grand Ville. Status foi atualizado de `Sem Atendimento` para `Não Respondeu` no CRM.

### 2026-04-29 — Repescagem step 1
Mensagem enviada com foco em organizar a busca em torno do Union Vista/Grand Ville e entender se a cliente buscava morar ou investir. Sem resposta real registrada até a execução seguinte.

### 2026-04-30 — Repescagem step 2 enviada
Fluxo: repescagem  
Step enviado: 2  
Intenção do step: evitar caminho errado e mostrar valor prático de analisar encaixe do imóvel antes de avançar.  
Ângulo comercial usado: imóvel específico + viabilidade/financiamento.  
Data/hora de envio: 2026-04-30T09:25:02-03:00  
Mensagem enviada:

```text
Oi, Sonia! Tudo bem? 🔑

Sobre o Union Vista, na região do Grand Ville, um cuidado importante é não olhar só o imóvel em si, mas entender se ele encaixa no seu momento de compra.

Às vezes uma opção parece boa, mas entrada, parcela e financiamento precisam fazer sentido para evitar perda de tempo.

Quer que eu te ajude a fazer essa primeira leitura de forma **simples e realista**?
```

Próximo `next_run_at`: 2026-05-01T14:20:00-03:00.

### 2026-05-01 — Repescagem step 3 enviada
Fluxo: repescagem  
Step enviado: 3  
Intenção do step: diagnóstico leve para obter uma primeira informação objetiva.  
Comparação de abordagem: diferente do step 2, que falou de encaixe financeiro/entrada/parcela, esta mensagem usa prazo de entrega do lançamento, pergunta sobre urgência de mudança e destaca comparação de caminho quando o prazo não combina.  
Ângulo comercial usado: imóvel específico + momento/prazo de entrega.  
Data/hora de envio: 2026-05-01T17:25:08-03:00  
Mensagem enviada:

```text
Sonia, tudo bem? 📍

O Union Vista é um lançamento com entrega prevista para 2027, então ele pode fazer bastante sentido para quem consegue se planejar com calma.

Mas se a sua necessidade for mais imediata, talvez seja melhor comparar outro caminho antes de avançar.

Você pensa em se mudar logo ou pode esperar um lançamento ficar pronto?
```

Próximo `next_run_at`: 2026-05-02T19:10:00-03:00.

## Objeções e travas
- Trava atual: ausência de resposta real após os contatos anteriores.
- Não há objeção comercial declarada pela cliente.

## Próximo passo
Se a cliente continuar em `Não Respondeu` e sem resposta real até 2026-05-02T19:10:00-03:00, avaliar repescagem step 4 pela fila oficial, com convite consultivo mais direto e sem repetir o ângulo de prazo/viabilidade. Se houver resposta real, parar repescagem, mover para atendimento normal do Reno e conduzir diagnóstico consultivo.

## Observações operacionais
- Estado da repescagem atualizado no CRM pela tool específica `mark_reno_followup_sent`.
- Status CRM preservado como `Não Respondeu`, conforme política da repescagem.
- Há documentos legados/drift relacionados a este cliente em `_agents/reno/atendimentos/sonia-silva.md` e `_agents/reno/clientes/10949-sonia-silva.md`; este arquivo é o caminho determinístico oficial por `client_id`.
