---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Nayara Ferreira
client_id: 10966
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-04-29'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - repescagem
  - whatsapp
  - famachat
  - nao-respondeu
---
# Atendimento — Nayara Ferreira

## Resumo atual
Cliente sob responsabilidade do Reno (`broker_id=35`), em status CRM **Não Respondeu**, sem resposta real registrada após primeiro contato e repescagem step 1. Em 2026-04-30 foi enviada a repescagem **step 2**, com ângulo de evitar caminho errado antes de avançar no Union Vista: entrada, parcela e prazo de entrega precisam fazer sentido para o momento da cliente.

## Dados operacionais
- Cliente ID: 10966
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: WhatsApp disponível no CRM; JID salvo usado no envio
- Empreendimento relacionado: Union Vista (`id_empreendimento=22`), Grand Ville, Uberlândia
- Última interação relevante: 2026-04-30T17:21:39-03:00 — repescagem step 2 enviada via WhatsApp

## Contexto comercial
Cliente veio por SLA Cascata após interesse no empreendimento **Union Vista**, no bairro **Grand Ville**, em Uberlândia. O empreendimento é um lançamento com entrega prevista para **jul/2027**, apartamentos de 2 quartos, lazer de condomínio e opções registradas no CRM a partir de cerca de R$ 292 mil. Ainda não há resposta da cliente nem dados confirmados sobre objetivo de compra, renda, entrada, prazo, intenção de morar/investir ou decisão familiar.

O primeiro contato e reenvio inicial já mencionaram o Union Vista e perguntaram se a região combinava com a busca. A repescagem step 1 explorou se o imóvel fazia sentido para o momento e perguntou se a busca era para morar ou investimento. A step 2 mudou o ângulo para **viabilidade prática**, destacando entrada, parcela e prazo de entrega para criar um motivo novo de resposta.

## Diagnóstico
### Necessidade
Interesse inicial vinculado a imóvel específico, mas necessidade real ainda não confirmada.

### Momento
Cliente permanece silenciosa; não há confirmação de urgência, prazo ou etapa da jornada.

### Decisão
Sem dados sobre quem decide ou se há outras pessoas envolvidas.

### Viabilidade
Ainda não há dados de renda, entrada, financiamento ou capacidade de compra. O ângulo correto é investigar viabilidade sem prometer aprovação de crédito.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato inicial enviado
Reno enviou mensagem inicial mencionando o interesse no Union Vista/Grand Ville e atualizou o status para **Não Respondeu**. Não houve resposta real registrada.

### 2026-04-25 — Reenvio inicial para Não Respondeu
Reno reenviou abertura em duas mensagens curtas usando o JID salvo no CRM. Status preservado como **Não Respondeu**.

### 2026-04-29 — Repescagem step 1 enviada
Mensagem abriu novo motivo para resposta, usando o ângulo de imóvel específico e diagnóstico leve de intenção. Pergunta principal: se a cliente buscava para morar ou investimento.

Mensagem enviada:
```text
Oi, Nayara! Tudo bem? 🏡

Sobre o Union Vista, no Grand Ville, o mais importante agora não é só ver fotos ou valores soltos — é entender se esse tipo de apê realmente combina com o seu momento e com o caminho de compra.

Posso te ajudar a olhar isso de forma **simples e sem pressão**, pra você não perder tempo com uma opção que talvez não encaixe.

Você está buscando algo mais para morar ou pensando em investimento?
```

### 2026-04-30 — Repescagem step 2 enviada
Mensagem enviada com ângulo diferente da step 1: evitar caminho errado olhando entrada, parcela e prazo de entrega antes de avançar. Envio WhatsApp tecnicamente bem-sucedido via JID salvo do CRM e registrado pela tool `mark_reno_followup_sent`.

Mensagem enviada:
```text
Nayara, pensando no Union Vista, tem um ponto que costuma fazer diferença antes de seguir olhando unidade: **entrada, parcela e prazo de entrega precisam conversar com o seu momento**. 🔑

Como é um lançamento no Grand Ville, dá para evitar perder tempo com um caminho que parece bom no anúncio, mas depois não fecha bem na prática.

Quer que eu faça uma primeira leitura pra ver se esse tipo de compra faz sentido para você hoje?
```

## Objeções e travas
- Silêncio após primeiro contato e repescagem step 1.
- Falta de contexto sobre objetivo, timing e viabilidade financeira.
- Possível necessidade de clarear se Union Vista é oportunidade real ou apenas interesse inicial de anúncio.

## Próximo passo
Se não houver resposta, próxima repescagem elegível deve seguir para **step 3 — diagnóstico leve**, prevista para `2026-05-01T19:10:00-03:00`, evitando repetir o argumento de entrada/parcela/prazo e buscando uma informação simples de contexto.

Se a cliente responder, parar repescagem, manter a conversa em fluxo de atendimento consultivo e alterar status de **Não Respondeu** para **Em Atendimento** somente se ainda estiver exatamente nesse status.

## Observações operacionais
- Documento mantido no caminho determinístico oficial `_agents/reno/atendimentos/10966-nayara-ferreira.md`.
- CRM/FamaChat permanece como fonte de verdade operacional.
- Repescagem step 2 enviada em 2026-04-30T17:21:39-03:00.
- Estado registrado no CRM: `step=2`, `enabled=true`, `last_sent_at=2026-04-30T17:21:39-03:00`, `next_run_at=2026-05-01T19:10:00-03:00`, `stopped_reason=null`.
- Status do cliente não foi alterado durante a repescagem, conforme política do fluxo.
