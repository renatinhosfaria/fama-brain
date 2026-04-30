---
broker_id: 35
client_id: 11110
created: '2026-04-29'
entity_name: Jessica
entity_type: atendimento
owner: reno
source: SLA Cascata
status_crm: Não Respondeu
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
type: entity-profile
updated: '2026-04-30'
---
# Atendimento — Jessica

## Resumo atual
Cliente sob responsabilidade do Reno (`broker_id=35`), em `Não Respondeu`, com interesse associado ao empreendimento Garden Sul. Já recebeu primeiro contato e duas repescagens; ainda não há resposta real registrada no CRM.

## Dados operacionais
- Cliente ID: 11110
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: número brasileiro com WhatsApp confirmado no CRM; JID salvo utilizado no envio
- Última interação relevante: 2026-04-30 13:19 -03 — repescagem step 2 enviada com sucesso

## Contexto comercial
- Empreendimento de interesse: Garden Sul
- Localização: Jardim Sul, Zona Sul de Uberlândia/MG
- Tipo: apartamento em lançamento
- Perfil do produto: apartamentos de 2 quartos com suíte, plantas tipo e térreas, lazer e portaria projetada
- Prazo de entrega informado no CRM: set/2028
- Valores no CRM: a partir de aproximadamente R$ 294.900

## Diagnóstico
### Necessidade
Ainda não há resposta da cliente. O interesse inicial parece vinculado ao Garden Sul, mas não há confirmação se a busca é para moradia, investimento ou comparação de opções.

### Momento
Silêncio após primeiro contato e repescagem inicial. O fluxo atual é repescagem para tentar gerar a primeira microresposta.

### Decisão
Sem informação sobre decisores ou influência familiar.

### Viabilidade
Sem dados de entrada, renda ou forma de pagamento. A repescagem step 2 mudou o ângulo para plano de compra/financiamento, evitando repetir a pergunta de encaixe do imóvel usada no step anterior.

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

## Objeções e travas
- Trava principal atual: ausência de resposta.
- Lacuna comercial: ainda não há dados de financiamento, prazo de compra, objetivo de uso ou preferência de planta.

## Próximo passo
Aguardar resposta da cliente. Se responder, mover condicionalmente de `Não Respondeu` para `Em Atendimento` e seguir atendimento normal do Reno fora do fluxo de repescagem. Se continuar silenciosa e `next_run_at` vencer, próxima repescagem elegível será step 3 com diagnóstico leve e pergunta única, preferencialmente sem repetir financiamento/encaixe do Garden Sul.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11110-jessica.md`.
- Existe caminho legado `_agents/reno/clientes/11110-jessica.md` localizado em busca anterior; não foi atualizado nesta execução para evitar continuar drift. Conteúdo útil deve ser consolidado no documento oficial em momento de migração/auditoria.
