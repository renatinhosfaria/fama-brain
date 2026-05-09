---
type: entity-profile
owner: reno
created: '2026-05-06'
updated: '2026-05-09'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
entity_type: atendimento
entity_name: Patricia Soares
client_id: 11226
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
---
# Atendimento — Patricia Soares

Vínculos: [[reno]], [[playbook-atendimento]], [[union-vista]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Repescagem step 4 enviada com sucesso via WhatsApp em 2026-05-09 às 19:26 BRT. A cliente segue em `Não Respondeu`. O ângulo da régua passou para convite consultivo direto para visita presencial na Fama, com foco em olhar a viabilidade do Union Vista na segunda-feira.

## Dados operacionais
- Cliente ID: 11226
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads
- WhatsApp cadastrado e validado para envio
- Última interação relevante: repescagem step 4 enviada via bridge local em 2026-05-09 às 19:26 BRT
- Próxima repescagem prevista: step 5 em 2026-05-10T09:10:00-03:00, se não houver resposta
- Referência operacional do primeiro contato: evt_3394 / 3394_1778064731537

## Contexto comercial
- Interesse vinculado ao empreendimento Union Vista.
- Localização usada na abertura: Grand Ville, Uberlândia.
- Empreendimento em lançamento, com entrega prevista para Jul/2027.
- Apartamentos cadastrados a partir de aproximadamente R$292 mil, com opções de 2 quartos.
- A régua foi mudando o foco assim:
  - step 1: morar vs oportunidade de compra;
  - step 2: entrada vs parcela;
  - step 3: localização vs tamanho da planta vs condição de compra;
  - step 4: convite direto para olhar a viabilidade presencialmente na Fama.

## Histórico curado de interações
### 2026-05-06 — Primeiro contato enviado
O Reno enviou uma abertura curta com contexto do interesse no Union Vista, no Grand Ville, e perguntou se a região combinava com a busca da cliente. O status foi alterado condicionalmente de `Sem Atendimento` para `Não Respondeu`.

### 2026-05-06 — Repescagem step 1 enviada
> Oi, Patricia! Tudo bem? 🏡
>
> Sobre o Union Vista, no Grand Ville, vale olhar além das fotos: por ser lançamento, o prazo de entrega e a forma de pagamento podem mudar bastante se ele faz sentido pra você.
>
> Pra eu te orientar melhor, você está olhando mais para **morar** ou para comparar uma oportunidade de compra?

Ângulo: novo motivo para responder, focado em prazo de entrega e forma de pagamento.

### 2026-05-07 — Repescagem step 2 enviada
> Oi, Patricia! Tudo bem? 🔑
>
> Como o Union Vista é lançamento, o mais importante agora é olhar a viabilidade antes de se prender só nas fotos — principalmente entrada, parcela e prazo de entrega.
>
> Hoje, o que pesa mais pra você na compra: entrada ou parcela?

Ângulo: encaixe e viabilidade prática da compra.

### 2026-05-08 — Repescagem step 3 enviada
> Oi, Patricia! Tudo bem? 🔑
>
> Pra eu te orientar melhor no Union Vista, no Grand Ville, o que pesa mais pra você nessa busca: localização, tamanho da planta ou condição de compra?

Ângulo: critério principal de escolha.

### 2026-05-09 — Repescagem step 4 enviada
> Oi, Patricia! Tudo bem?
>
> Pra eu te orientar sem te fazer perder tempo, o melhor agora é olhar isso pessoalmente. Se eu separar um horário na segunda pra você vir na Fama e a gente ver a viabilidade do Union Vista, faz sentido?

Ângulo: convite consultivo direto para visita presencial, com CTA ajustado para segunda-feira por ser fim de semana.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava atual: silêncio após o primeiro contato e após as repescagens.

## Próximo passo
Aguardar resposta da cliente. Se responder, o fluxo deve sair da repescagem e seguir qualificação consultiva. Se permanecer em silêncio, a próxima execução deve avaliar o step 5 e, se ainda estiver em `Não Respondeu`, encerrar a régua conforme governança.

## Observações operacionais
- CRM/FamaChat permanece como fonte de verdade operacional.
- Steps 1 a 4 não alteram o status do cliente.
- O envio do step 4 foi validado como `onWhatsApp` via bridge local.
- `mark_reno_followup_sent` persistiu `step=4`, `last_sent_at=2026-05-09T19:26:50-03:00` e `next_run_at=2026-05-10T09:10:00-03:00`.
- A mensagem mudou de ângulo e evitou repetir a mesma abordagem das etapas anteriores.
