---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Eva Neves
client_id: 10929
broker_id: 35
status_crm: Arquivado
source: FamaChat
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
# Atendimento — Eva Neves

## Resumo atual
Cliente do Reno originada de SLA Cascata, com interesse contextual no **Union Vereda**. Permaneceu sem resposta real após reenvio inicial e 5 repescagens enviadas por WhatsApp. Em **2026-05-03**, a repescagem step 5 foi enviada como encerramento elegante; a branch `reno_followup.repescagem` foi encerrada com `step=5`, `enabled=false`, `next_run_at=null` e `stopped_reason=max_steps`. Como o CRM ainda estava em `Não Respondeu`, o cliente foi arquivado automaticamente por regra operacional defensiva.

## Dados operacionais
- Cliente ID: 10929
- Broker ID: 35
- Status CRM: Arquivado
- Origem: SLA Cascata
- Telefone/WhatsApp: WhatsApp confirmado no CRM; envios feitos pelo JID salvo.
- Cliente original de contexto da Cascata: 10838
- Última interação relevante: 2026-05-03 09:44:27-03:00 — repescagem step 5 enviada e régua concluída.

## Contexto comercial
O histórico operacional indica interesse no **Union Vereda**, na região do **Jaraguá**, em Uberlândia. O empreendimento tem entrega prevista para **dezembro/2028** e unidades disponíveis de 2 quartos, com faixa aproximada a partir de R$ 288 mil. No cliente original de origem da Cascata (10838), há contexto útil de que Eva começou a procurar agora, compraria sozinha e demonstrou intenção de fazer aprovação primeiro; esse contexto foi usado apenas como apoio consultivo, mantendo o cliente 10929 como entidade operacional da repescagem.

## Diagnóstico
### Necessidade
Busca associada a imóvel específico, possivelmente com necessidade de entender se o Union Vereda faz sentido antes de avançar.

### Momento
Cliente permaneceu silenciosa durante toda a régua Reno. A compra na planta e a entrega futura exigiriam confirmar timing e viabilidade, mas não houve resposta para avançar o diagnóstico.

### Decisão
Há sinal do cliente original de compra individual, mas sem confirmação direta no atendimento Reno.

### Viabilidade
Há indicação contextual de interesse em aprovação/documentos no cliente original. Não há dados confirmados de renda, entrada ou capacidade de financiamento; nenhuma promessa de crédito foi feita.

## Histórico curado de interações
### 2026-04-25 — Reenvio inicial do Reno
Reno reenviou contato inicial mencionando o interesse no Union Vereda/Jaraguá. Status preservado como Não Respondeu.

### 2026-04-28 — Repescagem step 1
Reno enviou follow-up de repescagem step 1. Abordagem registrada no CRM: tentativa genérica de retomada perguntando se ainda fazia sentido ajudar com a busca do imóvel. O CRM registrou próximo follow-up posteriormente ajustado/migrado para a matriz atual.

### 2026-04-29 — Repescagem step 2 enviada
Fluxo: repescagem  
Step enviado: 2  
Ângulo/contexto usado: imóvel específico + evitar caminho errado/viabilidade inicial  
Mensagem enviada:

> Oi, Eva! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, antes de seguir olhando opções soltas, o mais importante é entender se ele combina com seu momento de compra — região, forma de pagamento e faixa de valor precisam fazer sentido pra não te fazer perder tempo.
>
> Posso fazer uma primeira leitura **bem simples e realista** pra te orientar por onde vale começar?

Registro CRM: envio registrado via tool específica do Reno (`mark_reno_followup_sent`).  
Próximo `next_run_at`: 2026-04-30T14:20:00-03:00.

### 2026-04-30 — Repescagem step 3 enviada
Fluxo: repescagem  
Step enviado: 3  
Ângulo/contexto usado: imóvel específico + diagnóstico leve de prazo/timing de compra  
Comparação com abordagem anterior: mudou de viabilidade/encaixe financeiro-região para prazo de entrega; mudou a pergunta de convite para análise para escolha objetiva entre mudança rápida e entrega futura; mudou o benefício de evitar perda de tempo com opções soltas para evitar orientação no timing errado.  
Mensagem enviada:

