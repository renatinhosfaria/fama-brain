---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Douglas
client_id: 11273
broker_id: 35
status_crm: Em Atendimento
source: Facebook Ads
created: '2026-05-08'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - union-vista
---
# Atendimento — Douglas

## Resumo atual
Cliente está em atendimento pelo Reno após responder ao primeiro contato do WhatsApp. Confirmou interesse no Union Vista para investimento, com foco em renda de aluguel, e entrou em viabilidade perguntando sobre entrada/parcela. Pediu fotos da opção de aproximadamente R$292 mil, recebeu fotos gerais do empreendimento e aceitou receber o vídeo do decorado com a resposta "Pode ser". O atendimento comercial registrou envio do link público do vídeo como referência de decorado/planta, sem tratar como confirmação exata da unidade de R$292.400. Status CRM permanece em Em Atendimento. Repescagem está encerrada por resposta do cliente. Resgate atual está ativo em step=0 por ter sido rearmado após o outbound normal de mídia do Reno, para eventual silêncio depois do vídeo enviado.

## Dados operacionais
- Cliente ID: 11273
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads
- Telefone/WhatsApp: registrado no CRM
- Empreendimento de interesse: Union Vista (id_empreendimento=22), Grand Ville, Uberlândia
- Última interação relevante: 2026-05-08 00:34 — rotina silenciosa processou inbound "Pode ser", preservou status Em Atendimento e registrou que o Resgate ativo atual pertence ao ciclo pós-outbound normal de mídia.

## Contexto comercial
Lead entrou por Facebook Ads com interesse no Union Vista. O primeiro contato do Reno contextualizou o empreendimento e perguntou se o cliente procurava imóvel na região. O cliente confirmou interesse inicial, informou que está olhando para investimento, detalhou foco em renda de aluguel e passou a avaliar viabilidade financeira do investimento. Depois da orientação sobre entrada/parcela, pediu fotos da opção de R$292 mil. Após receber fotos gerais do empreendimento e a oferta de vídeo do decorado, respondeu "Pode ser", aceitando o envio do vídeo.

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

### 2026-05-08 — Persistência silenciosa do pedido de fotos
Rotina operacional silenciosa processou o inbound "Você teria fotos desse de R$292mil?". Status atual já estava em Em Atendimento, então foi preservado sem regressão. Repescagem já estava interrompida por `client_replied`. Resgate ativo naquele momento foi interrompido no CRM por resposta inbound do cliente: `enabled=false`, `next_run_at=null`, `stopped_reason=client_replied`. Nenhum WhatsApp foi enviado por esta rotina silenciosa.

### 2026-05-08 — Aceite de vídeo do decorado e envio de referência
Cliente aceitou receber o vídeo do decorado com "Pode ser". O atendimento comercial registrou envio do link público do vídeo Decorado Linha Union do Union Vista, informando que é referência de decorado/planta e não confirmação exata da unidade de R$292.400. Resgate foi rearmado em step=0 após o outbound normal de mídia, contexto `union_vista_decorado_video_followup`.

### 2026-05-08 — Persistência silenciosa do inbound "Pode ser"
Rotina operacional silenciosa processou o inbound "Pode ser". Status CRM já estava em Em Atendimento e foi preservado sem regressão. Repescagem já estava encerrada por `client_replied`. O Resgate ativo atual foi preservado porque corresponde ao novo ciclo step=0 armado após outbound normal de mídia do Reno, não ao ciclo anterior de silêncio pré-resposta. Nenhum WhatsApp foi enviado por esta rotina silenciosa.

## Objeções e travas
- Trava de viabilidade: cliente quer entender entrada suficiente para parcela mais baixa. Precisa de condução consultiva sem prometer aprovação ou parcela exata.
- Trava de visualização/material: cliente pediu fotos da opção de R$292 mil e aceitou vídeo do decorado; já recebeu fotos gerais e referência de vídeo, mas ainda pode precisar validar presencialmente planta, unidade, tabela e condição real.

## Próximo passo
Aguardar reação do cliente ao vídeo do decorado. Se demonstrar interesse positivo, conduzir para visita presencial na Fama para validar opções, entrada e financiamento com segurança. Se pedir mais detalhes, responder com dados seguros do CRM e usar a visita como próximo passo para tabela/unidade/condição, sem prometer aprovação ou parcela exata.

## Observações operacionais
- Nome cadastrado "Douglas" é utilizável para atendimento.
- Cliente pertence ao escopo Reno (`broker_id=35`).
- Status atual Em Atendimento foi preservado, sem regressão.
- Repescagem de silêncio inicial está fechada por resposta inbound.
- Resgate anterior foi interrompido por resposta inbound do cliente; Resgate atual foi rearmado depois de outbound normal de mídia e permanece como follow-up de eventual silêncio após o vídeo enviado.
- Documento consolidado no caminho oficial do Reno por client_id.
