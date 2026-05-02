---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Vitória Oliveira
client_id: 10931
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-04-22'
updated: '2026-05-02'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - zona-sul
  - garden-sul
  - place-arbi
---
# Atendimento — Vitória Oliveira

## Resumo atual
Cliente do Reno (`broker_id=35`) em `Não Respondeu`, origem Facebook Ads, com interesse registrado em apartamentos na Zona Sul de Uberlândia. Repescagem step 4 enviada com sucesso em 2026-05-02 via WhatsApp usando o JID salvo no CRM. A abordagem mudou para convite consultivo direto: organizar caminho de compra entre lançamento, necessidade de resolver mais rápido e possível financiamento. Próximo follow-up de repescagem previsto para 2026-05-03 às 14:20 se não houver resposta real antes.

## Dados operacionais
- Cliente ID: 10931
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- Telefone/WhatsApp: disponível no CRM; não reproduzido integralmente neste documento
- WhatsApp JID CRM: disponível; envio realizado pelo JID salvo
- Última interação relevante: 2026-05-02 — repescagem step 4 enviada com sucesso

## Contexto comercial
Interesse vindo de Facebook Ads com empreendimentos vinculados no CRM: Garden Sul e Place+Arbi, ambos apartamentos na Zona Sul de Uberlândia. Reentrada automática indicou também interesse no empreendimento Place+Arbi. Não há resposta real da cliente registrada após o primeiro contato/follow-ups até esta atualização.

Contexto dos empreendimentos usado na repescagem:
- Garden Sul: apartamento na Zona Sul/Jardim Sul, lançamento, entrega prevista para set/2028.
- Place+Arbi: apartamento na Zona Sul/Shopping Park, lançamento, entrega prevista para jun/2027.

## Diagnóstico
### Necessidade
Busca provável por apartamento na Zona Sul; contexto ainda pouco qualificado porque a cliente não respondeu.

### Momento
Cliente em silêncio operacional desde a entrada/reentrada. Step 3 buscou destravar uma resposta sobre prazo/momento: mudar mais rápido versus considerar lançamento para 2027/2028. Step 4 avançou para convite consultivo direto, conectando caminho de compra, prazo e financiamento sem pressionar visita.

### Decisão
Sem dados sobre decisores, urgência ou motivação de compra.

### Viabilidade
Sem dados de renda, entrada, modalidade de compra ou financiamento. Nenhuma promessa de crédito foi feita. A abordagem atual propôs leitura inicial do caso para organizar caminho de compra antes de aprofundar opções.

## Histórico curado de interações
### 2026-04-25 — Supressão operacional anterior
Documento legado `_agents/reno/atendimentos/vitoria-oliveira.md` registrava supressão de reenvio inicial por evidência de `lead_automatico` no CRM. Conteúdo útil consolidado aqui para o caminho oficial por `client_id`.

### 2026-04-28 — Repescagem step 1 registrada no CRM
CRM registrou envio de follow-up de repescagem step 1 pelo Reno. Mensagem anotada no CRM: "Oi, Vitória. Ainda faz sentido eu te ajudar com a busca do imóvel?". Cliente permaneceu em `Não Respondeu`.

### 2026-04-29 — Falha técnica seguida de repescagem step 2 enviada
Houve uma falha técnica anterior por conexão recusada no serviço local de WhatsApp. Depois, o CRM registrou envio da repescagem step 2.

Mensagem step 2 registrada:
> Oi, Vitória! Tudo bem? 🏡
>
> Na hora de buscar um imóvel, nem sempre a melhor opção é só a que parece mais bonita no anúncio. O ideal é entender se ela encaixa bem no seu momento, na região e na forma de pagamento.
>
> Posso te ajudar a filtrar isso de um jeito mais prático.
>
> Você está buscando algo para morar ou para investir?

Resultado: cliente permaneceu em `Não Respondeu`. Próximo follow-up ficou previsto para 2026-04-30 às 19:10.

### 2026-04-30 — Repescagem step 3 enviada
Fluxo: repescagem
Step enviado: 3
Ângulo comercial usado: imóvel específico / diagnóstico leve de prazo, diferenciando lançamento e mudança rápida.
Diferenciação em relação ao step anterior: saiu do eixo morar/investir e do filtro genérico de encaixe; passou a usar prazo de entrega dos empreendimentos como motivo novo para resposta; CTA virou pergunta de momento/prazo.

Mensagem enviada:
> Vitória, só para eu não te mandar opção fora do seu momento 📍
>
> Vi que apareceram opções de apartamento na Zona Sul, como Place+Arbi e Garden Sul, que são lançamentos com prazos diferentes. Isso muda bastante o caminho: se for para mudar logo, a busca é uma; se puder esperar, dá para comparar melhor valor, planta e condições.
>
> Hoje você procura algo para mudar mais rápido ou pode considerar lançamento para 2027/2028?

Resultado: envio WhatsApp tecnicamente bem-sucedido pelo JID salvo no CRM. Estado de repescagem atualizado via `mcp_mcp_postgres_mark_reno_followup_sent` para `step=3`, `last_sent_at=2026-04-30T19:25:19-03:00`, `next_run_at=2026-05-01T19:10:00-03:00`, `enabled=true`, `stopped_reason=null`.

### 2026-05-02 — Repescagem step 4 enviada
Fluxo: repescagem
Step enviado: 4
Ângulo comercial usado: imóvel específico + convite consultivo direto, com leitura inicial do caminho de compra.
Diferenciação em relação ao step anterior: saiu da pergunta de prazo/momento; trouxe a organização do caminho de compra como benefício central; incluiu lançamento, necessidade de resolver mais rápido e financiamento como alternativas de diagnóstico; CTA mudou para permissão de leitura inicial do caso.

Mensagem enviada:
> Vitória, vou ser bem direto para não ficar te mandando coisa solta 🏡
>
> Pelo que apareceu aqui, você olhou apartamentos na Zona Sul, mas o ponto agora é entender **qual caminho de compra faz mais sentido para você**: lançamento com prazo maior, algo para resolver mais rápido ou até ajustar pela parte de financiamento.
>
> Se fizer sentido, posso olhar isso contigo de forma objetiva e te dizer por onde vale começar. Quer que eu faça essa leitura inicial do seu caso?

Resultado: envio WhatsApp tecnicamente bem-sucedido pelo JID salvo no CRM. Estado de repescagem atualizado via `mcp_mcp_postgres_mark_reno_followup_sent` para `step=4`, `last_sent_at=2026-05-02T09:49:44-03:00`, `next_run_at=2026-05-03T14:20:00-03:00`, `enabled=true`, `stopped_reason=null`.

## Objeções e travas
- Sem objeção comercial real registrada; cliente não respondeu.
- Histórico de falha técnica anterior no runtime de WhatsApp em 2026-04-29, mas envios posteriores foram bem-sucedidos.

## Próximo passo
Aguardar resposta real da cliente. Se responder, parar repescagem, mover para atendimento normal do Reno conforme status aplicável e qualificar contexto/momento. Se não responder até `next_run_at`, avaliar repescagem step 5 com encerramento elegante e porta aberta, sem repetir pergunta de prazo nem convite genérico de análise.

## Observações operacionais
- Status CRM preservado como `Não Respondeu` durante o worker de repescagem.
- Envio desta execução realizado pelo WhatsApp JID salvo no CRM; telefone completo não reproduzido no vault.
- Documento mantido no caminho oficial determinístico `_agents/reno/atendimentos/10931-vitoria-oliveira.md`.
