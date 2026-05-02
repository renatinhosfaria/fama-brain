---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jessica
client_id: 11110
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
# Atendimento — Jessica

## Resumo atual
Cliente sob responsabilidade do Reno (`broker_id=35`), em `Não Respondeu`, com interesse associado ao empreendimento Garden Sul. Já recebeu primeiro contato e três repescagens; ainda não há resposta real registrada no CRM.

## Dados operacionais
- Cliente ID: 11110
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: número brasileiro com WhatsApp confirmado no CRM; JID salvo utilizado no envio
- Última interação relevante: 2026-05-02 09:12 -03 — repescagem step 3 enviada com sucesso

## Contexto comercial
- Empreendimento de interesse: Garden Sul
- Localização: Jardim Sul, Zona Sul de Uberlândia/MG
- Tipo: apartamento em lançamento
- Perfil do produto: apartamentos de 2 quartos com suíte, plantas tipo e térreas, lazer e portaria projetada
- Prazo de entrega informado no CRM: set/2028
- Valores no CRM: a partir de aproximadamente R$ 294.900
- Origem operacional: SLA Cascata a partir do cliente original 11018, com histórico humano anterior sem resposta útil consolidada

## Diagnóstico
### Necessidade
Ainda não há resposta da cliente. O interesse inicial parece vinculado ao Garden Sul, mas não há confirmação se a busca é para moradia, investimento ou comparação de opções.

### Momento
Silêncio após primeiro contato e três repescagens. O fluxo atual segue como repescagem para tentar gerar a primeira microresposta, sem pressionar visita antes de entender o contexto.

### Decisão
Sem informação sobre decisores ou influência familiar.

### Viabilidade
Sem dados de entrada, renda ou forma de pagamento. A repescagem step 2 explorou plano de compra/financiamento. A repescagem step 3 mudou o ângulo para uso do imóvel — morar ou investir — evitando repetir o racional de encaixe/financiamento.

## Histórico curado de interações
### 2026-04-29 — Primeiro contato manual
Primeiro contato manual enviado pelo Reno via WhatsApp após correção da rota `famachat-created`. Mensagem contextualizou o Garden Sul/Jardim Sul e perguntou se a região fazia sentido. Resultado: envio bem-sucedido; aguardando resposta.

### 2026-04-29 — Repescagem step 1
Mensagem de repescagem abordou o Garden Sul e a necessidade de entender se o imóvel combinava com o momento da cliente antes de olhar opções soltas. Pergunta buscou permissão para avaliar se o perfil do imóvel encaixava. Resultado: envio registrado no CRM; sem resposta até a próxima execução.

### 2026-04-30 — Repescagem step 2
Ângulo usado: imóvel específico + financiamento/viabilidade, evitando repetir o racional de encaixe do step 1.

Mensagem enviada:
> Oi, Jessica! Tudo bem? 🔑
>
> Como o Garden Sul é um lançamento na Zona Sul, com entrega mais pra frente, o ponto agora não é só gostar da planta: é ver se o **plano de compra** faz sentido para o seu momento.
>
> Isso ajuda a evitar olhar uma opção bonita, mas que depois não encaixa bem em entrada, parcela ou prazo.
>
> Sua ideia seria comprar financiado ou você ainda está comparando possibilidades primeiro?

Resultado: WhatsApp enviado com sucesso para o JID salvo no CRM. CRM atualizado via `mark_reno_followup_sent` para `step=2`, `last_sent_at=2026-04-30T13:19:26-03:00`, `next_run_at=2026-05-01T14:20:00-03:00`, `enabled=true`, `stopped_reason=null`.

### 2026-05-02 — Repescagem step 3
Ângulo usado: diagnóstico leve sobre finalidade de compra. A mensagem mudou o foco em relação ao step 2: saiu de plano de compra/financiamento e entrou em uso do imóvel, perguntando se a busca é para morar ou investir.

Mensagem enviada:
> Jessica, tudo bem? 🏡
>
> No caso do Garden Sul, além de valores e plantas, tem um ponto que muda bastante a orientação: se a compra seria para **morar** ou para **investir**.
>
> Como é um lançamento na Zona Sul, isso influencia desde o tipo de planta até a forma de pensar prazo e escolha da unidade.
>
> Hoje você está olhando mais para morar ou para investir?

Resultado: WhatsApp enviado com sucesso para o JID salvo no CRM. CRM atualizado via `mark_reno_followup_sent` para `step=3`, `last_sent_at=2026-05-02T09:12:27-03:00`, `next_run_at=2026-05-02T19:10:00-03:00`, `enabled=true`, `stopped_reason=null`.

## Objeções e travas
- Trava principal atual: ausência de resposta.
- Lacuna comercial: ainda não há dados de finalidade da compra, financiamento, prazo de compra, decisores ou preferência de planta.

## Próximo passo
Aguardar resposta da cliente. Se responder, mover condicionalmente de `Não Respondeu` para `Em Atendimento` e seguir atendimento normal do Reno fora do fluxo de repescagem. Se continuar silenciosa e `next_run_at` vencer, próxima repescagem elegível será step 4 com convite consultivo mais direto, evitando repetir os ângulos de encaixe, financiamento e morar/investir.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11110-jessica.md`.
- Existe caminho legado `_agents/reno/clientes/11110-jessica.md` localizado em busca anterior; não foi atualizado nesta execução para evitar continuar drift. Conteúdo útil deve ser consolidado no documento oficial em momento de migração/auditoria.
