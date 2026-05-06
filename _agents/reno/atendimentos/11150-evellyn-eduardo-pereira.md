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
updated: '2026-05-06'
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
Primeiro contato do Reno foi enviado com sucesso pelo WhatsApp em 2026-05-03 para a cliente com interesse no Union Vista, no Grand Ville. Como não houve resposta, o Reno enviou as repescagens steps 1, 2, 3 e 4. A cliente permanece em `Não Respondeu`; a próxima e última janela da régua está prevista para 2026-05-07 09:10 BRT.

## Dados operacionais
- Cliente ID: 11150
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp: contato validado no CRM
- Última interação relevante: repescagem step 4 enviada pelo Reno via WhatsApp em 2026-05-06 19:14 BRT

## Contexto comercial
Lead vindo de Facebook Ads com interesse vinculado ao empreendimento Union Vista, no bairro Grand Ville, Uberlândia. O primeiro contato já perguntou se a cliente procura imóvel nessa região. A repescagem step 1 evitou repetir a pergunta de região e apresentou um novo motivo para resposta: entender se o lançamento combina com prazo, região e forma de compra.

Contexto do imóvel: Union Vista, lançamento no Grand Ville/Zona Leste, com apartamentos de 2 quartos, áreas aproximadas de 56,9m² a 82,2m², valores cadastrados a partir de aproximadamente R$ 292 mil e entrega prevista para jul/2027. Não há diagnóstico financeiro, de finalidade ou prazo pessoal da cliente até o momento.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A régua tenta abrir a primeira resposta para entender se o interesse no Union Vista está ligado à localização, planta/tamanho, condição de compra ou organização do caminho de compra.

### Momento
Ainda não identificado. O prazo do empreendimento pode ser relevante, mas não há confirmação do momento de compra da cliente.

### Decisão
Ainda não identificado.

### Viabilidade
Ainda não identificada. O step 2 abordou viabilidade de forma consultiva, sem prometer crédito: entrada, parcelas e prazo da obra como filtro para evitar perda de tempo antes de comparar unidades. O step 4 retomou a organização do caminho de compra sem prometer aprovação ou condição.

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

### 2026-05-05 — Repescagem step 3 enviada
Mensagem enviada:

> Boa tarde, Evellyn! 📍
>
> No caso do **Union Vista**, o anúncio mostra o empreendimento, mas a escolha certa costuma depender do critério principal: localização no Grand Ville, tamanho da planta ou condição de compra.
>
> Pra eu não te mandar informação solta, qual desses pontos pesa mais pra você hoje?

Ângulo usado: diagnóstico leve / critério principal de escolha. Diferença em relação ao step 2: deixou de oferecer leitura de viabilidade e passou a pedir uma escolha simples entre localização, planta/tamanho e condição de compra, para evitar mandar informação solta e abrir a primeira microresposta. Envio feito pelo fallback excepcional do bridge local porque `send_message` não estava exposto no runtime do cron; o bridge estava saudável e conectado.

Estado CRM após marcação: `repescagem.step=3`, `enabled=true`, `last_sent_at=2026-05-05T14:26:26-03:00`, `next_run_at=2026-05-06T19:10:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`.

### 2026-05-06 — Repescagem step 4 enviada
Mensagem enviada:

> Boa noite, Evellyn! 🏡
>
> Como você ainda não me respondeu, vou ser bem objetivo: no **Union Vista**, não adianta eu te mandar só mais anúncio. O que ajuda de verdade é organizar se o lançamento combina com seu momento — prazo de entrega, planta e condição de compra — antes de você perder tempo comparando opção solta.
>
> Posso fazer essa **análise inicial** com você e ver se vale seguir por esse caminho?

Ângulo usado: convite consultivo direto / organização do caminho de compra. Diferença em relação ao step 3: deixou de pedir critério principal de escolha e passou a oferecer uma análise inicial objetiva, reforçando que o valor não é mandar mais anúncio, mas organizar prazo, planta e condição de compra.

Estado CRM após marcação: `repescagem.step=4`, `enabled=true`, `last_sent_at=2026-05-06T19:14:50-03:00`, `next_run_at=2026-05-07T09:10:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava atual: silêncio após primeiro contato e repescagens steps 1, 2, 3 e 4.

## Próximo passo
Aguardar resposta da cliente. Se ela responder, mover para `Em Atendimento` quando aplicável e seguir a qualificação normal do Reno. Se permanecer sem resposta até o próximo vencimento da régua, enviar a repescagem step 5 em 2026-05-07 às 09:10 BRT com encerramento elegante, sem insistir em agenda ou repetir o convite consultivo do step 4.

## Observações operacionais
- Evento de origem do primeiro contato: evt_3318.
- Idempotency key do primeiro contato: 3318_1777792489570.
- Documento mantido no caminho oficial do atendimento do Reno.
- Repescagem enviada pelo worker `reno-repescagem-message-queue-production` em fila própria, sem uso de trava global com Resgate.
- Nos envios dos steps 2, 3 e 4, o fallback do bridge local `127.0.0.1:3000` foi usado somente após validação/reserva do candidato e saúde do bridge (`status=connected`). No step 4, o envio usou o `whatsapp_jid` salvo no CRM e o bridge validou o destino por `onWhatsApp`.
- Após o step 4, o status CRM permaneceu corretamente em `Não Respondeu`; não há arquivamento antes do step 5.
