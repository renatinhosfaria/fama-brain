---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Maria Clara
client_id: 11218
broker_id: 35
status_crm: Não Respondeu
source: SLA Cascata
created: '2026-05-05'
updated: '2026-05-06'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Maria Clara

## Resumo atual
Primeiro step de repescagem do Reno enviado via WhatsApp em 2026-05-06, após silêncio ao primeiro contato do ciclo operacional atual. Cliente permanece em `Não Respondeu`. A abordagem mudou da pergunta inicial sobre finalidade (`morar` vs `investir`) para o ângulo de viabilidade prática do Garden Sul: entrada, parcelas durante a obra e financiamento.

## Dados operacionais
- Cliente ID: 11218
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata
- Telefone/WhatsApp: (34) 99789-1120 / 553497891120@s.whatsapp.net
- Cliente original relacionado: 11160, usado apenas como contexto consultivo
- Empreendimento relacionado: Garden Sul — Jardim Sul, Zona Sul
- Última interação relevante: 2026-05-06 — repescagem step 1 enviada pelo Reno

## Contexto comercial
Cliente entrou no ciclo atual do Reno por SLA Cascata com interesse no Garden Sul. O empreendimento é um lançamento da Opção Empreendimentos no Jardim Sul, em Uberlândia, com apartamentos de 2 quartos e opções cadastradas a partir de aproximadamente R$ 294.900 no CRM.

Contexto do cadastro original relacionado (11160), usado apenas como apoio consultivo: a cliente já havia indicado interesse no Garden Sul, busca para morar, critério principal de valor, intenção de compra financiada e preferência por entrada mais baixa/parcelada. O cliente operacional deste atendimento continua sendo o ID 11218.

## Diagnóstico
### Necessidade
Sinal provável de busca residencial no Garden Sul, com atenção a valor e condição de compra.

### Momento
Ainda não confirmado no ciclo atual do Reno. Silêncio após primeiro contato.

### Decisão
Ainda não diagnosticada no ciclo atual.

### Viabilidade
Há indício consultivo, vindo do cliente original relacionado, de compra financiada e preferência por entrada baixa/parcelada. Não há validação formal de renda, entrada disponível ou aprovação de crédito; não prometer aprovação.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato enviado
Reno enviou mensagem curta e contextual, mencionando o interesse no Garden Sul/Jardim Sul e perguntando se a busca é para morar ou investir.

### 2026-05-06 — Repescagem step 1 enviada
Reno enviou follow-up de repescagem pelo WhatsApp usando o `whatsapp_jid` salvo e validado pelo bridge local. A mensagem criou novo motivo para resposta, saindo da finalidade de compra e indo para o encaixe do caminho financeiro do lançamento.

Mensagem enviada:
> Oi, Maria Clara! Tudo bem? 🏡
>
> Sobre o Garden Sul, antes de olhar só planta ou fotos, vale entender se o caminho da compra faz sentido: entrada, parcelas durante a obra e financiamento depois.
>
> Assim você evita perder tempo com uma opção bonita, mas que talvez não encaixe bem no orçamento.
>
> Hoje pesa mais pra você **valor de entrada/parcelamento** ou **planta/localização na Zona Sul**?

## Objeções e travas
- Silêncio após o primeiro contato do ciclo atual do Reno.
- Possível trava comercial: valor de entrada, parcelamento e financiamento do lançamento.

## Próximo passo
Aguardar resposta da cliente. Se responder, o fluxo correto é atendimento/qualificação WhatsApp: atualizar status de `Não Respondeu` para `Em Atendimento` somente se ainda estiver nesse status e conduzir diagnóstico consultivo.

Se não responder, a próxima repescagem prevista é o step 2 em `2026-05-07T14:20:00-03:00`, mantendo o ângulo diferente do step 1 conforme a régua oficial.

## Observações operacionais
- Cliente validado no CRM com `broker_id=35`, `status=Não Respondeu`, branch `meta_data.reno_followup.repescagem.enabled=true`, `stopped_reason=null` e `next_run_at` vencido.
- Seleção feita por claim exclusivo dentro da branch de repescagem; `claim_expires_at` foi limpo após `mark_reno_followup_sent`.
- Envio realizado via fallback excepcional do bridge local (`/send`) porque `send_message` não estava exposto nesta sessão; bridge estava saudável e retornou sucesso técnico com validação `onWhatsApp` para o JID salvo.
- `mcp_mcp_postgres_mark_reno_followup_sent` registrou `step=1`, `last_sent_at=2026-05-06T11:03:18-03:00`, `next_run_at=2026-05-07T14:20:00-03:00`, `enabled=true` e `stopped_reason=null`.
- Status CRM não foi alterado, conforme regra de repescagem para steps 1 a 4.
