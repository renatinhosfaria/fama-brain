---
type: entity-profile
owner: renato
entity_type: client
entity_name: Mateus Costa
client_id: 10982
broker_id: 35
status_crm: Não Respondeu
source: FamaChat
created: '2026-04-29'
updated: '2026-04-30'
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
Cliente sob responsabilidade do Reno (broker_id 35), em status CRM `Não Respondeu`, sem resposta real após primeiro contato e repescagens. Interesse operacional associado ao empreendimento Union Vereda, no Jaraguá, Uberlândia. Repescagem step 2 enviada com sucesso em 2026-04-30; próximo follow-up previsto para 2026-05-01T14:20:00-03:00 se o cliente permanecer sem resposta.

## Dados operacionais
- Cliente ID: 10982
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: disponível no CRM; envio realizado pelo WhatsApp salvo/normalizado
- Última interação relevante: repescagem step 2 enviada em 2026-04-30T11:07:37-03:00

## Contexto comercial
- Interesse registrado: Union Vereda, bairro Jaraguá, Uberlândia.
- Produto/contexto: empreendimento da HLTS Construtora, entrega prevista para dez/2028, apartamentos de 2 quartos com valores no CRM a partir de aproximadamente R$ 288 mil.
- Primeiro contato do Reno contextualizou o interesse no Union Vereda e perguntou se a região combinava com a busca.
- Repescagem step 1 reforçou a leitura consultiva do Union Vereda antes de avançar.

## Diagnóstico
### Necessidade
Ainda não há necessidade declarada pelo cliente. O contexto indica busca ou curiosidade por imóvel específico.

### Momento
Cliente permanece silencioso. A abordagem deve reduzir fricção e gerar primeira microresposta, sem pressionar visita.

### Decisão
Não há informação sobre decisores ou composição familiar.

### Viabilidade
Não há dados de renda, entrada, financiamento ou forma de pagamento. Como o empreendimento tem prazo de entrega futuro e faixa de valor específica, a melhor abordagem é convidar para uma primeira leitura simples de encaixe entre valor, prazo e forma de pagamento, sem prometer aprovação.

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

## Objeções e travas
- Silêncio após primeiro contato e repescagem step 1.
- Falta de dados de viabilidade impede aprofundar financiamento, entrada ou parcela.

## Próximo passo
Se não houver resposta real até o próximo vencimento, seguir com repescagem step 3, pedindo uma informação simples para abrir diagnóstico leve. Se houver resposta real, interromper repescagem e seguir atendimento normal do Reno fora desta skill, com status CRM migrando de `Não Respondeu` para `Em Atendimento` quando aplicável.

## Observações operacionais
- Documento oficial criado em `_agents/reno/atendimentos/10982-mateus-costa.md` conforme governança atual.
- Existe documento legado em `_agents/reno/clientes/10982-mateus-costa.md`; conteúdo curado relevante foi consolidado aqui. Não deletado nesta execução.
- Estado de repescagem atualizado no CRM exclusivamente via tool específica `mark_reno_followup_sent`.
- Status CRM não foi alterado pela repescagem.
