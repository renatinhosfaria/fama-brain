---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Alessandra Nascimento
client_id: 11007
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-04-30'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - nao-respondeu
  - union-vista
  - grand-ville
---
# Atendimento — Alessandra Nascimento

## Resumo atual
Cliente sob responsabilidade do Reno (`broker_id=35`), em `Não Respondeu`, com régua de repescagem ativa. Já houve primeiro contato/reenvio inicial e três repescagens sem resposta real registrada até a atualização deste documento. A repescagem mais recente mudou o ângulo para diagnóstico leve sobre objetivo da compra.

## Dados operacionais
- Cliente ID: 11007
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: WhatsApp disponível; JID salvo no CRM usado nos envios
- Última interação relevante: 2026-05-01 20:51 — repescagem step 3 enviada via WhatsApp

## Contexto comercial
Contexto disponível no FamaChat indica interesse no empreendimento **Union Vista**, na região do **Grand Ville**, em Uberlândia. Empreendimento em lançamento, apartamentos de 2 quartos, com entrega prevista para Jul/2027. O cliente original informa que Alessandra já olhou alguns imóveis e pretende comprar sozinha. Não há resposta real da cliente nem diagnóstico direto sobre finalidade de compra, forma de pagamento, prazo ou faixa de entrada.

## Diagnóstico
### Necessidade
Interesse inicial relacionado ao Union Vista/Grand Ville; necessidade ainda não confirmada pela cliente. O dado de origem sugere que ela já está em algum nível de busca, mas sem conversa ativa com o Reno.

### Momento
Silêncio após contato inicial, reenvio inicial e três repescagens. Momento de compra ainda indefinido.

### Decisão
Registro do cliente original indica que Alessandra pretende comprar sozinha; ainda não há confirmação em conversa nem critérios decisórios.

### Viabilidade
Ainda não há dados de entrada, renda, financiamento ou forma de pagamento. O step 2 abordou viabilidade prática; o step 3 evitou repetir financiamento e buscou abrir diagnóstico por objetivo de compra: morar ou investir.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato/backlog enviado
Reno enviou mensagem inicial contextualizando interesse no Union Vista, na região do Grand Ville. Status atualizado para `Não Respondeu`.

### 2026-04-25 — Reenvio inicial preservando status
Reno reenviou abertura inicial em duas mensagens curtas, preservando `Não Respondeu`.

### 2026-04-29 — Repescagem step 1 enviada
- Intenção: novo motivo para responder.
- Ângulo comercial: imóvel específico / Union Vista / Grand Ville.
- Abordagem: organizar a busca e validar se região/perfil do imóvel fazia sentido para o momento da cliente.
- Próximo previsto registrado na ocasião: 2026-04-30T09:10:00-03:00.

Mensagem enviada:

> Oi, Alessandra! Tudo bem? 🏡
>
> Sobre o Union Vista, no Grand Ville, às vezes vale organizar primeiro se essa região e esse perfil de imóvel realmente encaixam no seu momento, antes de ficar olhando opções soltas.
>
> Posso te ajudar a fazer essa leitura de um jeito **simples e sem pressão**.
>
> Você quer começar entendendo se o Union Vista faz sentido para o que você procura?

### 2026-04-30 — Repescagem step 2 enviada
- Intenção: evitar caminho errado.
- Ângulo comercial: financiamento / viabilidade aplicada ao Union Vista.
- Diferenciação vs step 1: saiu do encaixe região/perfil e mudou para entrada, parcela, prazo de entrega e forma de pagamento; pergunta objetiva sobre financiamento.
- Enviado via WhatsApp pelo JID salvo no CRM.
- Próximo `next_run_at`: 2026-05-01T14:20:00-03:00.

Mensagem enviada:

> Alessandra, te chamo por um ponto bem prático sobre o Union Vista 🔑
>
> Como ele é um lançamento no Grand Ville, não é só questão de gostar do imóvel: entrada, parcela e prazo de entrega precisam conversar com o seu plano de compra.
>
> Antes de você gastar tempo olhando planta e valores soltos, posso fazer uma **primeira leitura de viabilidade** pra ver se vale seguir nesse caminho.
>
> Você pretende comprar usando financiamento ou já pensa em outra forma de pagamento?

### 2026-05-01 — Repescagem step 3 enviada
- Intenção: diagnóstico leve.
- Ângulo comercial: objetivo da compra aplicado ao Union Vista — morar vs investir.
- Diferenciação vs step 2: deixou de insistir em entrada/parcela/financiamento e trouxe pergunta de contexto sobre finalidade da compra; benefício destacado mudou para evitar sugestão “no chute” e direcionar critérios diferentes para moradia ou investimento.
- Enviado via WhatsApp pelo JID salvo no CRM.
- Próximo `next_run_at`: 2026-05-02T19:10:00-03:00.

Mensagem enviada:

> Alessandra, vou te perguntar de um jeito bem direto pra não te mandar informação no chute 🏡
>
> Você já olhou alguns imóveis e o Union Vista aparece como uma opção interessante no Grand Ville, mas o caminho muda bastante dependendo do objetivo da compra.
>
> Se for para morar, eu olho mais conforto, rotina e região. Se for investimento, o foco muda para liquidez, entrega e potencial de valorização.
>
> Hoje sua ideia é comprar para **morar** ou para **investir**?

## Objeções e travas
- Trava principal atual: silêncio / ausência de primeira resposta real.
- Sem objeções explícitas registradas.

## Próximo passo
Se não houver resposta real até `2026-05-02T19:10:00-03:00`, a próxima execução elegível pode avançar para repescagem step 4, com convite consultivo direto e sem repetir os ângulos já usados. Se houver resposta real, parar repescagem e seguir o atendimento por fluxo de qualificação, migrando o status para `Em Atendimento` quando aplicável.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11007-alessandra-nascimento.md` seguindo governança atual.
- Existe documento legado em `_agents/reno/clientes/11007-alessandra-nascimento.md`; conteúdo útil foi consolidado aqui. Não foi removido nesta execução.
- CRM/FamaChat permanece como fonte operacional de verdade; Vault concentra contexto curado.
