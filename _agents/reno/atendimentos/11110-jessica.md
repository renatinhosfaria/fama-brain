---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jessica
client_id: 11110
broker_id: 35
status_crm: Arquivado
source: SLA Cascata
created: '2026-04-29'
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - arquivado
---
# Atendimento — Jessica

## Resumo atual
Cliente sob responsabilidade do Reno (`broker_id=35`) foi arquivada automaticamente em 2026-05-03 após conclusão da régua de 5 repescagens sem resposta real registrada no CRM. O interesse estava associado ao empreendimento Garden Sul. O step 5 foi enviado com encerramento elegante, pausa respeitosa e porta aberta para retomada futura, sem repetir o convite de análise/visita usado no step 4.

## Dados operacionais
- Cliente ID: 11110
- Broker ID: 35
- Status CRM: Arquivado
- Origem: SLA Cascata
- Telefone/WhatsApp: número brasileiro com WhatsApp confirmado no CRM; JID salvo utilizado nos envios
- Última interação relevante: 2026-05-03 16:32 -03 — repescagem step 5 enviada com sucesso e cliente arquivada após encerramento da régua

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
Não houve resposta da cliente. O interesse inicial parece vinculado ao Garden Sul, mas não foi possível confirmar se a busca era para moradia, investimento ou comparação de opções.

### Momento
Silêncio após primeiro contato e cinco repescagens. A régua foi concluída e pausada para evitar insistência excessiva. Nova ação automática não deve ocorrer enquanto o caso permanecer arquivado, salvo eventual resposta/reativação humana.

### Decisão
Sem informação sobre decisores ou influência familiar.

### Viabilidade
Sem dados de entrada, renda ou forma de pagamento. A régua explorou progressivamente encaixe do imóvel, plano de compra/financiamento, finalidade morar/investir, convite consultivo para organizar o caminho e, no step final, pausa respeitosa com porta aberta para comparação futura por prazo, condição e alternativas.

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

### 2026-05-02 — Repescagem step 4
Ângulo usado: convite consultivo direto. A mensagem mudou pelo menos três elementos em relação ao step 3: saiu da pergunta morar/investir, destacou o benefício de organizar o caminho e comparar alternativas por prazo/condição/entrega, e levou o próximo passo para uma análise/possível visita na segunda-feira por ser fim de semana.

Mensagem enviada:
> Jessica, te chamando de forma mais direta 📍
>
> Como o Garden Sul é um lançamento na Zona Sul, talvez o melhor agora não seja te mandar mais informação solta. O que costuma ajudar é fazer uma leitura rápida: ver se ele é mesmo o caminho certo ou se vale comparar com outra opção de prazo, condição ou entrega.
>
> Se fizer sentido, na segunda posso organizar isso com você e até deixar uma análise presencial aqui na Fama como próximo passo.
>
> Quer que eu te ajude a organizar esse caminho?

Resultado: WhatsApp enviado com sucesso para o JID salvo no CRM. CRM atualizado via `mark_reno_followup_sent` para `step=4`, `last_sent_at=2026-05-02T22:50:11-03:00`, `next_run_at=2026-05-03T09:10:00-03:00`, `enabled=true`, `stopped_reason=null`. Status permaneceu `Não Respondeu`, conforme regra dos steps 1 a 4.

### 2026-05-03 — Repescagem step 5 e arquivamento automático
Ângulo usado: encerramento elegante. Como o step 4 já tinha usado convite consultivo direto e possível análise/visita na segunda-feira, o step 5 parou de insistir em agenda. A mensagem reconheceu que a cliente pode estar apenas pesquisando/comparando, manteve o contexto do Garden Sul e deixou porta aberta para retomar no futuro.

Mensagem enviada:
> Jessica, vou pausar por aqui, tudo bem? 🏡
>
> Como você olhou o Garden Sul, pode ser que esteja só pesquisando e comparando com calma. Por ser um lançamento na Zona Sul, vale olhar prazo de entrega, condição e perfil da planta antes de ficar presa a uma única opção.
>
> Se em algum momento fizer sentido retomar, eu consigo te ajudar a comparar isso de forma **bem objetiva**, inclusive com alternativas de entrega ou condição diferente.
>
> Posso deixar você à vontade e você me chama quando quiser olhar com calma?

Resultado: WhatsApp enviado com sucesso para o JID salvo no CRM. `mark_reno_followup_sent` registrou o envio como `step=5`, mas inicialmente manteve `enabled=true`, `next_run_at` preenchido e `stopped_reason=null`. O estado foi corrigido com a tool específica `update_reno_followup_state` para `step=5`, `enabled=false`, `next_run_at=null`, `last_sent_at=2026-05-03T16:32:17-03:00` e `stopped_reason=max_steps`. Depois da verificação, o status foi alterado defensivamente de `Não Respondeu` para `Arquivado` e uma nota objetiva de arquivamento foi registrada no CRM.

## Objeções e travas
- Trava principal: ausência de resposta em toda a régua.
- Lacuna comercial: não houve dados de finalidade da compra, financiamento, prazo de compra, decisores ou preferência de planta.

## Próximo passo
Sem nova ação automática enquanto o caso permanecer arquivado. Se a cliente responder futuramente, reativar o atendimento fora do fluxo de repescagem, revisar o histórico, mover o status conforme regra vigente e retomar com abordagem consultiva sobre Garden Sul ou alternativas por prazo, condição e perfil.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11110-jessica.md`.
- Existe caminho legado `_agents/reno/clientes/11110-jessica.md` localizado em busca anterior; não foi atualizado nesta execução para evitar continuar drift. Conteúdo útil deve ser consolidado no documento oficial em momento de migração/auditoria.
- Seleção/claim feita exclusivamente no fluxo `repescagem`, sem trava global compartilhada com Resgate.
- Pitfall recorrente confirmado no step final: `mark_reno_followup_sent` registrou `step=5`, mas não encerrou a branch. Correção aplicada via `update_reno_followup_state` antes do arquivamento defensivo.
- A correção da branch final compactou o estado operacional para os campos essenciais (`step`, `enabled`, `next_run_at`, `last_sent_at`, `stopped_reason`). A mensagem final foi preservada na nota CRM automática e neste documento oficial.
