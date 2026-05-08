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
  - step-4
---
# Atendimento — Eliane Maria Martins

Vínculos: [[reno]], [[playbook-atendimento]], [[union-vereda]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem step 4 enviada com sucesso via WhatsApp em 2026-05-08 19:54 BRT. A cliente permanece em `Não Respondeu`, sem alteração de status. Próxima repescagem prevista para 2026-05-09 09:10 BRT se continuar silenciosa.

## Dados operacionais
- Cliente ID: 11171
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp: cadastrado no CRM (JID termina em 2514)
- Empreendimento de interesse: Union Vereda — Jaraguá, Uberlândia
- Última interação relevante: repescagem step 4 enviada em 2026-05-08 19:54 BRT via WhatsApp validado no bridge local.

## Contexto comercial
Cliente com interesse no Union Vereda, lançamento no Jaraguá, Uberlândia. Empreendimento com apartamentos de 2 quartos, suíte e varanda/sacada, opções publicadas na faixa de R$ 288 mil a R$ 295 mil e entrega prevista para Dez/2028. A régua de repescagem foi construída para sair do campo da curiosidade e conduzir para diagnóstico consultivo + visita presencial.

## Diagnóstico
### Necessidade
Ainda não diagnosticada.

### Momento
Ainda não identificado.

### Decisão
Ainda não identificada.

### Viabilidade
Ainda não identificada. O step 2 já havia abordado entrada, parcelas da obra e financiamento; o step 3 mudou o ângulo para critério principal de escolha. O step 4 avançou para convite consultivo direto de visita.

## Histórico curado de interações
### 2026-05-04 — Falha técnica no primeiro envio
Webhook `cliente.created` foi aceito, mas o envio WhatsApp não concluiu. Status permaneceu `Sem Atendimento`.

### 2026-05-05 — Primeiro contato reprocessado
Reprocessamento autorizado por Renato. Mensagem enviada contextualizando o Union Vereda/Jaraguá e perguntando se a cliente procurava imóvel nessa região. CRM atualizado para `Não Respondeu`; repescagem inicializada.

### 2026-05-05 — Repescagem step 1 enviada
Mensagem de organização da busca/finalidade de compra, focada em entender se o imóvel era para morar ou para comparar oportunidade.

### 2026-05-06 — Repescagem step 2 enviada
Mensagem focada em viabilidade prática do lançamento: entrada, parcelas da obra e financiamento.

### 2026-05-07 — Repescagem step 3 enviada
Mensagem com novo ângulo de diagnóstico leve: localizar o critério principal de escolha entre localização no Jaraguá, planta/tamanho ou valor da compra.

### 2026-05-08 — Repescagem step 4 enviada
Convite consultivo direto para visita na Fama, mantendo o contexto do Union Vereda e reforçando entrada, parcela e financiamento.

Mensagem enviada:
> Eliane, se eu te mostrar rapidinho o cenário mais viável do Union Vereda — entrada, parcela e financiamento — você consegue passar na Fama na segunda pra eu te orientar com calma?

## Objeções e travas
- Nenhuma objeção comercial ainda; cliente segue sem resposta.

## Próximo passo
Aguardar resposta. Se continuar silenciosa, enviar repescagem step 5 em 2026-05-09 09:10 BRT com encerramento da régua caso seja o último envio.

## Observações operacionais
- Envios de repescagem feitos usando o `whatsapp_jid` salvo no CRM.
- Runtime do cron não expôs `send_message`; foi usado fallback excepcional pelo bridge local saudável (`/health` conectado) no endpoint `/send`.
- Sucesso técnico do bridge na step 3: `success=true`, `validated=true`, `validationMethod=onWhatsApp`, `messageId=3EB056FF39C17B35DA23FF`.
- Sucesso técnico do bridge na step 4: `success=true`, `validated=true`, `validationMethod=onWhatsApp`, `messageId=3EB0CA8C2A74A8B0A8BA75`.
- Nota CRM automática criada pela tool: ID 17385.
- `claim_expires_at` permaneceu `null` após a marcação; `claim_worker` residual não bloqueia a seleção futura.
