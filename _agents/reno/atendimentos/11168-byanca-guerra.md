---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Byanca Guerra
client_id: 11168
broker_id: 35
status_crm: Em Atendimento
source: Facebook Ads
created: '2026-05-04'
updated: '2026-05-05'
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
  - valor
  - condicao
  - garden-sul
---
# Atendimento — Byanca Guerra

## Resumo atual
Cliente está em `Em Atendimento` e avaliando o Garden Sul, com interesse concentrado na planta de 56,32m². Já recebeu fotos/plantas, perguntou sobre acabamento e recebeu uma leitura inicial de valor/condição com dados seguros do CRM. Em 2026-05-05, a rotina silenciosa registrou novo inbound curto (`sim`) após outbound sobre condição/valor; o status já estava correto e o Resgate ativo em `condicao_valor` foi interrompido para evitar novo disparo automático.

## Dados operacionais
- Cliente ID: 11168
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: JID cadastrado no CRM
- Empreendimento vinculado: Garden Sul (`id_empreendimento=25`)
- Última interação relevante: inbound curto `sim` registrado em 2026-05-05; Resgate `condicao_valor` interrompido com `client_replied`; aguardando condução comercial normal com reconstrução do contexto da conversa

## Contexto comercial
Interesse vinculado ao empreendimento Garden Sul, no bairro Jardim Sul/Zona Sul de Uberlândia. O empreendimento é lançamento da Opção Empreendimentos, com apartamentos de 2 quartos sendo 1 suíte, sacada gourmet e 1 vaga. Plantas identificadas no material público/oficial: tipo 52,01m², tipo 56,32m² e térreas de 69,29m², 73,45m² e 82,70m². Pontos fortes seguros: 2 torres, 3 elevadores por torre, piscina, espaço gourmet, playground, salão de festas, quadra poliesportiva e academia/espaço fitness. Entrega prevista no CRM: set/2028.

A cliente pediu material visual, sinalizou preferência pela planta de 56,32m² e perguntou sobre acabamento. A resposta comercial registrada no CRM explicou que a opção tem 2 quartos sendo 1 suíte, 2 banheiros, sacada gourmet e 1 vaga; acabamento cadastrado inclui porcelanato 60x60, esquadrias pretas, gás canalizado, parede de concreto e medição individualizada de água. Detalhes específicos de revestimentos de cozinha/banheiros/área de serviço devem ser confirmados pelo memorial descritivo para não inventar informação.

Depois, a conversa avançou para valor/condição da planta de 56,32m². Dados confirmados no CRM na condução anterior: valor de referência R$ 330.900,00, status lançamento, previsão de entrega set/2028 e condomínio informado no empreendimento em R$ 280,00. A condição deve continuar sendo tratada como dependente de unidade, entrada, parcelas da obra e financiamento do saldo, sem promessa de aprovação.

## Diagnóstico
### Necessidade
Ainda incompleta. Há interesse real em entender a planta de 56,32m² do Garden Sul e a condição de compra, especialmente valor, acabamento e encaixe da forma de pagamento.

### Momento
Ainda não diagnosticado. Como o empreendimento é lançamento, prazo de obra, entrada parcelada e financiamento do saldo tendem a ser pontos relevantes.

### Decisão
Ainda não diagnosticada. Não há registro seguro sobre outros decisores.

### Viabilidade
Ainda não diagnosticada. Não há informação segura sobre entrada disponível, renda, FGTS ou faixa mensal confortável. Não prometer crédito; usar `ver se encaixa` e direcionar para validação mais segura na Fama quando houver sinal positivo.

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

### 2026-05-05 — Valor/condição da planta 56,32m²
Cliente respondeu `sim` ao convite para receber faixa de valor e condição da planta de 56,32m² do Garden Sul. Reno respondeu com dados confirmados no CRM: planta/unidade 56,32m² com valor de venda R$ 330.900,00, empreendimento em lançamento, previsão de entrega set/2028 e condomínio do empreendimento informado em R$ 280,00. A resposta evitou promessa de financiamento/condição fechada e explicou que a condição depende de entrada, parcelas da obra e financiamento do saldo. Depois desse outbound normal, o ciclo de Resgate foi rearmado com bucket `condicao_valor` para eventual silêncio.

### 2026-05-05 — Inbound curto após valor/condição; Resgate interrompido
Rotina silenciosa de inbound registrou nova resposta curta da cliente: `sim`. Status já estava `Em Atendimento`, sem alteração e sem regressão. Como havia Resgate ativo após o outbound de condição/valor (`last_context_bucket=condicao_valor`), o fluxo foi interrompido com `stopped_reason=client_replied`, `enabled=false` e `next_run_at=null`. Repescagem já estava interrompida. Nota objetiva registrada no CRM. Nenhuma mensagem foi enviada ao cliente por esta rotina silenciosa.

## Objeções e travas
- Nenhuma objeção comercial registrada até o momento.
- Trava anterior de silêncio foi encerrada por respostas inbound.
- Repescagem está encerrada por `client_replied`.
- Resgate `condicao_valor` foi encerrado por `client_replied` após inbound curto; não deve disparar nova step até novo outbound normal e nova elegibilidade operacional.

## Próximo passo
Na sessão comercial normal, reconstruir o contexto imediato antes de responder ao `sim`. Se a resposta indicar concordância/interesse na condição ou na leitura de viabilidade, avançar com uma pergunta simples sobre entrada aproximada ou conduzir para visita presencial na Fama se houver sinal quente suficiente. Evitar nova bateria financeira; não prometer aprovação.

## Observações operacionais
Nome no CRM parece humano e pode ser usado com capitalização natural (`Byanca`). Mídias e dados foram conduzidos a partir de material do Garden Sul; não passar contato da construtora nem endereço completo do empreendimento espontaneamente. O último inbound foi processado somente como persistência operacional: status preservado em `Em Atendimento`, Resgate parado e nota registrada no FamaChat, sem envio de WhatsApp ao cliente.


### 2026-05-05 — Entrada informada e convite para visita/simulação
Cliente informou entrada aproximada de R$ 10.000,00 para a planta de 56,32m² do Garden Sul. Valor da planta no CRM: R$ 330.900,00. Condução correta: não prometer aprovação nem condição fechada; explicar que é preciso avaliar sinal, parcelas até a entrega (set/2028) e financiamento do saldo.

Próximo passo comercial: cliente com sinal positivo e dúvida de viabilidade/condição. Reno deve conduzir para visita presencial na Fama para simular a condição na tela e confirmar se o fluxo cabe no momento dela.

Observação operacional: após resposta inbound, conversa segue em atendimento normal. Novo outbound normal rearmou ciclo de resgate em `visita_pendente`, step 0, próxima elegibilidade 2026-05-05T10:27:20-03:00 caso haja silêncio.