> Oi, Eva! Tudo bem? 🏡
>
> O Union Vereda tem um ponto importante: é um projeto com entrega mais pra frente, então ele pode fazer muito sentido dependendo do seu prazo e do tipo de compra que você está planejando.
>
> Pra eu não te orientar no caminho errado: você pensa em algo para **mudar mais rápido** ou consegue considerar uma entrega futura?

Registro CRM: envio registrado via tool específica do Reno (`mark_reno_followup_sent`).  
Próximo `next_run_at`: 2026-05-01T19:10:00-03:00.

### 2026-05-02 — Repescagem step 4 enviada
Fluxo: repescagem  
Step enviado: 4  
Ângulo/contexto usado: financiamento/aprovação + convite consultivo direto.  
Comparação com abordagem anterior: mudou o eixo de prazo de entrega para aprovação/documentos; mudou a pergunta de escolha sobre timing para permissão objetiva de orientar a análise; mudou o benefício de evitar orientação no timing errado para evitar expectativa errada antes de validar viabilidade.  
Mensagem enviada:

> Eva, tudo bem? 🔑
>
> Vou te falar de forma bem objetiva: como o Union Vereda é uma compra na planta, olhar só o imóvel pode não responder a parte mais importante — se o caminho de aprovação e documentos faz sentido pra você.
>
> Se sua ideia for comprar sozinha, dá pra começar pela **viabilidade da aprovação**, sem criar expectativa errada nem compromisso de decisão agora.
>
> Quer que eu te diga por onde começamos essa análise?

Registro CRM: envio registrado via tool específica do Reno (`mark_reno_followup_sent`).  
Próximo `next_run_at`: 2026-05-03T09:10:00-03:00.

### 2026-05-03 — Repescagem step 5 enviada e régua encerrada
Fluxo: repescagem  
Step enviado: 5  
Intenção: encerramento elegante da régua, pausando os contatos sem queimar relacionamento.  
Ângulo/contexto usado: respeito ao momento da cliente + porta aberta para retomada futura/comparação de caminho.  
Comparação com abordagem anterior: mudou de convite consultivo sobre aprovação/documentos para pausa respeitosa; mudou a pergunta de permissão para iniciar análise para permissão de deixar o atendimento pausado; mudou o benefício de validar viabilidade para evitar insistência e deixar retomada futura aberta.  
Mensagem enviada:

> Eva, vou pausar meus contatos por aqui para respeitar seu momento. 🏡
>
> Como o Union Vereda envolve obra e planejamento de compra, talvez agora não seja a hora certa de falar disso — e tudo bem.
>
> Se fizer sentido retomar depois, posso te ajudar a comparar com calma se ele é o melhor caminho ou se vale olhar outra opção mais alinhada ao seu prazo.
>
> Prefere que eu deixe seu atendimento **pausado por enquanto**?

Registro CRM: envio registrado via `mark_reno_followup_sent` em 2026-05-03 09:44:27-03:00.  
Estado final validado: `step=5`, `enabled=false`, `next_run_at=null`, `stopped_reason=max_steps`.  
Status final: cliente arquivado automaticamente no FamaChat por condição defensiva.

## Objeções e travas
- Silêncio após contato inicial e todas as repescagens; nenhuma objeção declarada no atendimento Reno.
- Falta de confirmação direta sobre prazo, aprovação, documentos e preferência real impediu avanço consultivo.

## Próximo passo
Sem nova ação automática de repescagem. Se a cliente responder futuramente, reabrir o atendimento fora da skill de repescagem, mover para fluxo de qualificação do Reno quando aplicável e atualizar o CRM conforme o status vigente.

## Observações operacionais
- Cliente selecionada por fila exclusiva de repescagem: `broker_id=35`, `status=Não Respondeu`, branch `meta_data.reno_followup.repescagem.enabled=true`, `stopped_reason=null`, `step=4`, `next_run_at` vencido.
- Envio WhatsApp realizado pelo JID salvo no CRM, sem expor número completo no relatório operacional.
- Após o envio do step 5, `mark_reno_followup_sent` registrou `step=5`, mas manteve inicialmente `enabled=true`, `next_run_at` preenchido e `stopped_reason=null`. O estado foi corrigido com `update_reno_followup_state` antes do arquivamento defensivo.
- Arquivamento executado somente depois da verificação de `step=5` e `stopped_reason=max_steps`, com proteção por `id`, `broker_id=35` e status ainda exatamente `Não Respondeu`.
- Nota CRM de arquivamento registrada pelo Reno em 2026-05-03.
