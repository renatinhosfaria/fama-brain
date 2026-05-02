---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Matheus Henrique
client_id: 11083
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-04-29'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
---
# Atendimento — Matheus Henrique

## Resumo atual
Cliente Reno (`broker_id=35`) em `Não Respondeu`, aguardando primeira resposta. Interesse registrado no empreendimento Garden Sul, no Jardim Sul/Zona Sul de Uberlândia. Repescagem ativa: step 3 enviado em 2026-05-02, com próximo follow-up previsto para 2026-05-02 às 19:10 (-03), se continuar sem resposta.

## Dados operacionais
- Cliente ID: 11083
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: final 6923, JID salvo no CRM
- Empreendimento vinculado: Garden Sul (`id_empreendimento=25`)
- Última interação relevante: repescagem step 3 enviada via WhatsApp em 2026-05-02T09:02:13-03:00

## Contexto comercial
- Interesse associado ao Garden Sul, apartamento em lançamento na Zona Sul/Jardim Sul.
- Produto com plantas de 2 quartos, 1 suíte, aproximadamente 52m² a 82m², valores cadastrados a partir de cerca de R$ 294.900, e entrega prevista para set/2028.
- Lead veio de Facebook Ads e entrou no Reno via SLA Cascata a partir do cliente original 11020.
- Ainda não há resposta real do cliente, portanto não há diagnóstico confirmado sobre morar/investir, prazo, financiamento, entrada ou decisão.

## Diagnóstico
### Necessidade
Ainda não confirmada. Contexto sugere busca por apartamento/empreendimento específico.

### Momento
Indefinido. A repescagem step 2 explorou se o prazo de lançamento/entrega futura fazia sentido para o momento do cliente.

### Decisão
Sem dados confirmados sobre decisores ou influência familiar.

### Viabilidade
Sem dados confirmados. A repescagem step 3 abriu diagnóstico leve sobre formato de compra, diferenciando financiamento versus compra à vista, sem prometer crédito ou aprovação.

## Histórico curado de interações
### 2026-04-29 — Primeiro contato manual enviado
Primeiro contato manual enviado pelo Reno via WhatsApp após correção da rota `famachat-created`. Contexto usado: Garden Sul/Jardim Sul. Status mantido como `Não Respondeu`.

### 2026-04-29 — Repescagem step 1 enviada
Mensagem abordou o Garden Sul e a importância de entender se o empreendimento encaixava no momento do cliente, considerando região, perfil e viabilidade. Próximo follow-up reagendado pela matriz oficial da repescagem.

### 2026-04-30 — Repescagem step 2 enviada
Ângulo comercial: imóvel específico + prazo de lançamento. A mensagem mudou o foco em relação ao step 1: saiu de encaixe/viabilidade geral e abriu um motivo novo de resposta sobre prazo de entrega e planejamento.

Mensagem enviada:
> Matheus, passando por aqui rapidinho 🏡
>
> Como o Garden Sul é um lançamento na Zona Sul, tem um ponto que muda bastante a escolha: o prazo. Às vezes o imóvel parece bom, mas a compra só faz sentido se a entrega e o planejamento financeiro combinarem com o que você precisa.
>
> Pra eu não te mandar opção fora do seu momento: você procura algo para mudar em breve ou considera um lançamento com entrega mais pra frente?

Estado CRM/meta_data após registro: `repescagem.step=2`, `enabled=true`, `last_sent_at=2026-04-30T13:15:42-03:00`, `next_run_at=2026-05-01T14:20:00-03:00`, `stopped_reason=null`.

### 2026-05-02 — Repescagem step 3 enviada
Ângulo comercial: diagnóstico leve de viabilidade/formato de compra. A abordagem mudou em relação ao step 2: deixou de insistir no prazo do lançamento e passou a pedir uma informação objetiva sobre forma de compra, usando como gancho a diferença entre planta tipo/térrea, valor, entrada e parcela.

Mensagem enviada:
> Matheus, deixa eu te fazer uma pergunta mais direta 🔑
>
> No Garden Sul, as opções mudam bastante entre planta tipo e térrea, e isso também muda valor, entrada e parcela. Antes de te mandar qualquer caminho solto, o ideal é entender **qual formato de compra faz sentido pra você**.
>
> Você pensa em financiar ou seria uma compra mais à vista?

Estado CRM/meta_data após registro: `repescagem.step=3`, `enabled=true`, `last_sent_at=2026-05-02T09:02:13-03:00`, `next_run_at=2026-05-02T19:10:00-03:00`, `stopped_reason=null`.

## Objeções e travas
- Trava principal observada: silêncio após primeiro contato e três repescagens.
- Pontos ainda não validados: prazo de compra, forma de pagamento, orçamento/entrada, finalidade da compra e decisores.

## Próximo passo
Se o cliente responder, mover condicionalmente o status de `Não Respondeu` para `Em Atendimento` e seguir atendimento normal do Reno, com diagnóstico leve antes de conduzir para visita presencial. Se permanecer sem resposta até o próximo vencimento da régua, executar repescagem step 4 com convite consultivo mais direto e ângulo diferente dos anteriores.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11083-matheus-henrique.md`.
- Existe documento legado em `_agents/reno/clientes/11083-matheus-henrique.md`; não foi atualizado nesta execução para evitar continuar drift de governança.
- Envio realizado pelo JID salvo no CRM, conforme política do worker.
- Mensagem enviada em produção pelo worker `reno-repescagem-message-queue-production`; registro operacional feito via `mcp_mcp_postgres_mark_reno_followup_sent`.
