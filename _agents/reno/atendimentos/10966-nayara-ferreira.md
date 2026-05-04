---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Nayara Ferreira
client_id: 10966
broker_id: 35
status_crm: Arquivado
source: SLA Cascata
created: '2026-04-29'
updated: '2026-05-04'
tags:
  - reno
  - atendimento
  - repescagem
  - whatsapp
  - famachat
  - arquivado
  - max-steps
---
# Atendimento — Nayara Ferreira

## Resumo atual
Cliente sob responsabilidade do Reno (`broker_id=35`) teve a régua de repescagem concluída em **2026-05-04**. A repescagem **step 5** foi enviada com encerramento elegante, sem repetir convite de agenda/análise da step 4. Após o envio, o ramo `reno_followup.repescagem` foi encerrado com `step=5` e `stopped_reason=max_steps`; como o cliente ainda estava exatamente em **Não Respondeu**, o status foi atualizado defensivamente para **Arquivado**.

## Dados operacionais
- Cliente ID: 10966
- Broker ID: 35
- Status CRM: Arquivado
- Origem: SLA Cascata
- Cliente original da cascata: 10885
- Telefone/WhatsApp: WhatsApp disponível no CRM; JID salvo usado no envio
- Empreendimento relacionado: Union Vista (`id_empreendimento=22`), Grand Ville, Uberlândia
- Última interação relevante: 2026-05-04T14:27:26.316-03:00 — repescagem step 5 enviada via WhatsApp e régua encerrada

## Contexto comercial
Cliente veio por SLA Cascata após interesse original via Facebook Ads no empreendimento **Union Vista**, no bairro **Grand Ville**, em Uberlândia. O empreendimento é um lançamento com entrega prevista para **jul/2027**, apartamentos de 2 quartos, lazer de condomínio e opções registradas no CRM a partir de cerca de R$ 292 mil. No cliente original, havia sinal de que ela **começou a procurar agora** e compraria **sozinha**, mas não houve resposta direta da cliente nem confirmação sobre objetivo de compra, renda, entrada, prazo, intenção de morar/investir ou decisão familiar.

O primeiro contato e reenvio inicial mencionaram o Union Vista e perguntaram se a região combinava com a busca. A repescagem step 1 explorou se o imóvel fazia sentido para o momento e perguntou se a busca era para morar ou investimento. A step 2 mudou o ângulo para **viabilidade prática**, destacando entrada, parcela e prazo de entrega. A step 3 mudou novamente para **diagnóstico de prazo**, perguntando se ela conseguiria se programar até 2027 ou se precisava resolver mais rápido. A step 4 avançou para **convite consultivo direto**, propondo organizar o caminho de compra, comparar com alternativas de entrega mais rápida e olhar financiamento com pé no chão. A step 5 encerrou sem insistir em agenda, reconhecendo que a decisão pode depender de comparação por prazo, condição e necessidade de entrega.

## Diagnóstico
### Necessidade
Interesse inicial vinculado ao Union Vista, mas necessidade real permaneceu não confirmada. A hipótese comercial era avaliar se um lançamento no Grand Ville faria sentido ou se outro caminho de compra seria mais adequado.

### Momento
Cliente permaneceu silenciosa durante todo o ciclo do Reno. O histórico original sugeria início de busca; sem resposta, não foi possível confirmar urgência, prazo de mudança ou abertura para lançamento com entrega futura.

### Decisão
Sem dados confirmados sobre quem decide. Registro original sugeria compra sozinha, ainda sem validação em conversa direta.

### Viabilidade
Não houve dados de renda, entrada, financiamento ou capacidade de compra. Nenhuma promessa de crédito foi feita; as mensagens mantiveram foco em leitura consultiva e comparação de caminhos.

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

### 2026-05-03 — Repescagem step 4 enviada
Mensagem enviada com abordagem substancialmente diferente da step 3: convite consultivo direto, sem repetir a pergunta de prazo. O ângulo foi parar de enviar anúncio solto e propor organização do caminho de compra, comparando o Union Vista com alternativas e olhando financiamento de forma objetiva. Por ser domingo, o CTA levou a análise/possível visita para segunda-feira.

Mensagem enviada:
```text
Nayara, vou ser bem direto por aqui 🔑

Se o Union Vista chamou sua atenção, o próximo passo mais útil não é eu te mandar mais anúncio. É organizar **qual caminho de compra faz sentido**: manter o lançamento como opção, comparar com algo de entrega mais rápida e olhar o financiamento com pé no chão.

Amanhã, na segunda, posso te receber na Fama para fazer essa análise inicial e ver se vale seguir com o Union Vista ou com outro caminho.

Você toparia essa análise comigo na segunda?
```

### 2026-05-04 — Repescagem step 5 enviada e régua encerrada
Mensagem final enviada com encerramento elegante. A abordagem mudou em relação ao step 4: não repetiu convite de visita/análise, pausou a insistência e deixou porta aberta para retomada futura, preservando o contexto do Union Vista como lançamento que precisa ser comparado por prazo, condição e entrega.

Mensagem enviada:
```text
Nayara, vou pausar meu contato por aqui pra respeitar seu momento 🏡

O Union Vista pode fazer sentido para quem está comparando um lançamento com calma, mas essa decisão depende muito de prazo, condição de compra e se você prefere esperar a entrega ou buscar algo mais imediato.

Se em algum momento quiser retomar, eu te ajudo a comparar isso de forma **clara e sem pressa**.

Posso deixar em aberto e você me chama quando fizer sentido?
```

Após o envio, o estado da repescagem foi corrigido para finalização: `step=5`, `enabled=false`, `next_run_at=null`, `stopped_reason=max_steps`. Em seguida, o status foi atualizado para **Arquivado** com condição defensiva no CRM, porque o cliente ainda estava exatamente em `Não Respondeu`.

## Objeções e travas
- Silêncio após primeiro contato, reenvio inicial e repescagens steps 1 a 5.
- Falta de contexto confirmado sobre objetivo, timing e viabilidade financeira.
- Possível interesse apenas inicial de anúncio, sem avanço para diagnóstico.

## Próximo passo
Sem nova ação automática de repescagem. Se a cliente responder futuramente, reabrir atendimento no fluxo consultivo normal do Reno, avaliar mudança de status conforme regra operacional vigente e retomar a conversa a partir do contexto do Union Vista/Grand Ville, comparando prazo de entrega, condição de compra e alternativas quando fizer sentido.

## Observações operacionais
- Documento mantido no caminho determinístico oficial `_agents/reno/atendimentos/10966-nayara-ferreira.md`.
- CRM/FamaChat permanece como fonte de verdade operacional.
- Envio do step 5 realizado pelo fallback excepcional do bridge local de WhatsApp, pois `send_message` não estava exposto no runtime do cron; bridge local estava saudável e conectado.
- `mark_reno_followup_sent` registrou `step=5`, mas manteve `enabled=true`, `next_run_at` preenchido e `stopped_reason=null`. O estado final foi corrigido com `update_reno_followup_state` antes do arquivamento defensivo.
- A correção de estado compactou a branch final de `repescagem`; a mensagem final fica preservada na nota CRM automática e neste documento curado.
- Nota CRM de arquivamento registrada em 2026-05-04 informando conclusão da régua de 5 repescagens sem resposta real e arquivamento automático.
