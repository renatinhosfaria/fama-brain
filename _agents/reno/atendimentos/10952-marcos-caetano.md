---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Marcos Caetano
client_id: 10952
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-04-30'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
---
# Atendimento — Marcos Caetano

## Resumo atual
Cliente do Reno em `broker_id=35`, status operacional `Não Respondeu`, sem resposta real registrada após contatos iniciais e repescagens. O atendimento segue em repescagem ativa. Repescagem step 4 enviada em 2026-05-02 com convite consultivo direto para organizar caminho de compra e abrir possibilidade de análise/visita na Fama na segunda-feira.

## Dados operacionais
- Cliente ID: 10952
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Cliente original da cascata: 10884, usado apenas como contexto consultivo; a entidade operacional deste atendimento é o cliente 10952.
- Telefone/WhatsApp: disponível no CRM/FamaChat; envios realizados pelo JID salvo no CRM.
- Última interação relevante: repescagem step 4 enviada em 2026-05-02T19:33:32-03:00.

## Contexto comercial
O contexto operacional indica interesse relacionado a empreendimentos da linha Union em Uberlândia, especialmente Union Vista no Grand Ville e Union Vereda no Jaraguá. O Union Vista tem entrega prevista para Jul/2027; o Union Vereda tem entrega prevista para Dez/2028. No cliente original há sinal de lead automático do Facebook Ads, reentrada posterior com empreendimento 161 e informações de formulário: já olhou alguns imóveis e vai comprar junto com alguém. Como não houve resposta real do cliente neste atendimento Reno, o contexto comercial ainda é limitado e deve ser usado com cautela.

## Diagnóstico
### Necessidade
Ainda não confirmada. Sinal inicial aponta busca por apartamento/empreendimento específico da linha Union.

### Momento
Cliente silencioso após primeiro contato, reenvio inicial e repescagens steps 1 a 4. Momento de compra ainda não diagnosticado.

### Decisão
Sem confirmação direta. O formulário do cliente original sugere compra junto com alguém, mas ainda não houve resposta do cliente no atendimento Reno para validar decisores.

### Viabilidade
Sem dados confirmados de renda, entrada, financiamento ou forma de pagamento. Não prometer aprovação de crédito; conduzir para análise consultiva de caminho de compra quando houver resposta.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato inicial/backlog enviado
Reno enviou mensagem inicial contextual ao interesse em empreendimento/região. Status operacional foi preservado/atualizado para `Não Respondeu` conforme CRM.

### 2026-04-25 — Reenvio inicial para cliente em Não Respondeu
Reno reenviou abordagem inicial mencionando Union Vista e região do Grand Ville. Cliente permaneceu sem resposta.

### 2026-04-29 — Repescagem step 1 enviada
Ângulo usado: imóvel específico / comparação de região e encaixe de compra. A mensagem tentou criar novo motivo para resposta, diferenciando foco no Grand Ville de comparação com opções parecidas em Uberlândia.

Mensagem enviada:
```text
Oi, Marcos! Tudo bem? 🏡

Vi que sua busca passou pelo Union Vista, no Grand Ville, e também tem opção da linha Union em outra região. Nessa hora, olhar só o empreendimento pode confundir, porque região, prazo de entrega e forma de pagamento precisam encaixar no seu momento.

Posso te ajudar a organizar isso de um jeito **simples e sem pressão**: você prefere focar no Grand Ville ou quer comparar com opções parecidas em Uberlândia?
```

### 2026-04-30 — Repescagem step 2 enviada
Fluxo: repescagem.  
Step enviado: 2.  
Intenção do step: evitar caminho errado com opções que não encaixam em região, prazo ou forma de pagamento.  
Ângulo comercial usado: imóvel específico com reforço consultivo de viabilidade/encaixe.

Mensagem enviada:
```text
Oi, Marcos! Tudo bem? 🔑

Quando a busca passa por empreendimentos como o Union Vista, vale cuidar para não escolher só pela aparência do imóvel. Região, prazo e forma de pagamento precisam encaixar no seu momento, senão a procura acaba virando perda de tempo.

Posso fazer uma primeira leitura **bem simples** com você para ver qual caminho faz mais sentido agora?
```

