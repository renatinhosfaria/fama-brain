---
broker_id: 35
client_id: 11273
created: '2026-05-08'
entity_name: Douglas
entity_type: atendimento
owner: reno
source: Facebook Ads
status_crm: Em Atendimento
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - union-vista
type: entity-profile
updated: '2026-05-08'
---
# Atendimento — Douglas

## Resumo atual
Cliente está em atendimento pelo Reno após responder ao primeiro contato do WhatsApp. Confirmou interesse no Union Vista para investimento, com foco em renda de aluguel, e entrou em viabilidade perguntando sobre entrada/parcela. Pediu fotos da opção de aproximadamente R$292 mil; o atendimento comercial registrou envio de fotos gerais do empreendimento e, depois, envio de vídeo do decorado como referência. A repescagem está encerrada por resposta do cliente. O Resgate atual está em `step=0` rearmado após o outbound de mídia mais recente, para eventual novo silêncio.

## Dados operacionais
- Cliente ID: 11273
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads
- Telefone/WhatsApp: registrado no CRM
- Empreendimento de interesse: Union Vista (id_empreendimento=22), Grand Ville, Uberlândia
- Última interação relevante: 2026-05-08 00:32 — cliente aceitou receber vídeo do decorado; Reno enviou link público como referência e o Resgate foi rearmado em step=0 para eventual silêncio após mídia.

## Contexto comercial
Lead entrou por Facebook Ads com interesse no Union Vista. O primeiro contato do Reno contextualizou o empreendimento e perguntou se o cliente procurava imóvel na região. O cliente confirmou interesse inicial, informou que está olhando para investimento, detalhou foco em renda de aluguel e passou a avaliar viabilidade financeira do investimento. Depois da orientação sobre entrada/parcela, pediu fotos da opção de R$292 mil e aceitou receber vídeo do decorado.

## Diagnóstico
### Necessidade
Busca imóvel com finalidade de investimento, com foco em gerar renda de aluguel depois da entrega.

### Momento
Cliente está avaliando investimento no momento, mas ainda falta entender horizonte, urgência e tolerância ao prazo de entrega.

### Decisão
Ainda não identificada. Não há informação sobre outros decisores, comparação com outras opções ou critérios finais de escolha.

### Viabilidade
Cliente perguntou qual seria uma entrada boa para ficar com parcela relativamente baixa. Referência operacional registrada no CRM para o Union Vista: unidades em faixa aproximada de R$292 mil a R$322 mil; orientação dada foi que entrada mínima pode partir de 20% em muitos casos, mas 30% a 40% tende a deixar parcela mais confortável para investimento. Próximo dado útil: faixa mensal que o cliente considera confortável.

## Histórico curado de interações
### 2026-05-08 — Entrada e primeiro contato
Cliente criado no FamaChat por Facebook Ads com interesse no Union Vista. Reno enviou abertura curta pelo WhatsApp, status passou de Sem Atendimento para Não Respondeu e repescagem foi inicializada para silêncio inicial.

### 2026-05-08 — Primeira resposta inbound
Cliente respondeu "Sim" ao contexto de procurar imóvel na região. Status foi atualizado/preservado como Em Atendimento após resposta real do cliente. A repescagem foi interrompida no CRM: enabled=false, next_run_at=null, stopped_reason=client_replied.

### 2026-05-08 — Finalidade identificada
Reno perguntou se o interesse no Union Vista era para morar ou investir. Cliente respondeu: "Para investir no momento". Diagnóstico atualizado para finalidade de compra = investimento.

### 2026-05-08 — Tipo de investimento detalhado
Cliente detalhou que o objetivo é investimento para renda com aluguel. Reno respondeu explicando que, por ser lançamento, a renda vem depois da entrega e perguntou se a compra seria com financiamento ou entrada maior.

### 2026-05-08 — Pergunta de viabilidade
Cliente perguntou qual seria uma entrada boa para deixar a parcela relativamente baixa. CRM registrou orientação do Reno: unidades do Union Vista na faixa de R$292 mil a R$322 mil; entrada de 30% a 40% tende a dar mais conforto para investimento, sem promessa de parcela/aprovação; Reno perguntou qual faixa mensal seria confortável.

### 2026-05-08 — Pedido de fotos da opção de R$292 mil
Cliente perguntou se havia fotos da opção de R$292 mil. Dados registrados no CRM: opção de R$292.400, 56,9m², 2 quartos, 1 suíte, 2 banheiros, 1 vaga coberta, sacada/varanda, empreendimento Union Vista. O atendimento comercial registrou envio de fotos gerais do empreendimento/áreas (Portaria, Fachada, Piscina, Fitness), esclarecendo que não eram fotos internas específicas da unidade, e abriu possibilidade de enviar vídeo do decorado.

### 2026-05-08 — Persistência silenciosa do inbound
Rotina operacional silenciosa processou o inbound "Você teria fotos desse de R$292mil?". Status atual já estava em Em Atendimento, então foi preservado sem regressão. Repescagem já estava interrompida por `client_replied`. O Resgate ativo daquele momento foi interrompido no CRM por resposta inbound do cliente: `enabled=false`, `next_run_at=null`, `stopped_reason=client_replied`. Nenhum WhatsApp foi enviado por esta rotina silenciosa.

### 2026-05-08 — Vídeo do decorado enviado
Cliente aceitou receber o vídeo do decorado com "Pode ser". Reno enviou link público do vídeo Decorado Linha Union do Union Vista, registrando que é referência do decorado/planta e não confirmação exata da unidade de R$292.400. Após o outbound de mídia, o Resgate foi rearmado em `step=0` para eventual novo silêncio, com contexto `union_vista_decorado_video_followup`.

## Objeções e travas
- Trava de viabilidade: cliente quer entender entrada suficiente para parcela mais baixa. Precisa de condução consultiva sem prometer aprovação ou parcela exata.
- Trava de visualização/material: cliente pediu fotos da opção de R$292 mil; recebeu fotos gerais do empreendimento e vídeo do decorado como referência, mas pode precisar de confirmação visual/material específico se disponível.

## Próximo passo
Aguardar reação do cliente às fotos/vídeo. Se demonstrar interesse positivo, conduzir para visita presencial na Fama para validar opções, entrada e financiamento com segurança. Se seguir apenas em dúvidas de material, responder com dados oficiais disponíveis sem prometer fotos internas específicas da unidade quando não houver evidência.

## Observações operacionais
- Nome cadastrado "Douglas" é utilizável para atendimento.
- Cliente pertence ao escopo Reno (`broker_id=35`).
- Status atual Em Atendimento foi preservado, sem regressão.
- Repescagem de silêncio inicial está fechada por resposta inbound.
- Resgate atual no CRM está rearmado após outbound de mídia: `step=0`, `enabled=true`, `next_run_at=2026-05-08T01:02:30-03:00`, contexto `union_vista_decorado_video_followup`.
- Documento consolidado no caminho oficial do Reno por client_id.
