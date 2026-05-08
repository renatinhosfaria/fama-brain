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
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - union-vereda
  - step-3
---
# Atendimento — Eliane Maria Martins

V?nculos: [[reno]], [[playbook-atendimento]], [[union-vereda]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem step 3 enviada com sucesso via WhatsApp em 2026-05-07 14:54 BRT. A cliente permanece em `Não Respondeu`, sem alteração de status. Próxima repescagem prevista para 2026-05-08 19:10 BRT se continuar silenciosa.

## Dados operacionais
- Cliente ID: 11171
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp: cadastrado no CRM
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: repescagem step 3 enviada em 2026-05-07 14:54 BRT via WhatsApp validado no bridge local.

## Contexto comercial
Cliente com interesse no Union Vereda, lançamento no Jaraguá, Uberlândia. Empreendimento com apartamentos de 2 quartos, suíte e varanda/sacada, opções publicadas na faixa de R$ 288 mil a R$ 295 mil e entrega prevista para Dez/2028.

## Diagnóstico
### Necessidade
Ainda não diagnosticada.

### Momento
Ainda não identificado.

### Decisão
Ainda não identificada.

### Viabilidade
Ainda não identificada. O step 2 já havia abordado entrada, parcelas da obra e financiamento. O step 3 mudou o ângulo para critério principal de escolha: localização, planta/tamanho ou valor.

## Histórico curado de interações
### 2026-05-04 — Falha técnica no primeiro envio
Webhook `cliente.created` foi aceito, mas o envio WhatsApp não concluiu. Status permaneceu `Sem Atendimento`.

### 2026-05-05 — Primeiro contato reprocessado
Reprocessamento autorizado por Renato. Mensagem enviada em duas partes contextualizando o Union Vereda/Jaraguá e perguntando se a cliente procurava imóvel nessa região. CRM atualizado para `Não Respondeu`; repescagem inicializada.

### 2026-05-05 — Repescagem step 1 enviada
Mensagem de organização da busca/finalidade de compra.

Mensagem enviada:
> Oi, Eliane! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, o anúncio pode chamar atenção, mas o melhor começo é entender se o lançamento combina com o seu plano antes de ficar olhando opção solta.
>
> Assim eu consigo te orientar de forma **mais direcionada**.
>
> Você olha esse imóvel mais para **morar** ou para **comparar uma oportunidade de compra**?

### 2026-05-06 — Repescagem step 2 enviada
Mensagem focada em viabilidade prática do lançamento (entrada, parcelas da obra e financiamento).

Mensagem enviada:
> Eliane, tudo bem? 🔑
>
> Pensando no Union Vereda, tem um ponto que costuma evitar perda de tempo: por ser um lançamento com entrega em Dez/2028, a compra precisa encaixar bem em **entrada, parcelas da obra e financiamento**.
>
> Assim você não fica presa só ao anúncio e consegue entender se esse caminho faz sentido pra você agora.
>
> Quer que eu faça uma primeira leitura objetiva contigo pra ver se esse perfil de imóvel cabe no seu plano?

### 2026-05-07 — Repescagem step 3 enviada
Mensagem enviada com novo ângulo de diagnóstico leve: localizar o critério principal de escolha entre localização no Jaraguá, planta/tamanho ou valor da compra.

Mensagem enviada:
> Oi, Eliane! Tudo bem? 📍
>
> No Union Vereda, dá pra olhar por caminhos diferentes: localização no Jaraguá, planta de 2 quartos com suíte e varanda, ou um valor que fique confortável no orçamento.
>
> Sem saber o que pesa mais pra você, qualquer sugestão vira chute.
>
> Hoje, qual ponto é mais importante: localização, planta/tamanho ou valor da compra?

## Objeções e travas
- Nenhuma objeção comercial ainda; cliente segue sem resposta.

## Próximo passo
Aguardar resposta. Se continuar silenciosa, enviar repescagem step 4 em 2026-05-08 19:10 BRT com novo ângulo sem repetir viabilidade ou critério principal.

## Observações operacionais
- Envios de repescagem feitos usando o `whatsapp_jid` salvo no CRM.
- Runtime do cron não expôs `send_message`; foi usado fallback excepcional pelo bridge local saudável (`/health` conectado) no endpoint `/send`.
- Sucesso técnico do bridge na step 3: `success=true`, `validated=true`, `validationMethod=onWhatsApp`, `messageId=3EB056FF39C17B35DA23FF`.
- Nota CRM automática criada pela tool: ID 17147.
- `claim_expires_at` permaneceu `null` após a marcação; `claim_worker` residual não bloqueia a seleção futura.
