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
updated: '2026-05-01'
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
Cliente do Reno em `broker_id=35`, status operacional `Não Respondeu`, sem resposta real registrada após contatos iniciais e repescagens. O atendimento está em fluxo de repescagem ativa. Repescagem step 3 enviada em 2026-05-01 com foco em diagnóstico leve do objetivo da compra: morar ou investir.

## Dados operacionais
- Cliente ID: 10952
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: disponível no CRM/FamaChat; envio realizado pelo JID salvo no CRM.
- Última interação relevante: repescagem step 3 enviada em 2026-05-01T17:37:45-03:00.

## Contexto comercial
O contexto operacional indica interesse relacionado a empreendimentos da linha Union em Uberlândia, especialmente Union Vista no Grand Ville e Union Vereda no Jaraguá. O Union Vista tem entrega prevista para Jul/2027; o Union Vereda tem entrega prevista para Dez/2028. Como não houve resposta do cliente, o contexto comercial ainda é limitado. A abordagem deve evitar despejar imóveis e trabalhar o valor de organizar a busca considerando região, prazo, objetivo da compra e forma de pagamento.

## Diagnóstico
### Necessidade
Ainda não confirmada. Sinal inicial aponta busca por apartamento/empreendimento específico.

### Momento
Cliente silencioso após primeiro contato, reenvio inicial e repescagens steps 1 e 2. Momento de compra ainda não diagnosticado.

### Decisão
Sem informações sobre decisores ou critérios de escolha.

### Viabilidade
Sem dados confirmados de renda, entrada, financiamento ou forma de pagamento. Não prometer aprovação de crédito; conduzir para leitura simples de encaixe/viabilidade quando houver resposta.

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

Registro operacional: envio confirmado via WhatsApp para o JID salvo no CRM e registrado no CRM pela tool específica `mark_reno_followup_sent`, sem SQL manual e sem alteração de status. Próximo follow-up previsto para `2026-05-02T19:10:00-03:00` se o cliente continuar sem resposta.

## Objeções e travas
- Trava principal atual: silêncio do cliente; ainda não há objeção declarada.
- Possível risco comercial: interesse em empreendimento específico sem clareza de objetivo da compra, região, prazo ou forma de pagamento.

## Próximo passo
- Aguardar resposta do cliente.
- Se continuar sem resposta, próximo follow-up previsto para `2026-05-02T19:10:00-03:00`, correspondente ao step 4 da repescagem.
- Se o cliente responder, sair do fluxo de repescagem, mover para atendimento consultivo e atualizar status conforme regra operacional aplicável.

## Observações operacionais
- Documento oficial mantido no caminho canônico `_agents/reno/atendimentos/10952-marcos-caetano.md`.
- Existe documento legado anterior em `_agents/reno/clientes/10952-marcos-caetano.md`; conteúdo curado útil foi consolidado neste documento oficial. Não escrever novos eventos no caminho legado.
- Cliente permanece em status `Não Respondeu`; a repescagem não altera status até resposta real.
- Step 3 foi substancialmente diferente do step 2: mudou o ângulo para objetivo da compra, o tipo de pergunta para escolha morar/investir e o benefício para não sugerir opções no escuro.
