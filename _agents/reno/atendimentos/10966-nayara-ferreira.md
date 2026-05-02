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
updated: '2026-05-02'
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
Cliente sob responsabilidade do Reno (`broker_id=35`), em status CRM **Não Respondeu**, sem resposta real registrada após primeiro contato e repescagens anteriores. Em 2026-05-02 foi enviada a repescagem **step 3**, com ângulo de diagnóstico leve sobre prazo/momento: confirmar se o Union Vista faz sentido por ser lançamento com programação até 2027 ou se a cliente precisa de algo mais imediato.

## Dados operacionais
- Cliente ID: 10966
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Cliente original da cascata: 10885
- Telefone/WhatsApp: WhatsApp disponível no CRM; JID salvo usado no envio
- Empreendimento relacionado: Union Vista (`id_empreendimento=22`), Grand Ville, Uberlândia
- Última interação relevante: 2026-05-02T11:16:45.998-03:00 — repescagem step 3 enviada via WhatsApp

## Contexto comercial
Cliente veio por SLA Cascata após interesse original via Facebook Ads no empreendimento **Union Vista**, no bairro **Grand Ville**, em Uberlândia. O empreendimento é um lançamento com entrega prevista para **jul/2027**, apartamentos de 2 quartos, lazer de condomínio e opções registradas no CRM a partir de cerca de R$ 292 mil. No cliente original, havia sinal de que ela **começou a procurar agora** e compraria **sozinha**, mas ainda não há resposta direta da cliente nem dados confirmados sobre objetivo de compra, renda, entrada, prazo, intenção de morar/investir ou decisão familiar.

O primeiro contato e reenvio inicial mencionaram o Union Vista e perguntaram se a região combinava com a busca. A repescagem step 1 explorou se o imóvel fazia sentido para o momento e perguntou se a busca era para morar ou investimento. A step 2 mudou o ângulo para **viabilidade prática**, destacando entrada, parcela e prazo de entrega. A step 3 mudou novamente a abordagem para **diagnóstico de prazo**, usando o fato de ser lançamento para perguntar se ela consegue se programar até 2027 ou precisa resolver mais rápido.

## Diagnóstico
### Necessidade
Interesse inicial vinculado a imóvel específico, mas necessidade real ainda não confirmada. A dúvida atual é se o Union Vista é oportunidade compatível com o timing da cliente.

### Momento
Cliente permanece silenciosa; o histórico original sugere início de busca, mas ainda não há confirmação se ela quer se programar com calma ou precisa mudar em prazo curto.

### Decisão
Sem dados confirmados sobre quem decide. Registro original sugere compra sozinha, ainda sem validação em conversa direta.

### Viabilidade
Ainda não há dados de renda, entrada, financiamento ou capacidade de compra. O ângulo correto é investigar viabilidade sem prometer aprovação de crédito e sem insistir em visita antes da primeira resposta.

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

### 2026-05-02 — Repescagem step 3 enviada
Mensagem enviada com nova abordagem: diagnóstico leve de prazo/momento, sem repetir a pergunta de morar/investir da step 1 nem o convite de viabilidade da step 2. O objetivo foi gerar microresposta simples sobre aceitar um lançamento para programar até 2027 versus precisar de imóvel mais imediato.

Mensagem enviada:
```text
Nayara, só pra eu não te mandar coisa fora do seu momento 📍

Como o Union Vista é um lançamento no Grand Ville, ele costuma fazer mais sentido para quem consegue **se programar com calma** até a entrega, em vez de precisar mudar logo.

Você está considerando um apê para se organizar até 2027 ou procura algo para resolver mais rápido?
```

## Objeções e travas
- Silêncio após primeiro contato, reenvio inicial e repescagens steps 1 e 2.
- Falta de contexto confirmado sobre objetivo, timing e viabilidade financeira.
- Possível necessidade de clarear se Union Vista é oportunidade real ou apenas interesse inicial de anúncio.

## Próximo passo
Se não houver resposta, próxima repescagem elegível deve seguir para **step 4 — convite consultivo direto**, prevista para `2026-05-03T09:10:00-03:00`, evitando repetir a pergunta de prazo da step 3. A próxima abordagem deve ser mais direta sobre a Fama organizar compra/financiamento/opções sem pressão e sem promessa de crédito.

Se a cliente responder, parar repescagem, manter a conversa em fluxo de atendimento consultivo e alterar status de **Não Respondeu** para **Em Atendimento** somente se ainda estiver exatamente nesse status.

## Observações operacionais
- Documento mantido no caminho determinístico oficial `_agents/reno/atendimentos/10966-nayara-ferreira.md`.
- CRM/FamaChat permanece como fonte de verdade operacional.
- Repescagem step 3 enviada em 2026-05-02T11:16:45.998-03:00 para o JID salvo no CRM.
- Estado verificado no CRM após `mark_reno_followup_sent`: `step=3`, `enabled=true`, `last_sent_at=2026-05-02T11:16:45.998-03:00`, `next_run_at=2026-05-03T09:10:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`.
- Status do cliente não foi alterado durante a repescagem, conforme política do fluxo para steps 1 a 4.
