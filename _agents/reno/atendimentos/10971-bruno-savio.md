---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Bruno Sávio
client_id: 10971
broker_id: 35
status_crm: Arquivado
source: FamaChat
created: '2026-04-27'
updated: '2026-05-04'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - arquivado
---
# Atendimento — Bruno Sávio

## Resumo atual
Cliente Bruno Sávio foi arquivado automaticamente em 2026-05-04 após conclusão da régua de 5 repescagens do Reno sem resposta real no cliente operacional `10971`. O interesse estava associado ao empreendimento Union Vista, no Grand Ville, em Uberlândia. O step 5 foi enviado com encerramento elegante, sem repetir convite de agenda após o step 4 já ter proposto análise/visita na segunda-feira.

## Dados operacionais
- Cliente ID: 10971
- Broker ID: 35
- Status CRM: Arquivado
- Origem: SLA Cascata
- Telefone/WhatsApp: JID salvo no CRM usado para envio; telefone não exposto neste resumo.
- Empreendimento vinculado: Union Vista — Grand Ville — Uberlândia/MG
- Última interação relevante: 2026-05-04 14:39 - repescagem step 5 enviada via WhatsApp; régua encerrada e cliente arquivado defensivamente.

## Contexto comercial
O cliente está vinculado ao Union Vista, empreendimento da HLTS Construtora no bairro Grand Ville, Zona Leste de Uberlândia, com entrega prevista para Jul/2027. O CRM indica opções cadastradas de 2 quartos, suíte, vaga coberta e lazer de condomínio, com plantas compactas e uma unidade maior.

Há histórico de primeiro contato e cinco repescagens sem resposta. A repescagem step 1 explorou valores/opções e viabilidade da compra. A repescagem step 2 explorou lançamento, prazo de entrega, formato de pagamento e objetivo de uso (morar ou investir). A repescagem step 3 mudou o foco para perfil de unidade/planta. A repescagem step 4 avançou para convite consultivo direto e possibilidade de análise/visita na Fama na segunda-feira. O step 5 encerrou a régua com pausa respeitosa e porta aberta para retomada futura por prazo, valor e forma de compra.

## Diagnóstico
### Necessidade
Não houve resposta real do cliente. A necessidade percebida veio do interesse no Union Vista, sem confirmação se a prioridade era valor mais baixo, planta maior, moradia, investimento, prazo de entrega ou comparação com alternativas.

### Momento
Cliente permaneceu silencioso após primeiro contato e cinco repescagens. Como o empreendimento é lançamento com entrega futura, o momento de compra e a aderência do caminho de compra não foram validados.

### Decisão
Não há informação confirmada sobre decisores ou participação familiar.

### Viabilidade
Não há dados de renda, entrada ou financiamento. Nenhuma promessa de crédito foi feita. O caso fica sem nova ação automática até eventual resposta/reativação humana.

## Histórico curado de interações
### 2026-04-27 — Primeiro contato
- Resultado: enviado.
- Contexto: interesse no Union Vista, no Grand Ville.
- Interação: WhatsApp de abertura enviado com pergunta sobre aderência da região.
- Status CRM: Não Respondeu.

### 2026-04-29 — Repescagem step 1
- Resultado: enviada via WhatsApp.
- Ângulo usado: Union Vista + valores/opções + viabilidade da compra.
- Mensagem: perguntou se o cliente preferia começar pelos valores/opções do Union Vista ou pela viabilidade da compra.
- Próximo follow-up posteriormente ajustado pela régua de repescagem.

### 2026-04-30 — Repescagem step 2
- Resultado: enviada via WhatsApp para o JID salvo no CRM.
- Ângulo usado: evitar caminho errado considerando que o Union Vista é lançamento com entrega prevista para 2027; validar prazo, formato de pagamento e objetivo do cliente.
- Mensagem enviada:

> Bruno, voltei aqui por um ponto importante sobre o Union Vista 🔑
>
> Como ele é um lançamento no Grand Ville, com entrega prevista para 2027, vale olhar não só o valor do apartamento, mas se o **prazo e o formato de pagamento** combinam com o que você quer fazer.
>
> Isso evita perder tempo com uma opção boa no papel, mas que talvez não encaixe no seu plano.
>
> Você está pensando nesse imóvel mais para morar ou como investimento?

- Próximo follow-up previsto no CRM/meta_data: 2026-05-01T19:10:00-03:00.

