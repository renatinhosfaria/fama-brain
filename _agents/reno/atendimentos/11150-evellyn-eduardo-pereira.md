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
updated: '2026-05-04'
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
Primeiro contato do Reno foi enviado com sucesso pelo WhatsApp em 2026-05-03 para a cliente com interesse no Union Vista, no Grand Ville. Como não houve resposta, o Reno enviou a repescagem step 1 em 2026-05-03 às 19:39 BRT e a repescagem step 2 em 2026-05-04 às 09:45 BRT. Cliente permanece em `Não Respondeu`.

## Dados operacionais
- Cliente ID: 11150
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp: contato validado no CRM
- Última interação relevante: repescagem step 2 enviada pelo Reno via WhatsApp em 2026-05-04 09:45 BRT

## Contexto comercial
Lead vindo de Facebook Ads com interesse vinculado ao empreendimento Union Vista, no bairro Grand Ville, Uberlândia. O primeiro contato já perguntou se a cliente procura imóvel nessa região. A repescagem step 1 evitou repetir a pergunta de região e apresentou um novo motivo para resposta: entender se o lançamento combina com prazo, região e forma de compra.

Contexto do imóvel: Union Vista, lançamento no Grand Ville/Zona Leste, com apartamentos de 2 quartos, áreas aproximadas de 56,9m² a 82,2m², valores cadastrados a partir de aproximadamente R$ 292 mil e entrega prevista para jul/2027. Não há diagnóstico financeiro, de finalidade ou prazo pessoal da cliente até o momento.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A repescagem tenta abrir a primeira resposta para entender se o interesse no Union Vista é para moradia, comparação de oportunidade ou outro objetivo.

### Momento
Ainda não identificado. O prazo do empreendimento pode ser relevante, mas não há confirmação do momento de compra da cliente.

### Decisão
Ainda não identificado.

### Viabilidade
Ainda não identificada. O step 2 abordou viabilidade de forma consultiva, sem prometer crédito: entrada, parcelas e prazo da obra como filtro para evitar perda de tempo antes de comparar unidades.

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

### 2026-05-04 — Repescagem step 2 enviada
Mensagem enviada:

> Bom dia, Evellyn! 🔑
>
> Pensando no **Union Vista**, um ponto que evita perda de tempo é olhar se entrada, parcelas e prazo da obra fazem sentido para o seu momento.
>
> Às vezes o lançamento chama atenção, mas a condição precisa encaixar antes de comparar unidade.
>
> Posso te ajudar com uma **primeira leitura de viabilidade** para ver se vale seguir por esse caminho?

Ângulo usado: evitar caminho errado / viabilidade. Diferença em relação ao step 1: deixou de perguntar finalidade (`morar` vs comparar oportunidade) e passou a oferecer uma primeira leitura de entrada, parcelas e prazo da obra para evitar comparação de unidade sem encaixe financeiro. Envio feito pelo fallback excepcional do bridge local porque `send_message` não estava exposto no runtime do cron; o bridge estava saudável e conectado.

Estado CRM após marcação: `repescagem.step=2`, `enabled=true`, `last_sent_at=2026-05-04T09:45:26-03:00`, `next_run_at=2026-05-05T14:20:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava atual: silêncio após primeiro contato e repescagens steps 1 e 2.

## Próximo passo
Aguardar resposta da cliente. Se ela responder, mover para `Em Atendimento` quando aplicável e seguir a qualificação normal do Reno. Se permanecer sem resposta até o próximo vencimento da régua, enviar repescagem step 3 em 2026-05-05 às 14:20 BRT, mudando novamente o ângulo para diagnóstico leve sem repetir a pergunta de finalidade nem o convite de primeira leitura de viabilidade.

## Observações operacionais
- Evento de origem do primeiro contato: evt_3318.
- Idempotency key do primeiro contato: 3318_1777792489570.
- Documento mantido no caminho oficial do atendimento do Reno.
- Repescagem enviada pelo worker `reno-repescagem-message-queue-production` em fila própria, sem uso de trava global com Resgate.
- No envio do step 2, o fallback do bridge local `127.0.0.1:3000` foi usado somente após validação/reserva do candidato e saúde do bridge (`status=connected`).
