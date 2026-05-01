---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Mateus Costa
client_id: 10982
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-04-29'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
---
# Atendimento — Mateus Costa

## Resumo atual
Cliente sob responsabilidade do Reno (broker_id 35), em status CRM `Não Respondeu`, sem resposta real após primeiro contato e repescagens. Interesse associado ao empreendimento Union Vereda, no Jaraguá, Uberlândia. Repescagem step 3 enviada com sucesso em 2026-05-01 com ângulo de diagnóstico leve sobre finalidade da busca; próximo follow-up previsto para 2026-05-02T19:10:00-03:00 se o cliente permanecer sem resposta.

## Dados operacionais
- Cliente ID: 10982
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: disponível no CRM; envio realizado pelo `whatsapp_jid` salvo
- Última interação relevante: repescagem step 3 enviada em 2026-05-01T19:31:34-03:00

## Contexto comercial
- Interesse registrado: Union Vereda, bairro Jaraguá, Uberlândia.
- Produto/contexto: empreendimento da HLTS Construtora, entrega prevista para dez/2028, apartamentos de 2 quartos com valores no CRM a partir de aproximadamente R$ 288 mil.
- Cliente original da cascata (10853) trouxe contexto automático: começou a procurar agora e pretende comprar junto com alguém.
- Primeiro contato do Reno contextualizou o interesse no Union Vereda e perguntou se a região combinava com a busca.
- Repescagem step 1 trabalhou o ângulo de imóvel específico e leitura inicial do Union Vereda.
- Repescagem step 2 trabalhou valor, prazo e forma de pagamento para evitar caminho errado.
- Repescagem step 3 mudou o foco para diagnóstico leve: finalidade da busca, distinguindo morar de investir.

## Diagnóstico
### Necessidade
Ainda não há necessidade declarada pelo cliente. O contexto indica busca inicial por imóvel específico, com possibilidade de compra planejada em conjunto.

### Momento
Cliente permanece silencioso. Como começou a procurar agora e o empreendimento tem entrega futura, a abordagem mais útil é obter uma microresposta sobre finalidade e timing, sem pressionar visita.

### Decisão
Há sinal de que pretende comprar junto com alguém, mas sem detalhes sobre decisores, influência familiar ou dependência de aprovação.

### Viabilidade
Não há dados de renda, entrada, financiamento ou forma de pagamento. Como o Union Vereda tem faixa de valor específica e entrega em 2028, a viabilidade deve ser tratada com cuidado e sem promessa de crédito.

## Histórico curado de interações
### 2026-04-27 — Primeiro contato enviado
Reno enviou primeiro contato via WhatsApp, contextualizando o interesse no Union Vereda/Jaraguá e perguntando se a região combinava com o que o cliente buscava. Cliente permaneceu sem resposta real.

### 2026-04-29 — Repescagem step 1 enviada
Mensagem enviada com ângulo de imóvel específico, propondo avaliar se o Union Vereda fazia sentido para o momento do cliente antes de avançar.

### 2026-04-30 — Repescagem step 2 enviada
Fluxo: repescagem.

Contexto/ângulo comercial usado: imóvel específico + evitar caminho errado. O argumento foi orientar o cliente a olhar valor, prazo de entrega e forma de pagamento antes de seguir apenas pela atratividade do imóvel.

Mensagem enviada:
```text
Oi, Mateus! Tudo bem? 🔑

Sobre o Union Vereda, no Jaraguá, vale olhar com cuidado antes de seguir só pela opção do imóvel. Como é um empreendimento com entrega mais pra frente e unidades na faixa dos 2 quartos, o principal é ver se **valor, prazo e forma de pagamento** combinam com o seu momento.

Assim você evita perder tempo com uma opção bonita, mas que talvez não encaixe bem na compra.

Quer que eu te ajude a fazer essa primeira leitura?
```

Data/hora de envio: 2026-04-30T11:07:37-03:00.
Próximo next_run_at: 2026-05-01T14:20:00-03:00.

### 2026-05-01 — Repescagem step 3 enviada
Fluxo: repescagem.

Contexto/ângulo comercial usado: diagnóstico leve + finalidade da busca. A mensagem mudou a abordagem em relação aos steps anteriores: saiu de encaixe/viabilidade do imóvel e perguntou se a busca é para morar ou investir, usando como contexto a entrega em 2028 e o fato de o cliente ter começado a procurar agora.

Mensagem enviada:
```text
Mateus, tudo bem? 📍

Como você começou a procurar agora e o Union Vereda tem entrega para 2028, o caminho muda bastante dependendo se a ideia é comprar para morar mais pra frente ou só entender a possibilidade com calma.

Pra eu não te mandar opção fora do seu momento: **essa busca é para morar ou para investir?**
```

Data/hora de envio: 2026-05-01T19:31:34-03:00.
Próximo next_run_at: 2026-05-02T19:10:00-03:00.

## Objeções e travas
- Silêncio após primeiro contato e repescagens steps 1 e 2.
- Falta de dados de viabilidade impede aprofundar financiamento, entrada ou parcela.
- Falta de resposta sobre finalidade da busca impede separar moradia, investimento ou pesquisa inicial.

## Próximo passo
Se não houver resposta real até o próximo vencimento, seguir com repescagem step 4 em 2026-05-02T19:10:00-03:00, com convite consultivo mais direto e sem repetir a pergunta de morar/investir. Se houver resposta real, interromper repescagem e seguir atendimento normal do Reno fora desta skill, com status CRM migrando de `Não Respondeu` para `Em Atendimento` quando aplicável.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/10982-mateus-costa.md` conforme governança atual.
- Existe documento legado em `_agents/reno/clientes/10982-mateus-costa.md`; conteúdo curado relevante foi consolidado aqui. Não deletado nesta execução.
- Envio do step 3 realizado pelo `whatsapp_jid` salvo no CRM.
- Estado de repescagem atualizado no CRM exclusivamente via tool específica `mark_reno_followup_sent`.
- Status CRM não foi alterado pela repescagem.
