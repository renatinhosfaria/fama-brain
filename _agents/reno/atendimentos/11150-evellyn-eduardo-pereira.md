---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Evellyn Eduardo Pereira
client_id: 11150
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-03'
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Evellyn Eduardo Pereira

## Resumo atual
Primeiro contato do Reno foi enviado com sucesso pelo WhatsApp em 2026-05-03 para a cliente com interesse no Union Vista, no Grand Ville. Como não houve resposta, o Reno enviou a repescagem step 1 em 2026-05-03 às 19:39, mudando o ângulo para organizar a busca pelo lançamento a partir de prazo, região e forma de compra. Cliente permanece em `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11150
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp: contato validado no CRM
- Última interação relevante: repescagem step 1 enviada pelo Reno via WhatsApp em 2026-05-03 19:39 BRT

## Contexto comercial
Lead vindo de Facebook Ads com interesse vinculado ao empreendimento Union Vista, no bairro Grand Ville, Uberlândia. O primeiro contato já perguntou se a cliente procura imóvel nessa região. A repescagem step 1 evitou repetir a mesma pergunta e apresentou um novo motivo para resposta: entender se o lançamento combina com prazo, região e forma de compra.

Contexto do imóvel: Union Vista, lançamento no Grand Ville/Zona Leste, com apartamentos de 2 quartos e entrega prevista para jul/2027. Não há diagnóstico financeiro, de finalidade ou prazo pessoal da cliente até o momento.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A repescagem buscou abrir a primeira resposta para entender se a busca é para morar na região ou comparar oportunidade de compra.

### Momento
Ainda não identificado. O prazo do empreendimento pode ser relevante, mas não há confirmação do momento de compra da cliente.

### Decisão
Ainda não identificado.

### Viabilidade
Ainda não identificada. Não houve abordagem de renda, entrada ou financiamento e nenhuma promessa de crédito foi feita.

## Histórico curado de interações
### 2026-05-03 — Primeiro contato enviado
Reno enviou duas mensagens curtas pelo WhatsApp: apresentação com contexto do interesse no Union Vista, no Grand Ville, e pergunta simples sobre busca de imóvel na região. Envio bem-sucedido. CRM atualizado para Não Respondeu. Repescagem inicializada com step 0 e próxima execução prevista para 2026-05-03 19:10.

### 2026-05-03 — Repescagem step 1 enviada
Mensagem enviada:

> Oi, Evellyn! Tudo bem? 🏡
>
> Vi que seu interesse ficou no **Union Vista**, no Grand Ville. Como é lançamento, o mais importante agora não é só ver a unidade, mas entender se ele combina com o que você busca em prazo, região e forma de compra.
>
> Você está olhando mais para morar nessa região ou para comparar uma oportunidade de compra?

Ângulo usado: imóvel específico / lançamento, com foco em organizar a busca por finalidade, prazo e forma de compra. A mensagem foi substancialmente diferente do primeiro contato, que já havia perguntado sobre a região.

Estado CRM após marcação: `repescagem.step=1`, `enabled=true`, `last_sent_at=2026-05-03T19:39:17.629-03:00`, `next_run_at=2026-05-04T09:10:00-03:00`, `stopped_reason=null`.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava atual: silêncio após primeiro contato e repescagem step 1.

## Próximo passo
Aguardar resposta da cliente. Se ela responder, mover para `Em Atendimento` quando aplicável e seguir a qualificação normal do Reno. Se permanecer sem resposta até o próximo vencimento da régua, enviar repescagem step 2 em 2026-05-04 às 09:10 BRT, mudando novamente o ângulo comercial para evitar caminho errado/viabilidade sem repetir a pergunta de morar vs oportunidade.

## Observações operacionais
- Evento de origem do primeiro contato: evt_3318.
- Idempotency key do primeiro contato: 3318_1777792489570.
- Documento mantido no caminho oficial do atendimento do Reno.
- Repescagem enviada pelo worker `reno-repescagem-message-queue-production` em fila própria, sem uso de trava global com Resgate.
