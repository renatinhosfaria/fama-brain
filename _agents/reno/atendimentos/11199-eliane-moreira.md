---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Eliane Moreira
client_id: 11199
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
  - repescagem-step-1
---
# Atendimento — Eliane Moreira

## Resumo atual
Repescagem step 1 enviada com sucesso via WhatsApp em 2026-05-06 10:09 (America/Sao_Paulo), usando ângulo diferente do primeiro contato: prazo de entrega e forma de pagamento do Union Vereda. Cliente segue em `Não Respondeu`; próximo follow-up de repescagem está previsto para 2026-05-07 14:20 (America/Sao_Paulo), se não houver resposta antes.

## Dados operacionais
- Cliente ID: 11199
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata / sla_cascata
- Cliente original relacionado: 11142 (Facebook Ads, corretor anterior 14)
- Telefone/WhatsApp: (34) 99270-5597 / 553492705597@s.whatsapp.net
- Empreendimento de interesse: Union Vereda — Jaraguá, Zona Oeste de Uberlândia
- Última interação relevante: repescagem step 1 enviada por Reno em 2026-05-06 10:09 (America/Sao_Paulo)

## Contexto comercial
Lead atribuído ao Reno via SLA Cascata, com interesse vinculado ao empreendimento Union Vereda, no bairro Jaraguá. O CRM do cliente original indica origem Facebook Ads e duas notas humanas curtas do corretor anterior: “numero antigo” e “2º contato”, sem resposta real registrada no atendimento do Reno.

O Union Vereda é um lançamento no Jaraguá, com entrega prevista para Dez/2028 e unidades disponíveis de 2 quartos com suíte/sacada. Como o primeiro contato já perguntou se a busca era para morar ou investir, a repescagem step 1 mudou o motivo da resposta para organizar prazo de entrega e forma de pagamento antes de olhar apenas fotos/anúncio.

## Diagnóstico
### Necessidade
Ainda não identificada. Há interesse presumido no Union Vereda, mas sem confirmação de objetivo da compra.

### Momento
Ainda não identificado. A repescagem tentou abrir conversa pelo encaixe entre prazo do lançamento e momento da cliente.

### Decisão
Ainda não identificada.

### Viabilidade
Ainda não identificada. Não há informações de entrada, renda, financiamento ou forma de pagamento no CRM. A mensagem enviada não prometeu crédito nem condição; apenas convidou a verificar se prazo e forma de compra combinam com o que a cliente busca.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato enviado
Reno enviou WhatsApp curto e contextual: saudou Eliane, mencionou o interesse no Union Vereda, no Jaraguá, e perguntou se a busca é para morar ou investir. Envio validado pelo WhatsApp para `553492705597@s.whatsapp.net`.

### 2026-05-05 — Status e repescagem inicializada
Após o envio, o CRM foi atualizado condicionalmente de `Sem Atendimento` para `Não Respondeu`. A branch `meta_data.reno_followup.repescagem` foi inicializada com `enabled=true`, `step=0`, entrada em turno `noite` e próximo disparo em `2026-05-06T09:10:00-03:00`.

### 2026-05-06 — Repescagem step 1 enviada
Reno enviou repescagem step 1 via WhatsApp para o JID salvo no CRM. Mensagem enviada:

> Oi, Eliane! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, um ponto que costuma fazer diferença é olhar o lançamento pelo **prazo de entrega e pela forma de pagamento**, não só pelas fotos do anúncio.
>
> Assim dá pra entender se faz sentido para o seu momento antes de você perder tempo com uma opção que talvez não encaixe.
>
> Quer que eu veja contigo primeiro se prazo e forma de compra combinam com o que você está buscando?

Registro operacional confirmado no CRM por `mark_reno_followup_sent`: `step=1`, `enabled=true`, `last_sent_at=2026-05-06T10:09:29.585-03:00`, `next_run_at=2026-05-07T14:20:00-03:00`, `stopped_reason=null` e `claim_expires_at=null`.

## Objeções e travas
- Nenhuma objeção identificada ainda.
- Silêncio após primeiro contato e após a tentativa humana anterior registrada no cliente original.

## Próximo passo
Aguardar resposta da cliente. Se responder, mover o atendimento para o fluxo de qualificação, atualizar status de `Não Respondeu` para `Em Atendimento` somente se ainda estiver exatamente nesse status, registrar a primeira resposta no CRM e seguir diagnóstico consultivo em turnos curtos.

Se não houver resposta até 2026-05-07 14:20, a próxima execução elegível da repescagem deve enviar o step 2 com novo ângulo, evitando repetir morar/investir ou apenas prazo/forma de compra.

## Observações operacionais
- Nome CRM confiável: Eliane Moreira.
- Não houve necessidade de mensagem neutra para confirmação de nome.
- Envio realizado pelo fallback excepcional do bridge local (`/send`) porque `send_message` não está exposto neste runtime do cron; bridge estava saudável e conectado.
- WhatsApp aceitou tecnicamente o envio para o JID salvo no CRM, validado por `onWhatsApp`.
- Status não foi alterado porque step 1 não arquiva nem avança status sem resposta real.
- Documento mantido no caminho oficial do Reno para evitar duplicidade por variação de nome.
