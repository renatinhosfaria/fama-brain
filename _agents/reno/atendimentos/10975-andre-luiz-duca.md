---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Andre Luiz duca
client_id: 10975
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-04-27'
updated: '2026-05-01'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
---
# Atendimento — Andre Luiz duca

## Resumo atual
Cliente em fluxo do Reno, status CRM `Não Respondeu`, sem resposta real identificada após primeiro contato e três repescagens. Repescagem step 3 enviada em 2026-05-01 com abordagem diferente das anteriores: saiu do eixo moradia/investimento e viabilidade genérica para diagnóstico leve de prazo, usando o fato de o Union Vista ser lançamento com entrega prevista para 2027.

## Dados operacionais
- Cliente ID: 10975
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata / reentrada Facebook Ads
- Telefone/WhatsApp: WhatsApp disponível no CRM; JID salvo usado no envio
- Última interação relevante: repescagem step 3 enviada em 2026-05-01T18:49:15-03:00

## Contexto comercial
Interesse associado ao empreendimento Union Vista, região do Grand Ville, com reentrada por Facebook Ads. Empreendimento: apartamento em lançamento, Grand Ville/Zona Leste de Uberlândia, entrega prevista para Jul/2027, opções cadastradas de 2 quartos com valores a partir de aproximadamente R$ 292 mil. Não há diagnóstico declarado do cliente porque ele ainda não respondeu.

## Diagnóstico
### Necessidade
Ainda não confirmada. Sinal inicial aponta interesse por empreendimento específico.

### Momento
Cliente silencioso após contato inicial e repescagens steps 1 e 2. Step 3 buscou abrir resposta pelo critério de prazo: imóvel mais imediato vs lançamento para 2027.

### Decisão
Sem informação confirmada sobre decisores.

### Viabilidade
Sem dados confirmados de renda, entrada, crédito ou financiamento. Abordagem deve manter leitura consultiva sem prometer aprovação. Como o imóvel é lançamento, há possibilidade de argumentar sobre organização de entrada/financiamento ao longo do prazo, sempre como análise inicial, não promessa.

## Histórico curado de interações
### 2026-04-27 — Recuperação manual autorizada
Resultado inicial: houve registro de supressão por duplicidade/histórico, com status preservado naquele momento. Posteriormente o caso foi retomado para primeiro contato do Reno conforme recuperação operacional.

### 2026-04-27 — Primeiro contato de recuperação
Primeiro WhatsApp de recuperação enviado pelo Reno. Contexto usado: interesse no Union Vista, região do Grand Ville. Status CRM passou a/permaneceu como `Não Respondeu` e o próximo passo era aguardar resposta para qualificação.

### 2026-04-29 — Repescagem step 1
Reno enviou repescagem step 1 contextualizando Union Vista/Grand Ville e perguntando se o cliente pensava mais em morar ou investir. Cliente permaneceu sem resposta real no CRM.

### 2026-04-30 — Repescagem step 2
Fluxo: repescagem.
Step enviado: 2.
Ângulo/contexto comercial: imóvel específico + evitar caminho errado/viabilidade inicial.
Mensagem enviada:

> Oi, Andre! Tudo bem? 🔑
>
> Como seu interesse veio pelo Union Vista, no Grand Ville, o ideal agora é não olhar só o empreendimento isolado. Vale conferir se região, perfil do apê e condição de compra fazem sentido para você, para evitar perder tempo com opção que parece boa mas não encaixa.
>
> Posso fazer essa primeira leitura de forma **bem objetiva** por aqui.
>
> Você quer que eu olhe esse caminho considerando mais moradia ou investimento?

Registro CRM: envio registrado pela tool específica do Reno (`mark_reno_followup_sent`), nota CRM id 16101.
Próximo follow-up previsto: 2026-05-01T14:20:00-03:00.

### 2026-05-01 — Repescagem step 3
Fluxo: repescagem.
Step enviado: 3.
Intenção: diagnóstico leve.
Ângulo/contexto comercial: imóvel específico + prazo de entrega do lançamento, mudando a abordagem em relação aos steps anteriores.
Comparação de abordagem: step 1 perguntou moradia/investimento; step 2 focou encaixe de região/perfil/condição; step 3 trouxe o prazo do lançamento/entrega em 2027 como novo motivo para resposta.
Mensagem enviada:

> Andre, tudo bem? 🏡
>
> Um ponto importante sobre o Union Vista é que ele é lançamento, com entrega prevista para 2027. Isso muda bastante a análise: para algumas pessoas faz sentido porque dá tempo de organizar entrada/financiamento; para outras, o melhor é buscar algo mais pronto.
>
> Pra eu te orientar sem te mandar opção fora do seu momento: **você está buscando algo mais imediato ou pode considerar um lançamento para 2027?**

Registro CRM: envio registrado pela tool específica do Reno (`mark_reno_followup_sent`), nota CRM id 16322.
Próximo follow-up previsto: 2026-05-02T19:10:00-03:00.

## Objeções e travas
- Silêncio após contato inicial e três repescagens: tratar como baixa fricção, sem pressão por visita neste momento.
- Histórico de duplicidade/recuperação operacional: manter CRM como fonte de verdade e evitar mensagens genéricas repetidas.

## Próximo passo
Aguardar resposta do cliente. Se continuar sem resposta e permanecer elegível (`broker_id=35`, status `Não Respondeu`, branch ativa), próxima execução poderá enviar repescagem step 4 em 2026-05-02T19:10:00-03:00 com convite consultivo mais direto. Se houver resposta real, parar repescagem e migrar atendimento para fluxo normal do Reno.

## Observações operacionais
- Documento oficial consolidado em `_agents/reno/atendimentos/10975-andre-luiz-duca.md` conforme governança canônica.
- Envio de 2026-05-01 realizado para JID WhatsApp salvo no CRM, evitando divergência de nono dígito.
- Status CRM não foi alterado pela repescagem; permanece `Não Respondeu` até resposta real.
- `meta_data.reno_followup.repescagem` atualizado via `mark_reno_followup_sent`: step 3, `last_sent_at=2026-05-01T18:49:15-03:00`, `next_run_at=2026-05-02T19:10:00-03:00`, `stopped_reason=null`.
