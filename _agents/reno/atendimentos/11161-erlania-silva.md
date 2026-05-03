---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Erlania Silva
client_id: 11161
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-03'
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Erlania Silva

## Resumo atual
Cliente em silêncio após o primeiro contato do Reno. Repescagem step 1 enviada com sucesso em 2026-05-03 às 19:51 BRT, mudando o ângulo da abertura inicial: em vez de confirmar região, a mensagem contextualizou o Union Vereda como lançamento no Jaraguá e buscou uma microresposta sobre finalidade de compra. Status operacional permanece `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11161
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: (34) 99224-0613
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: repescagem step 1 enviada em 2026-05-03 19:51 BRT

## Contexto comercial
Lead entrou por Facebook Ads com interesse vinculado ao Union Vereda. Empreendimento localizado no Jaraguá, zona Oeste de Uberlândia, com entrega prevista para Dez/2028. A primeira abordagem foi curta e focada em confirmar se a cliente procurava imóvel nessa região; a repescagem step 1 mudou o motivo de resposta para entender se o lançamento faz sentido para morar ou para comparação de oportunidade de compra.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A repescagem tenta abrir a primeira resposta por finalidade de busca: morar ou comparar oportunidade de compra.

### Momento
Ainda não diagnosticado. O contexto de lançamento com entrega mais à frente pode ser relevante para entender timing e expectativa da cliente.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. Não houve conversa sobre financiamento, renda, entrada ou aprovação.

## Histórico curado de interações
### 2026-05-03 — Primeiro contato enviado
Reno enviou duas mensagens curtas pelo WhatsApp: apresentação como consultor digital da Fama, contexto do interesse no Union Vereda no Jaraguá e pergunta se a cliente está procurando imóvel nessa região.

Após sucesso no WhatsApp, o CRM foi atualizado condicionalmente de `Sem Atendimento` para `Não Respondeu`. A branch de repescagem foi inicializada com step 0 para acompanhamento futuro caso não houvesse resposta.

### 2026-05-03 — Repescagem step 1 enviada
Mensagem enviada:

> Oi, Erlania! 🏡
>
> Sobre o Union Vereda, além da região, o ponto é entender se ele combina com o que você quer agora. Por ser um lançamento no Jaraguá, com entrega mais à frente, a análise muda bastante conforme o objetivo.
>
> Pra eu te direcionar sem ficar mandando opção solta: você está olhando mais para **morar** ou para **comparar uma boa oportunidade de compra**?

Ângulo usado: imóvel específico / finalidade de compra. Diferenciação em relação ao primeiro contato: não repetiu a pergunta sobre região; abriu um novo motivo para resposta usando o contexto de lançamento e a escolha entre morar ou comparar oportunidade.

Estado operacional após marcação: `repescagem.step=1`, `enabled=true`, `stopped_reason=null`, próximo step previsto para 2026-05-04 09:10 BRT.

## Objeções e travas
Nenhuma objeção identificada até o momento. Trava operacional atual: silêncio após primeiro contato.

## Próximo passo
Aguardar resposta da cliente. Se ela responder, atualizar o CRM de `Não Respondeu` para `Em Atendimento` somente se o status ainda estiver exatamente assim e seguir pelo fluxo de qualificação normal. Se permanecer em silêncio, a próxima repescagem elegível é o step 2 em 2026-05-04 às 09:10 BRT, com novo ângulo comercial para evitar caminho errado/organizar viabilidade.

## Observações operacionais
- Nome no CRM parece humano e confiável; não foi necessária confirmação de nome.
- Primeiro contato relacionado ao evento `evt_3329` / idempotência `3329_1777841101343`.
- Repescagem step 1 enviada pelo WhatsApp usando o JID salvo no CRM.
- Claim da fila de repescagem foi limpo pela marcação de envio (`claim_expires_at=null`).
