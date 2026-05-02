---
type: entity-profile
owner: reno
created: '2026-04-28'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
entity_type: atendimento
entity_name: Andreia Marson
broker_id: 35
client_id: 11019
source: Facebook Ads
status_crm: Não Respondeu
---
# Atendimento — Andreia Marson

## Resumo atual
Cliente do Reno no CRM (`broker_id=35`), status atual `Não Respondeu`, origem Facebook Ads. Interesse vinculado ao empreendimento Union Vista, no bairro Grand Ville, em Uberlândia. Ainda não há resposta real da cliente após o primeiro contato e três repescagens tecnicamente enviadas.

## Dados operacionais
- Cliente ID: 11019
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- Telefone/WhatsApp: WhatsApp confirmado no CRM; JID salvo utilizado para envio, sem expor número completo.
- Empreendimento vinculado: Union Vista — Grand Ville — Uberlândia/MG
- Última interação relevante: repescagem step 3 enviada em 2026-05-02 08:55:55 -03:00

## Contexto comercial
A cliente veio de anúncio relacionado ao Union Vista, empreendimento de apartamentos no Grand Ville, Zona Leste de Uberlândia, com entrega prevista para Jul/2027. Há unidades de 2 quartos, 1 suíte, varanda e 1 vaga, com valores cadastrados a partir de aproximadamente R$ 292 mil. Não há, até o momento, informação declarada sobre necessidade, forma de pagamento, prazo de compra ou se a busca é para morar/investir.

## Diagnóstico
### Necessidade
Interesse inicial em imóvel específico, mas sem resposta suficiente para confirmar necessidade residencial, investimento ou perfil familiar.

### Momento
Cliente silenciosa desde o primeiro contato. O timing de compra ainda não foi identificado. O step 3 buscou abrir uma microresposta por diagnóstico leve: diferenciar se o interesse no Union Vista seria para morar ou para investimento.

### Decisão
Sem dados sobre decisores ou influenciadores.

### Viabilidade
Sem dados de renda, entrada, financiamento ou capacidade de compra. Não há promessa de crédito; abordagem deve seguir consultiva, buscando entender primeiro objetivo de compra e depois viabilidade.

## Histórico curado de interações
### 2026-04-27 — Primeiro contato enviado
CRM revalidado; WhatsApp utilizável; primeiro contato enviado pelo Reno via WhatsApp. Mensagem contextualizou interesse no Union Vista, no Grand Ville, e perguntou se a região combinava com o que a cliente buscava. Status preservado em `Não Respondeu`.

### 2026-04-29 — Repescagem step 1 enviada
Primeira repescagem enviada via WhatsApp. Ângulo usado: organizar busca pelo Union Vista antes de olhar opções soltas, com pergunta entre região do Grand Ville ou viabilidade da compra. Próximo follow-up foi posteriormente ajustado pela matriz oficial para 2026-04-30 09:10 -03:00.

### 2026-04-30 — Repescagem step 2 enviada
Mensagem enviada:

> Oi, Andreia! 🔑
>
> No Union Vista, além do valor, o prazo de entrega e a forma de pagamento até 2027 mudam bastante o caminho.
>
> Às vezes o imóvel parece interessante, mas o mais importante é conferir se ele combina com seu plano antes de separar opção ou simulação.
>
> Quer que eu veja com você se esse tipo de lançamento faz sentido para o seu prazo de compra?

Ângulo usado: evitar caminho errado antes de simulação/opção, mudando o foco da mensagem anterior para prazo de entrega e plano de compra. Registro feito no CRM pela ferramenta `mark_reno_followup_sent`. Próximo `next_run_at`: 2026-05-01 14:20 -03:00.

### 2026-05-02 — Repescagem step 3 enviada
Mensagem enviada:

> Andreia, pensando no Union Vista, tem um ponto que muda bastante a indicação certa 🏡
>
> Ele pode fazer sentido tanto para quem quer morar com estrutura de condomínio, quanto para quem olha como uma compra de médio prazo na Zona Leste.
>
> Para eu não te direcionar por um caminho errado, sua ideia hoje seria **morar** ou **comprar como investimento**?

Ângulo usado: diagnóstico leve sobre finalidade da compra, diferente dos steps anteriores que focaram em região/viabilidade e prazo/forma de pagamento. Pergunta única de baixa fricção para identificar se a busca é para morar ou investir. Registro feito no CRM pela ferramenta `mark_reno_followup_sent`. Próximo `next_run_at`: 2026-05-03 19:10 -03:00.

## Objeções e travas
- Silêncio após primeiro contato e repescagens steps 1 e 2.
- Falta de contexto declarado sobre prazo, viabilidade e intenção de compra.

## Próximo passo
Aguardar resposta. Se permanecer em silêncio e continuar elegível em `Não Respondeu`, o próximo envio será a repescagem step 4 em 2026-05-03 19:10 -03:00, com convite consultivo mais direto e sem repetir o argumento de prazo/forma de pagamento nem a pergunta morar/investir.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11019-andreia-marson.md`.
- Existe registro legado em `_agents/reno/clientes/11019-andreia-marson.md`; não foi usado como destino novo para evitar drift de governança.
- Status CRM não foi alterado pela repescagem, conforme regra operacional: permanece `Não Respondeu` até resposta real da cliente.
- Envio do step 3 realizado via JID salvo no CRM; telefone completo não exposto no vault.
