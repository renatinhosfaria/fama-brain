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
updated: '2026-05-05'
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
Cliente permanece em silêncio após primeiro contato e três repescagens. Repescagem step 3 enviada com sucesso em 2026-05-05 às 14:44 BRT, mudando o ângulo para diagnóstico leve por critério principal de escolha no Union Vereda: localização no Jaraguá, planta/tamanho ou valor da compra. Status operacional permanece `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11161
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: (34) 99224-0613
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: repescagem step 3 enviada em 2026-05-05 14:44 BRT

## Contexto comercial
Lead entrou por Facebook Ads com interesse vinculado ao Union Vereda. Empreendimento localizado no Jaraguá, zona Oeste de Uberlândia, com entrega prevista para Dez/2028. O CRM indica unidades disponíveis a partir de aproximadamente R$ 289 mil, com plantas de 2 quartos, suíte, varanda e lazer/serviços de condomínio.

A primeira abordagem foi curta e focada em confirmar se a cliente procurava imóvel nessa região. A repescagem step 1 mudou o motivo de resposta para entender se o lançamento fazia sentido para morar ou para comparar oportunidade de compra. Como não houve resposta, o step 2 mudou novamente o ângulo para evitar caminho errado: checar condição de compra antes de comparar unidade. O step 3 não repetiu finalidade nem convite de análise de viabilidade; usou uma pergunta de escolha para descobrir o critério que mais pesa na decisão.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A régua tenta gerar a primeira microresposta para entender se a cliente busca moradia, comparação de oportunidade ou apenas está pesquisando lançamento no Jaraguá.

### Momento
Ainda não diagnosticado. O contexto de entrega em Dez/2028 pode ser decisivo para entender timing e expectativa da cliente.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. O step 2 introduziu a necessidade de olhar entrada, financiamento e parcela de forma realista; o step 3 buscou entender se o valor da compra é o critério central ou se localização/planta pesam mais. Não há promessa de crédito.

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

### 2026-05-04 — Repescagem step 2 enviada
Mensagem enviada:

> Bom dia, Erlania! 🔑
>
> Pensando no **Union Vereda**, um ponto que evita perda de tempo é olhar se a condição de compra encaixa antes de comparar unidade.
>
> Hoje as opções começam perto de **R$ 289 mil**, mas o que define se vale avançar é entrada, financiamento e parcela caberem no seu cenário, principalmente por ser entrega Dez/2028.
>
> Quer que eu faça uma primeira leitura contigo pra ver se esse caminho fica viável para você?

Ângulo usado: financiamento / viabilidade prática. Diferenciação em relação ao step 1: saiu da pergunta de finalidade (`morar` vs `comparar oportunidade`) e passou para a utilidade prática de evitar perda de tempo com unidade antes de checar condição de compra. Benefício destacado: validar entrada, financiamento, parcela e prazo antes de avançar.

Estado operacional após marcação: `repescagem.step=2`, `enabled=true`, `stopped_reason=null`, `claim_expires_at=null`, próximo step previsto para 2026-05-05 14:20 BRT.

### 2026-05-05 — Repescagem step 3 enviada
Mensagem enviada:

> Boa tarde, Erlania! 📍
>
> No Union Vereda, dá pra olhar por caminhos diferentes: localização no Jaraguá, planta de 2 quartos com suíte/varanda, ou um valor que fique confortável no orçamento.
>
> Sem saber o que pesa mais pra você, qualquer sugestão vira chute.
>
> Hoje, qual ponto é mais importante: **localização**, **planta/tamanho** ou **valor da compra**?

Ângulo usado: imóvel específico / diagnóstico leve por critério principal de escolha. Diferenciação em relação ao step 2: saiu do convite para primeira análise de viabilidade e usou uma pergunta de escolha objetiva; trocou o benefício de evitar perda financeira por direcionamento sem chute; mudou o vocabulário para localização, planta/tamanho e valor da compra, preservando o contexto real do Union Vereda sem repetir a estrutura anterior.

Estado operacional após marcação: `repescagem.step=3`, `enabled=true`, `stopped_reason=null`, `claim_expires_at=null`, próximo step previsto para 2026-05-06 19:10 BRT.

## Objeções e travas
Nenhuma objeção identificada até o momento. Trava operacional atual: silêncio após primeiro contato e três steps de repescagem.

## Próximo passo
Aguardar resposta da cliente. Se ela responder, atualizar o CRM de `Não Respondeu` para `Em Atendimento` somente se o status ainda estiver exatamente assim e seguir pelo fluxo de qualificação normal. Se permanecer em silêncio, a próxima repescagem elegível é o step 4 em 2026-05-06 às 19:10 BRT, com convite consultivo direto e novo ângulo, sem repetir a pergunta de finalidade do step 1, a análise de viabilidade do step 2 ou a escolha de critério do step 3.

## Observações operacionais
- Nome no CRM parece humano e confiável; não foi necessária confirmação de nome.
- Primeiro contato relacionado ao evento `evt_3329` / idempotência `3329_1777841101343`.
- Repescagens enviadas pelo WhatsApp usando o JID salvo no CRM.
- Nas execuções dos steps 2 e 3, `send_message` não estava exposto no runtime do cron; foi usado fallback excepcional pelo bridge local saudável (`/health` conectado), com sucesso técnico e posterior marcação oficial via `mark_reno_followup_sent`.
- Como era step 3, o status não foi alterado e não houve arquivamento.
