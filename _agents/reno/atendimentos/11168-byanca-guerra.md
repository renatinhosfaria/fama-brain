---
broker_id: 35
client_id: 11168
created: '2026-05-04'
entity_name: Byanca Guerra
entity_type: atendimento
owner: reno
source: Facebook Ads
status_crm: Em Atendimento
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
  - resgate
  - inbound
  - em-atendimento
  - midia
  - planta
  - acabamento
  - garden-sul
type: entity-profile
updated: '2026-05-05'
---
# Atendimento — Byanca Guerra

## Resumo atual
Cliente está em `Em Atendimento` e avaliando o Garden Sul. Depois de receber fotos e plantas do empreendimento, respondeu em 2026-05-05 indicando preferência/interesse pela planta de 56,32m². O inbound interrompeu o Resgate que estava pendente após o envio de mídia; em seguida, a sessão comercial normal do Reno respondeu sobre a planta escolhida e acabamentos com dados seguros do CRM, e abriu novo ciclo de Resgate apenas para eventual silêncio após esse novo outbound.

## Dados operacionais
- Cliente ID: 11168
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: JID cadastrado no CRM
- Empreendimento vinculado: Garden Sul (`id_empreendimento=25`)
- Última interação relevante: resposta comercial do Reno sobre a planta de 56,32m² e acabamentos do Garden Sul em 2026-05-05; aguardando reação da cliente

## Contexto comercial
Interesse vinculado ao empreendimento Garden Sul, no bairro Jardim Sul/Zona Sul de Uberlândia. O empreendimento é lançamento da Opção Empreendimentos, com apartamentos de 2 quartos sendo 1 suíte, sacada gourmet e 1 vaga. Plantas identificadas no material público/oficial: tipo 52,01m², tipo 56,32m² e térreas de 69,29m², 73,45m² e 82,70m². Pontos fortes seguros: 2 torres, 3 elevadores por torre, piscina, espaço gourmet, playground, salão de festas, quadra poliesportiva e academia/espaço fitness. Entrega prevista no CRM: set/2028.

A cliente primeiro pediu material visual e depois sinalizou preferência pela planta de 56,32m². A resposta comercial registrada no CRM explicou que a opção tem 2 quartos sendo 1 suíte, 2 banheiros, sacada gourmet e 1 vaga; acabamento cadastrado inclui porcelanato 60x60, esquadrias pretas, gás canalizado, parede de concreto e medição individualizada de água. Detalhes específicos de revestimentos de cozinha/banheiros/área de serviço devem ser confirmados pelo memorial descritivo para não inventar informação.

## Diagnóstico
### Necessidade
Ainda pouco diagnosticada. A resposta atual indica interesse em avaliar uma planta específica do Garden Sul, especialmente a opção de 56,32m².

### Momento
Ainda não diagnosticado. Como o empreendimento é lançamento, prazo de obra e forma de pagamento podem ser relevantes quando a conversa avançar.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. Não houve informação sobre financiamento, entrada, renda, FGTS ou faixa confortável. Não prometer aprovação.

## Histórico curado de interações
### 2026-05-04 — Primeiro contato enviado
Reno enviou abertura curta pelo WhatsApp, apresentando-se pela Fama e contextualizando o interesse no Garden Sul, no Jardim Sul. Em seguida, perguntou se a cliente está procurando imóvel nessa região.

Status no CRM atualizado condicionalmente de Sem Atendimento para Não Respondeu. Branch de repescagem inicializada com step 0, turno de entrada madrugada e próximo envio programado para 2026-05-04 às 19:10, caso não houvesse resposta.

Ref.: evt_3336 / 3336_1777887774533

### 2026-05-04 — Repescagem step 1 enviada
Mensagem enviada com ângulo de organização da busca em lançamento: diferenciar morar versus comparar oportunidade na região do Garden Sul. CRM registrou `repescagem.step=1`, `last_sent_at=2026-05-04T19:16:32-03:00` e `next_run_at=2026-05-05T09:10:00-03:00`. Status permaneceu `Não Respondeu`.

### 2026-05-05 — Repescagem step 2 enviada
Mensagem enviada com ângulo de viabilidade prática do lançamento: olhar planta junto com entrada, financiamento e parcelas da obra antes de comparar outras opções. CRM registrou `repescagem.step=2`, `last_sent_at=2026-05-05T09:15:34-03:00` e `next_run_at=2026-05-06T14:20:00-03:00`. Status permaneceu `Não Respondeu` no envio do step.