Registro operacional: envio confirmado via WhatsApp e registrado no CRM pela tool específica `mark_reno_followup_sent`, sem SQL manual e sem alteração de status.

### 2026-05-01 — Repescagem step 3 enviada
Fluxo: repescagem.  
Step enviado: 3.  
Intenção do step: diagnóstico leve para gerar primeira resposta objetiva.  
Ângulo comercial usado: objetivo da compra, diferenciando morar versus investir, sem repetir o argumento anterior de encaixe/viabilidade.

Mensagem enviada:
```text
Marcos, tudo bem? 🏡

Uma coisa que muda bastante a indicação nesses empreendimentos da linha Union é o objetivo da compra. Para morar, pesa mais rotina e localização; para investir, entram prazo de entrega, liquidez e potencial de valorização.

Pra eu não te passar sugestão no escuro: você está olhando mais para **morar** ou para **investir**?
```

Registro operacional: envio confirmado via WhatsApp para o JID salvo no CRM e registrado no CRM pela tool específica `mark_reno_followup_sent`, sem SQL manual e sem alteração de status.

### 2026-05-02 — Repescagem step 4 enviada
Fluxo: repescagem.  
Step enviado: 4.  
Intenção do step: convite consultivo direto, com CTA de fim de semana direcionando para análise/visita na Fama na segunda-feira.  
Ângulo comercial usado: organização do caminho de compra entre opções da linha Union com regiões e prazos diferentes, reforçando o papel consultivo da Fama.

Diferenciação em relação ao step 3: mudou o ângulo de `morar versus investir` para organização consultiva do caminho de compra; mudou a pergunta de diagnóstico para convite direto; mudou o benefício de evitar sugestão no escuro para fazer uma análise objetiva antes de escolher; e usou CTA de segunda-feira por ser fim de semana.

Mensagem enviada:
```text
Marcos, boa noite! 🔑

Como sua busca passou por opções da linha Union em regiões e prazos diferentes, talvez o melhor agora seja parar de olhar imóvel solto e montar um caminho de compra: entender região, prazo de entrega e condição de pagamento antes de escolher.

A Fama ajuda justamente nessa parte, com uma conversa **objetiva e sem compromisso**, para ver se a compra faz sentido de verdade.

Você conseguiria passar aqui na Fama na segunda para fazermos essa análise inicial?
```

Registro operacional: envio confirmado via WhatsApp para o JID salvo no CRM (`message_id` registrado pelo runtime Hermes) e marcado no CRM pela tool específica `mark_reno_followup_sent`. Estado persistido após marcação: `step=4`, `enabled=true`, `last_sent_at=2026-05-02T19:33:32-03:00`, `next_run_at=2026-05-03T09:10:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`. Status preservado como `Não Respondeu`.

## Objeções e travas
- Trava principal atual: silêncio do cliente; ainda não há objeção declarada.
- Possível risco comercial: interesse em empreendimento específico sem clareza validada de objetivo da compra, região prioritária, prazo, decisores e forma de pagamento.
- Há anotação humana no cliente original indicando possível inconsistência de contato/nome, mas o CRM operacional do cliente 10952 possui JID salvo e os envios do Reno foram feitos por esse JID.

## Próximo passo
- Aguardar resposta do cliente.
- Se continuar sem resposta, próximo follow-up previsto para `2026-05-03T09:10:00-03:00`, correspondente ao step 5 da repescagem.
- Se o cliente responder, sair do fluxo de repescagem, mover para atendimento consultivo e atualizar status conforme regra operacional aplicável.

## Observações operacionais
- Documento oficial mantido no caminho canônico `_agents/reno/atendimentos/10952-marcos-caetano.md`.
- Existe documento legado anterior em `_agents/reno/clientes/10952-marcos-caetano.md`; conteúdo curado útil foi consolidado neste documento oficial. Não escrever novos eventos no caminho legado.
- Cliente permanece em status `Não Respondeu`; steps 1 a 4 de repescagem não alteram status até resposta real.
- Step 4 enviado no sábado à noite; CTA respeitou a regra Renato/Reno de priorizar conversa/visita na segunda-feira quando a retomada evolui para convite em fim de semana.
