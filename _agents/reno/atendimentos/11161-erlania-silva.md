---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Erlania Silva
client_id: 11161
broker_id: 35
status_crm: Arquivado
source: Facebook Ads
created: '2026-05-03'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
  - step-5
  - arquivado
---
# Atendimento — Erlania Silva

Vínculos: [[reno]], [[playbook-atendimento]], [[union-vereda]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Cliente permaneceu em silêncio durante toda a régua de repescagem e recebeu o step 5 em 2026-05-07 às 09:22 BRT. A mensagem encerrou a régua com pausa respeitosa, porta aberta e comparação futura sobre prazo, condição e alternativas. Após validação do estado final, a repescagem foi encerrada com `stopped_reason=max_steps` e o cliente foi arquivado no CRM.

## Dados operacionais
- Cliente ID: 11161
- Broker ID: 35
- Status CRM: Arquivado
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: (34) 99224-0613
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: repescagem step 5 enviada em 2026-05-07 09:22 BRT; régua encerrada e cliente arquivado

## Contexto comercial
Lead entrou por Facebook Ads com interesse vinculado ao Union Vereda. Empreendimento localizado no Jaraguá, zona Oeste de Uberlândia, com entrega prevista para Dez/2028. O CRM indica unidades disponíveis a partir de aproximadamente R$ 289 mil, com plantas de 2 quartos, suíte, varanda e lazer/serviços de condomínio.

A primeira abordagem foi curta e focada em confirmar se a cliente procurava imóvel nessa região. A repescagem step 1 mudou o motivo de resposta para entender se o lançamento fazia sentido para morar ou para comparar oportunidade de compra. Como não houve resposta, o step 2 mudou novamente o ângulo para evitar caminho errado: checar condição de compra antes de comparar unidade. O step 3 não repetiu finalidade nem convite de análise de viabilidade; usou uma pergunta de escolha para descobrir o critério que mais pesa na decisão. O step 4 mudou para convite consultivo direto, com a tese de organizar o caminho da compra em vez de enviar mais anúncio. O step 5 encerrou a régua com uma pausa respeitosa e porta aberta para retomada futura.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A régua tentou gerar a primeira microresposta para entender se a cliente busca moradia, comparação de oportunidade ou apenas está pesquisando lançamento no Jaraguá.

### Momento
Ainda não diagnosticado. O contexto de entrega em Dez/2028 pode ser decisivo para entender timing e expectativa da cliente.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. O step 2 introduziu a necessidade de olhar entrada, financiamento e parcela de forma realista; o step 3 buscou entender se o valor da compra é o critério central ou se localização/planta pesam mais; o step 4 propôs organizar prazo, condição durante a obra e comparação com opção mais pronta. Não há promessa de crédito.

## Histórico curado de interações
### 2026-05-03 — Primeiro contato enviado
Reno enviou duas mensagens curtas pelo WhatsApp: apresentação como consultor digital da Fama, contexto do interesse no Union Vereda no Jaraguá e pergunta se a cliente procurava imóvel nessa região.

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

### 2026-05-06 — Repescagem step 4 enviada
Mensagem enviada:

> Boa noite, Erlania! 🔑
>
> No Union Vereda, o próximo passo não é receber mais anúncio. O importante é organizar o caminho da compra: prazo até Dez/2028, condição durante a obra e se vale comparar com uma opção mais pronta.
>
> Isso evita você ficar olhando lançamento sem saber se ele combina com seu momento real.
>
> Posso organizar essa análise com você de forma objetiva?

Ângulo usado: convite consultivo direto / organização do caminho de compra. Diferenciação em relação ao step 3: deixou de perguntar critério principal de escolha e propôs uma análise objetiva; trocou o benefício de direcionamento sem chute por organização do caminho de compra; incorporou comparação com opção mais pronta sem despejar imóvel; mudou vocabulário e CTA para permissão de análise consultiva.

Estado operacional após marcação: `repescagem.step=4`, `enabled=true`, `stopped_reason=null`, `claim_expires_at=null`, próximo step previsto para 2026-05-07 09:10 BRT.

### 2026-05-07 — Repescagem step 5 enviada e régua encerrada
Mensagem enviada:

> Erlania, vou pausar por aqui, tá bem? 🏡
>
> Como você já vinha olhando o Union Vereda, pode ser que agora esteja só comparando com calma. Nessa fase, o mais importante é não ficar presa a um lançamento antes de entender prazo, condição e se existe outra opção que encaixe melhor.
>
> Se fizer sentido retomar depois, eu consigo te ajudar a comparar isso de forma objetiva.
>
> Posso deixar você à vontade e você me chama quando quiser olhar com calma?

Ângulo usado: pausa respeitosa / porta aberta. Diferenciação em relação ao step 4: saiu do convite consultivo direto e mudou para encerramento elegante; preservou o contexto do Union Vereda, mas sem insistir em agenda, análise ou visita.

Estado operacional final após correção:
- `repescagem.step=5`
- `enabled=false`
- `next_run_at=null`
- `last_sent_at=2026-05-07T09:22:28.175127-03:00`
- `stopped_reason=max_steps`

### 2026-05-07 — Arquivamento defensivo registrado
Reno atualizou o status do CRM de `Não Respondeu` para `Arquivado` após confirmar o step 5 e encerrar a branch com segurança. Nota objetiva de arquivamento registrada no CRM.

## Objeções e travas
Nenhuma objeção identificada até o momento. Trava operacional: silêncio persistente e ausência de retorno ao longo de cinco tentativas.

## Próximo passo
Sem nova automação. Caso a cliente retome no futuro, reabrir o atendimento com base no status arquivado e retomar a qualificação a partir do contexto atual.

## Observações operacionais
- Nome no CRM segue humano e confiável.
- JID do WhatsApp validado via bridge antes do envio.
- `mark_reno_followup_sent` persistiu step 5 mas manteve a branch aberta; foi necessário normalizar com `update_reno_followup_state` antes do arquivamento.
- Arquivamento defensivo executado somente após confirmar `step=5` e `stopped_reason=max_steps`.
- Nota CRM de arquivamento registrada (`id=17128`).
- Sem visitas, appointments ou sales associados.
