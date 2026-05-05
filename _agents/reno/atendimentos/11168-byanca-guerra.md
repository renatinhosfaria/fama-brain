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
  - inbound
  - em-atendimento
  - midia
  - garden-sul
---
# Atendimento — Byanca Guerra

## Resumo atual
Cliente respondeu pelo WhatsApp em 2026-05-05 após repescagem do Reno, entrou em `Em Atendimento` e pediu fotos e plantas do Garden Sul. O CRM confirmou `broker_id=35`; a repescagem foi interrompida com `stopped_reason=client_replied`, `enabled=false` e `next_run_at=null`. Reno enviou nesta sessão fotos principais das áreas comuns e plantas oficiais disponíveis do Garden Sul, abrindo novo ciclo de Resgate apenas para eventual silêncio após esse outbound normal.

## Dados operacionais
- Cliente ID: 11168
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: JID cadastrado no CRM
- Empreendimento vinculado: Garden Sul (`id_empreendimento=25`)
- Última interação relevante: cliente pediu fotos e plantas do Garden Sul em 2026-05-05; Reno respondeu com mídia do empreendimento

## Contexto comercial
Interesse vinculado ao empreendimento Garden Sul, no bairro Jardim Sul/Zona Sul de Uberlândia. O empreendimento é lançamento da Opção Empreendimentos, com apartamentos de 2 quartos sendo 1 suíte, sacada gourmet e 1 vaga. Plantas identificadas no material público/oficial: tipo 52,01m², tipo 56,32m² e térreas de 69,29m², 73,45m² e 82,70m². Pontos fortes seguros: 2 torres, 3 elevadores por torre, piscina, espaço gourmet, playground, salão de festas, quadra poliesportiva e academia/espaço fitness. Entrega prevista no CRM: set/2028.

A cliente pediu material visual antes de dar diagnóstico de finalidade, momento ou viabilidade. A condução deve usar a mídia para gerar fit e resposta emocional, depois avançar para entender se o perfil agrada e conduzir para visita presencial na Fama se houver sinal positivo.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. Pedido atual indica interesse em avaliar visualmente fotos e plantas do Garden Sul.

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

## Objeções e travas
- Nenhuma objeção comercial registrada até o momento.
- Trava anterior de silêncio foi encerrada pela resposta inbound.

## Próximo passo
Aguardar reação da cliente às fotos e plantas. Se ela disser que gostou, agradou ou pedir detalhes de valor/condição, fazer ponte para visita presencial na Fama como próximo passo lógico. Se ela não gostar da planta/perfil, perguntar de forma leve o que não agradou: localização, planta, valor ou estilo do empreendimento.

## Observações operacionais
Nome no CRM parece humano e pode ser usado com capitalização natural (`Byanca`). A repescagem foi encerrada para evitar novo envio automático. Mídias enviadas a partir de material do Garden Sul; não passar contato da construtora nem endereço completo do empreendimento espontaneamente.
