---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Eliane Maria Martins
client_id: 11171
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-05'
updated: '2026-05-06'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - union-vereda
---
# Atendimento — Eliane Maria Martins

## Resumo atual
Repescagem step 2 enviada com sucesso via WhatsApp em 2026-05-06 09:33 BRT. Cliente permanece em `Não Respondeu`, sem alteração de status, aguardando primeira resposta. Próxima repescagem prevista para 2026-05-07 14:20 BRT se continuar silenciosa.

## Dados operacionais
- Cliente ID: 11171
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp: cadastrado no CRM
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: repescagem step 2 enviada pelo Reno em 2026-05-06 09:33 BRT.

## Contexto comercial
Cliente demonstrou interesse no Union Vereda, lançamento no bairro Jaraguá, em Uberlândia. O empreendimento tem apartamentos de 2 quartos com suíte e varanda/sacada, opções publicadas a partir de aproximadamente R$ 288 mil e entrega prevista para Dez/2028.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A repescagem step 1 buscou abrir conversa pela finalidade de compra; a step 2 mudou para viabilidade prática do lançamento.

### Momento
Ainda não identificado. Como o imóvel é lançamento com entrega futura, o timing de compra precisa ser confirmado quando houver resposta.

### Decisão
Ainda não identificada.

### Viabilidade
Ainda não identificada. A step 2 abordou entrada, parcelas da obra e financiamento como pontos de leitura prática, sem prometer crédito ou aprovação.

## Histórico curado de interações
### 2026-05-04 — Falha técnica no primeiro envio
Webhook `cliente.created` foi aceito, mas o envio WhatsApp não concluiu. Status permaneceu `Sem Atendimento`.

### 2026-05-05 — Primeiro contato reprocessado
Reprocessamento autorizado por Renato. Mensagem enviada em duas partes: apresentação curta do Reno contextualizando interesse no Union Vereda/Jaraguá e pergunta se a cliente procura imóvel nessa região. CRM atualizado para `Não Respondeu`; repescagem inicializada para acompanhar silêncio.

### 2026-05-05 — Repescagem step 1 enviada
Mensagem enviada com ângulo de organização da busca/finalidade de compra, mudando a abordagem do primeiro contato que já havia perguntado sobre região.

Mensagem enviada:
> Oi, Eliane! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, o anúncio pode chamar atenção, mas o melhor começo é entender se o lançamento combina com o seu plano antes de ficar olhando opção solta.
>
> Assim eu consigo te orientar de forma **mais direcionada**.
>
> Você olha esse imóvel mais para **morar** ou para **comparar uma oportunidade de compra**?

Estado CRM após marcação: `repescagem.step=1`, `enabled=true`, `stopped_reason=null`, `last_sent_at=2026-05-05T19:26:35-03:00`, `next_run_at=2026-05-06T09:10:00-03:00`.

### 2026-05-06 — Repescagem step 2 enviada
Mensagem enviada com ângulo de evitar caminho errado/viabilidade prática do lançamento. Diferenciação em relação à step 1: saiu de finalidade de compra para entrada, parcelas da obra e financiamento; mudou de pergunta de finalidade para convite de leitura objetiva; destacou redução de perda de tempo em vez de organização genérica da busca.

Mensagem enviada:
> Eliane, tudo bem? 🔑
>
> Pensando no Union Vereda, tem um ponto que costuma evitar perda de tempo: por ser um lançamento com entrega em Dez/2028, a compra precisa encaixar bem em **entrada, parcelas da obra e financiamento**.
>
> Assim você não fica presa só ao anúncio e consegue entender se esse caminho faz sentido pra você agora.
>
> Quer que eu faça uma primeira leitura objetiva contigo pra ver se esse perfil de imóvel cabe no seu plano?

Estado CRM após marcação: `repescagem.step=2`, `enabled=true`, `stopped_reason=null`, `last_sent_at=2026-05-06T09:33:06-03:00`, `next_run_at=2026-05-07T14:20:00-03:00`.

## Objeções e travas
- Nenhuma objeção comercial ainda; cliente ainda não respondeu.

## Próximo passo
Aguardar primeira resposta. Se responder, mover de `Não Respondeu` para `Em Atendimento`, registrar a interação no CRM e seguir qualificação consultiva. Se não responder até a próxima janela, enviar repescagem step 3 com diagnóstico leve e novo ângulo, evitando repetir finalidade ou viabilidade/entrada/parcela.

## Observações operacionais
- Marcador CRM do primeiro contato: `[reno_reprocess_20260505_5_leads]`.
- Envios de repescagem feitos usando o `whatsapp_jid` salvo no CRM.
- Runtime do cron não expôs `send_message`; foi usado fallback excepcional pelo bridge local saudável (`/health` conectado) no endpoint `/send`.
- Sucesso técnico do bridge na step 2: `success=true`, validação `onWhatsApp`, `messageId=3EB0AC0E6BF8DFB49D4D6C`.
- Envio step 2 registrado por `mcp_mcp_postgres_mark_reno_followup_sent`; nota CRM automática criada com ID 16945.
- Claim de repescagem limpo após a marcação (`claim_expires_at=null`).