### 2026-05-05 — Resposta inbound e início de atendimento
Cliente respondeu pelo WhatsApp com `Bom dia`. CRM confirmou cliente existente e `broker_id=35`. O atendimento foi iniciado/retomado operacionalmente: status passou de `Não Respondeu` para `Em Atendimento`, e a repescagem foi interrompida com `stopped_reason=client_replied`, `enabled=false` e `next_run_at=null`. Nota objetiva registrada no FamaChat.

### 2026-05-05 — Pedido de fotos e plantas do Garden Sul
Cliente pediu fotos e plantas do empreendimento. Contexto ativo e CRM indicavam Garden Sul (`id_empreendimento=25`), então o Reno não pediu esclarecimento desnecessário. Foi preparado envio com fotos principais das áreas comuns e plantas oficiais disponíveis: tipo 52,01m², tipo 56,32m² e térreas 69,29m², 73,45m² e 82,70m². CRM recebeu nota do pedido e do outbound. Novo ciclo de Resgate foi inicializado em `meta_data.reno_followup.resgate` com `step=0`, `last_context_bucket=midia_opcao_enviada`, `last_sent_at=2026-05-05T09:26:44-03:00` e `next_run_at=2026-05-05T09:56:44-03:00`, apenas para eventual silêncio após a mídia.

### 2026-05-05 — Cliente indica planta de 56,32m²
Cliente respondeu ao material enviado com `a de 56,32 m2`, indicando preferência/interesse pela planta de 56,32m² do Garden Sul. Status no CRM já estava `Em Atendimento`, sem necessidade de mudança. O ciclo de Resgate aberto após a mídia foi interrompido com `stopped_reason=client_replied`, `enabled=false` e `next_run_at=null`. Nota objetiva registrada no FamaChat.

### 2026-05-05 — Resposta comercial sobre planta e acabamentos
Sessão comercial normal do Reno respondeu à cliente sobre a planta de 56,32m² e acabamentos com dados confirmados no CRM: 2 quartos sendo 1 suíte, 2 banheiros, sacada gourmet, 1 vaga, porcelanato 60x60, esquadrias pretas, gás canalizado, parede de concreto e medição individualizada de água. Também registrou ressalva para confirmar detalhes específicos de revestimentos pelo memorial descritivo, evitando inventar informação. Após esse outbound normal, novo ciclo de Resgate foi inicializado para eventual silêncio pós-resposta.

## Objeções e travas
- Nenhuma objeção comercial registrada até o momento.
- Trava anterior de silêncio foi encerrada pela resposta inbound.
- Resgate pós-mídia anterior foi interrompido porque a cliente respondeu antes do próximo disparo.

## Próximo passo
Aguardar reação da cliente à resposta sobre a planta de 56,32m² e acabamento. Se ela demonstrar que a planta agradou, pedir valor/condição ou avançar no interesse, fazer ponte para visita presencial na Fama como próximo passo lógico. Se ela trouxer dúvida objetiva, responder curto e conduzir para o próximo passo sem prometer financiamento.

## Observações operacionais
Nome no CRM parece humano e pode ser usado com capitalização natural (`Byanca`). A repescagem foi encerrada por resposta inbound. O Resgate pós-mídia anterior foi parado por resposta inbound; há novo Resgate ativo apenas por outbound comercial posterior, para eventual silêncio após a resposta sobre acabamento. Mídias enviadas a partir de material do Garden Sul; não passar contato da construtora nem endereço completo do empreendimento espontaneamente.


### 2026-05-05 — Valor/condição da planta 56,32m²
Cliente respondeu `sim` ao convite para receber faixa de valor e condição da planta de 56,32m² do Garden Sul. Dados confirmados no CRM: planta/unidade 56,32m² com valor de venda R$ 330.900,00, empreendimento em lançamento, previsão de entrega set/2028 e condomínio do empreendimento informado em R$ 280,00. Resposta comercial deve evitar promessa de financiamento/condição fechada; condução correta é explicar que a condição depende de entrada, parcelas da obra e financiamento do saldo, perguntando qual entrada aproximada a cliente teria em mente para montar leitura realista.

Próximo passo: aguardar resposta sobre entrada aproximada. Se indicar entrada/viabilidade ou sinal positivo, avançar para leitura de condição e convite de visita presencial na Fama.

Observação operacional: resposta da cliente interrompeu o resgate anterior (`client_replied`). Após o novo outbound normal sobre valor/condição, ciclo de resgate foi rearmado em `condicao_valor`, step 0, próxima elegibilidade 2026-05-05T10:17:41-03:00 se houver silêncio.
