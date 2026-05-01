---
type: entity-profile
owner: reno
created: '2026-04-30'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - place-arbi
entity_type: atendimento
entity_name: Marco Antonio Goncalves
broker_id: 35
client_id: 11002
source: Facebook Ads
status_crm: Não Respondeu
---
# Atendimento — Marco Antonio Goncalves

## Resumo atual
Cliente Reno em `Não Respondeu`, silencioso após primeiro contato e repescagens steps 1 e 2. Em 2026-05-01, foi enviada a repescagem step 3 com novo ângulo de diagnóstico leve: entender se o interesse no Place+Arbi é para morar ou investir, sem repetir a pergunta anterior sobre financiamento/entrada.

## Dados operacionais
- Cliente ID: 11002
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- Telefone/WhatsApp: JID WhatsApp salvo no CRM; telefone mascarado final ****-9186
- Última interação relevante: 2026-05-01 20:31 - repescagem step 3 enviada via WhatsApp

## Contexto comercial
Lead originado de anúncio relacionado ao empreendimento **Place+Arbi**, da HLTS Construtora, no bairro Shopping Park/Zona Sul, Uberlândia. O empreendimento está em lançamento, com entrega prevista para JUN/2027 e plantas de aproximadamente 48m² a 50m².

Não há, até o momento, resposta real do cliente nem diagnóstico confirmado sobre finalidade da compra, prazo, decisão, entrada ou financiamento. Por isso, a abordagem deve permanecer consultiva e sem afirmações sobre crédito ou aprovação.

## Diagnóstico
### Necessidade
Ainda não confirmada. Indício principal: interesse em empreendimento específico, Place+Arbi.

### Momento
Silencioso após primeiro contato e repescagens. A etapa atual é gerar microresposta objetiva para descobrir se o caminho comercial deve ser moradia, investimento ou outra motivação.

### Decisão
Sem informação confirmada sobre decisores.

### Viabilidade
Sem dados confirmados de renda, entrada ou financiamento. O step 2 abriu o ponto de financiamento versus à vista/entrada maior; o step 3 mudou o foco para finalidade da compra, evitando insistir no mesmo argumento.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato Reno
Primeiro WhatsApp enviado pelo Reno para o JID salvo no CRM. Contexto usado: Place+Arbi, Shopping Park.

### 2026-04-29 — Repescagem step 1
- Intenção: novo motivo para responder.
- Ângulo usado: imóvel específico + clarear encaixe do empreendimento no momento do cliente.
- Canal: WhatsApp.
- Registro CRM: feito via ferramenta específica do Reno.
- Próximo follow-up posteriormente migrado/corrigido para a matriz oficial.

Mensagem enviada:

> Oi, Marco! Tudo bem? 🏡
>
> Sobre o Place+Arbi no Shopping Park, às vezes vale organizar primeiro se ele encaixa no seu momento — planta, região, prazo de entrega e viabilidade — antes de ficar olhando opções soltas.
>
> Posso te ajudar a clarear esse ponto de forma **simples e sem pressão**.
>
> Você quer que eu te ajude a entender se esse empreendimento faz sentido para você?

### 2026-04-30 — Repescagem step 2
- Intenção: evitar caminho errado.
- Comparação com step anterior: mudou o ângulo de "encaixe do empreendimento" para "não olhar só preço/fotos e entender forma de compra"; mudou a pergunta para financiamento versus à vista/entrada maior; mudou o benefício para evitar envio fora do cenário do cliente.
- Ângulo usado: imóvel específico + financiamento/viabilidade inicial.
- Canal: WhatsApp.
- Destino: JID WhatsApp salvo no CRM.
- Registro CRM/meta_data: atualizado via `mark_reno_followup_sent`.
- Próximo `next_run_at`: 2026-05-01T14:20:00-03:00.

Mensagem enviada:

> Marco, tudo bem? 🔑
>
> Uma coisa importante sobre lançamento como o Place+Arbi é não olhar só preço e fotos.
>
> Como as plantas ficam em torno de 48–50m² e a entrega é para jun/2027, o caminho muda bastante dependendo se a compra seria para morar, investir ou planejar com financiamento.
>
> Pra eu não te mandar algo fora do seu cenário, você pretende comprar mais por **financiamento** ou seria à vista/entrada maior?

### 2026-05-01 — Repescagem step 3
- Intenção: diagnóstico leve.
- Comparação com step anterior: mudou o ângulo de forma de compra/financiamento para finalidade de uso; mudou o tipo de pergunta para escolha simples entre morar ou investir; mudou a abertura para uma pergunta direta; mudou o benefício de "não mandar algo fora do cenário" para evitar opções no escuro.
- Ângulo usado: imóvel específico + finalidade da compra.
- Canal: WhatsApp.
- Destino: JID WhatsApp salvo no CRM.
- Registro CRM/meta_data: atualizado via `mark_reno_followup_sent`.
- Próximo `next_run_at`: 2026-05-02T19:10:00-03:00.

Mensagem enviada:

> Boa noite, Marco! 📍
>
> Vou te fazer uma pergunta bem direta pra não ficar te mandando opção no escuro.
>
> O Place+Arbi pode fazer sentido por caminhos diferentes: morar na região do Shopping Park/Zona Sul, comprar planejando 2027 ou até pensar como investimento.
>
> Hoje sua ideia seria mais **morar** ou **investir**?

## Objeções e travas
- Trava principal atual: silêncio do cliente; ainda não há objeção declarada.

## Próximo passo
Se não houver resposta real do cliente, aguardar elegibilidade da fila para a repescagem step 4 a partir de 2026-05-02T19:10:00-03:00. Se houver resposta real, parar repescagem, mover atendimento para fluxo normal do Reno e atualizar status somente conforme regra operacional.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11002-marco-antonio-goncalves.md` conforme governança canônica.
- Conteúdo consolidado originalmente a partir do documento legado `_agents/reno/clientes/11002-marco-antonio-goncalves.md`; o legado não foi deletado nesta execução.
- O CRM/FamaChat permanece a fonte de verdade operacional para status, meta_data e notas.
