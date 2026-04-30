---
type: entity-profile
owner: renato
created: '2026-04-27'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
entity_type: client
entity_name: Andre Luiz duca
client_id: 10975
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
---
# Atendimento — Andre Luiz duca

## Resumo atual
Cliente em fluxo do Reno, status CRM `Não Respondeu`, sem resposta real identificada após primeiro contato e repescagem anterior. Repescagem step 2 enviada em 2026-04-30 com abordagem contextual sobre Union Vista/Grand Ville e filtro de moradia vs investimento.

## Dados operacionais
- Cliente ID: 10975
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata / reentrada Facebook Ads
- Telefone/WhatsApp: WhatsApp disponível no CRM; JID salvo usado no envio
- Última interação relevante: repescagem step 2 enviada em 2026-04-30T10:31:07-03:00

## Contexto comercial
Interesse associado ao empreendimento Union Vista, região do Grand Ville, com reentrada por Facebook Ads. Não há diagnóstico declarado do cliente porque ele ainda não respondeu. Abordagem comercial deve evitar repetir primeiro contato e criar motivo prático para resposta: analisar se região, perfil do apartamento e condição de compra encaixam antes de avançar em opções soltas.

## Diagnóstico
### Necessidade
Ainda não confirmada. Sinal inicial aponta interesse por empreendimento específico.

### Momento
Cliente silencioso após contato inicial e repescagem step 1; momento de compra ainda não validado.

### Decisão
Sem informação confirmada sobre decisores.

### Viabilidade
Sem dados confirmados de renda, entrada, crédito ou financiamento. Não prometer aprovação; abordagem deve propor leitura simples e realista.

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

## Objeções e travas
- Silêncio após contato inicial/repescagem: tratar como baixa fricção, sem pressão por visita neste momento.
- Histórico de duplicidade/recuperação operacional: manter CRM como fonte de verdade e evitar mensagens genéricas repetidas.

## Próximo passo
Aguardar resposta do cliente. Se continuar sem resposta e permanecer elegível (`broker_id=35`, status `Não Respondeu`, branch ativa), próxima execução poderá enviar repescagem step 3 em 2026-05-01T14:20:00-03:00. Se houver resposta real, parar repescagem e migrar atendimento para fluxo normal do Reno.

## Observações operacionais
- Documento oficial consolidado em `_agents/reno/atendimentos/10975-andre-luiz-duca.md` conforme governança canônica.
- Envio de 2026-04-30 realizado para JID WhatsApp salvo no CRM, evitando divergência de nono dígito.
- Status CRM não foi alterado pela repescagem; permanece `Não Respondeu` até resposta real.
