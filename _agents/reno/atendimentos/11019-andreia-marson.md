---
type: entity-profile
owner: reno
created: '2026-04-28'
updated: '2026-05-03'
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
Cliente do Reno no CRM (`broker_id=35`), status atual `Não Respondeu`, origem Facebook Ads. Interesse vinculado ao empreendimento Union Vista, no bairro Grand Ville, em Uberlândia. Ainda não há resposta real da cliente após o primeiro contato e quatro repescagens tecnicamente enviadas. A repescagem step 4 foi enviada em 2026-05-03 com convite consultivo direto para análise/possível visita na segunda-feira, sem alterar o status CRM.

## Dados operacionais
- Cliente ID: 11019
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- Telefone/WhatsApp: WhatsApp confirmado no CRM; JID salvo utilizado para envio, sem expor número completo.
- Empreendimento vinculado: Union Vista — Grand Ville — Uberlândia/MG
- Última interação relevante: repescagem step 4 enviada em 2026-05-03 19:32:04 -03:00

## Contexto comercial
A cliente veio de anúncio relacionado ao Union Vista, empreendimento de apartamentos no Grand Ville, Zona Leste de Uberlândia, com entrega prevista para Jul/2027. Há unidades de 2 quartos, 1 suíte, varanda e 1 vaga, com valores cadastrados a partir de aproximadamente R$ 292 mil. Não há, até o momento, informação declarada sobre necessidade, forma de pagamento, prazo de compra ou se a busca é para morar/investir.

## Diagnóstico
### Necessidade
Interesse inicial em imóvel específico, mas sem resposta suficiente para confirmar necessidade residencial, investimento ou perfil familiar.

### Momento
Cliente silenciosa desde o primeiro contato. O timing de compra ainda não foi identificado. O step 4 buscou mudar de diagnóstico leve para convite consultivo direto, tentando levar a cliente para uma análise objetiva e possível visita na segunda-feira.

### Decisão
Sem dados sobre decisores ou influenciadores.

### Viabilidade
Sem dados de renda, entrada, financiamento ou capacidade de compra. A mensagem do step 4 abordou entrada, parcelas durante a obra, financiamento e alternativas próximas como pontos de análise, sem prometer aprovação de crédito.

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

### 2026-05-03 — Repescagem step 4 enviada
Mensagem enviada:

> Andreia, vou ser bem direto contigo 📍
>
> O Union Vista é um lançamento que pode ser interessante, mas só vale avançar se o caminho da compra fizer sentido: entrada, parcelas durante a obra, financiamento e alternativas próximas.
>
> Em vez de eu te mandar mais informação solta por aqui, acho mais útil fazer uma análise objetiva e, se encaixar, te receber na Fama para olhar isso com calma.
>
> Na segunda, posso separar um horário rápido pra gente ver se o Union Vista realmente merece entrar no seu radar?

Ângulo usado: convite consultivo direto, mudando do diagnóstico morar/investir para organização prática do caminho de compra e possível visita na segunda-feira por ser fim de semana. Registro feito no CRM pela ferramenta `mark_reno_followup_sent`. Próximo `next_run_at`: 2026-05-04 09:10 -03:00.

## Objeções e travas
- Silêncio após primeiro contato e repescagens steps 1 a 4.
- Falta de contexto declarado sobre prazo, viabilidade e intenção de compra.

## Próximo passo
Aguardar resposta. Se a cliente responder, interromper repescagem e seguir atendimento normal do Reno, com atualização de status de `Não Respondeu` para `Em Atendimento` quando aplicável. Se permanecer em silêncio e continuar elegível, o próximo envio será a repescagem step 5 em 2026-05-04 09:10 -03:00, com encerramento elegante/pausa respeitosa e sem repetir convite de agenda.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11019-andreia-marson.md`.
- Existe registro legado em `_agents/reno/clientes/11019-andreia-marson.md`; não foi usado como destino novo para evitar drift de governança.
- Status CRM não foi alterado pela repescagem step 4, conforme regra operacional: permanece `Não Respondeu` até resposta real da cliente.
- Envio do step 4 realizado via JID salvo no CRM; telefone completo não exposto no vault.
- Claim da repescagem foi limpo pela ferramenta `mark_reno_followup_sent` após o envio bem-sucedido.