### 2026-05-02 — Repescagem step 3
- Resultado: enviada via WhatsApp para o JID salvo no CRM.
- Ângulo usado: diagnóstico leve sobre perfil de planta/unidade no Union Vista, mudando o foco depois dos argumentos anteriores sobre viabilidade, prazo e objetivo de uso.
- Mensagem enviada:

> Bruno, bom dia! 🏡
>
> No Union Vista existem opções com perfis diferentes — desde plantas mais compactas até uma unidade maior. Antes de te mandar informação solta, faz mais sentido entender **qual tipo de apartamento combina melhor com a sua busca**.
>
> Você prefere algo mais enxuto para manter o valor mais baixo ou uma planta maior, mesmo mudando o orçamento?

- Próximo follow-up previsto no CRM/meta_data: 2026-05-03T09:10:00-03:00.

### 2026-05-03 — Repescagem step 4
- Resultado: enviada via WhatsApp para o JID salvo no CRM.
- Ângulo usado: convite consultivo direto, sem repetir pergunta sobre planta, viabilidade, prazo ou finalidade. Por ser fim de semana, a conversa foi conduzida para análise/visita na Fama na segunda-feira.
- Mensagem enviada:

> Bruno, vou ser bem direto pra não ficar te mandando informação solta do Union Vista 📍
>
> Por ser um lançamento no Grand Ville, o ponto agora é entender se ele é mesmo o **melhor caminho de compra** pra você ou se vale comparar com uma opção de entrega/condição diferente.
>
> Na segunda eu consigo te receber na Fama e fazer essa análise contigo em poucos minutos.
>
> Quer que eu separe um horário pra você passar lá?

- Próximo follow-up previsto no CRM/meta_data: 2026-05-04T14:20:00-03:00.

### 2026-05-04 — Repescagem step 5 e arquivamento
- Resultado: enviada via WhatsApp para o JID salvo no CRM, usando fallback excepcional do bridge local porque `send_message` não estava exposto no runtime do cron.
- Ângulo usado: encerramento elegante com pausa respeitosa e porta aberta, sem repetir a agenda do step 4; preservou o contexto do Union Vista como lançamento e a comparação futura por prazo, valor e forma de compra.
- Mensagem enviada:

> Bruno, vou pausar por aqui pra não ficar insistindo sem saber se esse é o seu momento.
>
> Como o Union Vista é um lançamento no Grand Ville, quando fizer sentido retomar o ideal é comparar com calma **prazo, valor e forma de compra**, em vez de decidir só pelo anúncio. 🏡
>
> Posso deixar essa análise em aberto e você me chama quando quiser comparar as opções?

- Estado operacional: `repescagem.step=5`, `enabled=false`, `next_run_at=null`, `stopped_reason=max_steps`.
- Status CRM atualizado defensivamente de `Não Respondeu` para `Arquivado` porque o cliente ainda estava no status esperado e pertencia ao `broker_id=35`.

## Objeções e travas
- Silêncio após primeiro contato e cinco repescagens.
- Possível trava: falta de clareza sobre objetivo de uso, prazo de entrega, formato de pagamento e perfil de unidade/planta.
- Histórico do cliente original em SLA Cascata menciona verificação de valores, mas sem resposta útil confirmada nesta entidade operacional.

## Próximo passo
Sem nova ação automática de repescagem. Se o cliente responder futuramente, parar qualquer régua automática e retomar por atendimento consultivo normal do Reno, reavaliando status e contexto antes de avançar.

## Observações operacionais
- Cliente selecionado por fila exclusiva de repescagem: broker_id=35, status `Não Respondeu`, branch `meta_data.reno_followup.repescagem.enabled=true`, `stopped_reason=null`, step anterior 4 e `next_run_at` vencido.
- WhatsApp enviado com sucesso usando o JID salvo no CRM via fallback excepcional do bridge local saudável (`/health` conectado), pois `send_message` não estava disponível nesta sessão de cron.
- CRM atualizado via `mcp_mcp_postgres_mark_reno_followup_sent`. A tool registrou `step=5`, mas manteve `enabled=true`, `next_run_at` preenchido e `stopped_reason=null`; o estado final foi corrigido pela tool específica `mcp_mcp_postgres_update_reno_followup_state` antes do arquivamento, conforme pitfall operacional conhecido.
- A correção compactou a branch final da repescagem, preservando o essencial: `step=5`, `enabled=false`, `next_run_at=null`, `last_sent_at=2026-05-04T14:39:26-03:00` e `stopped_reason=max_steps`. A mensagem final foi preservada em nota CRM e neste documento.
- Nota CRM objetiva de arquivamento registrada após o update defensivo de status.
