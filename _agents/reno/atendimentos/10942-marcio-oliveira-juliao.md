---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Márcio Oliveira Julião
client_id: 10942
broker_id: 35
status_crm: Em Atendimento
source: Facebook Ads
created: '2026-04-29'
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - inbound
  - union-vista
  - midia
---
# Atendimento — Márcio Oliveira Julião

## Resumo atual
Cliente do Reno em `Em Atendimento`, vindo de Facebook Ads, com interesse no Union Vista, no Grand Ville/Zona Leste de Uberlândia. Após primeiro contato e repescagens, respondeu e a repescagem foi interrompida (`stopped_reason=client_replied`, `enabled=false`, `next_run_at=null`). Cliente trouxe sinais de viabilidade (`Tenho a entrada`, cerca de R$ 5.000) e em 2026-05-03 retomou pedindo confirmação sobre Minha Casa Minha Vida, prazo de entrega e planta dos apartamentos do mesmo empreendimento.

## Dados operacionais
- Cliente ID: 10942
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads / FamaChat
- Telefone/WhatsApp: cadastrado no CRM; WhatsApp disponível
- Empreendimento ativo: Union Vista (id_empreendimento 22), Grand Ville, Zona Leste
- Última interação relevante: 2026-05-03 — cliente confirmou que a dúvida é sobre o mesmo apartamento/Union Vista e pediu MCMV, entrega e planta

## Contexto comercial
Union Vista é um lançamento no Grand Ville, com entrega prevista no CRM para Jul/2027. Apartamentos ativos no CRM: 56,9m² e 58,4m², ambos com 2 quartos, 1 suíte, 2 banheiros, varanda/sacada gourmet e 1 vaga coberta; também há garden de 82,2m². Valores cadastrados a partir de aproximadamente R$ 292.400, variando por unidade. Cliente quer entender se há possibilidade de financiamento pelo Minha Casa Minha Vida e precisa receber planta/prazo.

## Diagnóstico
### Necessidade
Interesse em apartamento do Union Vista, buscando clareza sobre planta, prazo e possibilidade de enquadramento no MCMV.

### Momento
Cliente ficou sem responder por rotina corrida no serviço e retomou espontaneamente no domingo, com dúvidas objetivas. O atendimento continua ativo.

### Decisão
Ainda sem informação confirmada sobre outros decisores.

### Viabilidade
Cliente sinalizou anteriormente entrada em torno de R$ 5.000. MCMV deve ser tratado como possibilidade a validar conforme unidade, valor, renda/enquadramento e análise; não prometer aprovação. Usar a visita presencial como próximo passo para simulação segura se a planta/perfil agradar.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato operacional
Reno enviou mensagem inicial sobre o Union Vista, na região do Grand Ville, preservando status `Não Respondeu`.

### 2026-04-28 — Repescagem step 1
Reno enviou primeira repescagem. Sem resposta registrada na ocasião.

### 2026-04-29 — Repescagem step 2 enviada
Reno abordou encaixe financeiro e perguntou se o cliente pensava em comprar financiado ou à vista.

### 2026-04-30 — Repescagem step 3 enviada
Reno mudou o ângulo para finalidade da compra: morar ou investir no Union Vista. Depois disso o cliente respondeu.

### 2026-05-01 — Respostas inbound sobre viabilidade
Cliente respondeu `4.800`, depois `Tenho a entrada` e `5 mil`. Interpretação curada: entrada disponível/pretendida próxima de R$ 5.000, sem tratar como aprovação ou encaixe garantido. Persistência operacional validou `broker_id=35`, preservou `Em Atendimento` e manteve repescagem interrompida.

### 2026-05-01 — Áudio inbound com transcrição não confiável
Cliente enviou áudio; transcrição automática ficou sem sentido comercial seguro. Não usar como dado de diagnóstico sem confirmação.

### 2026-05-03 — Retomada com dúvida sobre MCMV, entrega e planta
Cliente pediu desculpas pela falta de retorno, disse que a semana foi corrida e perguntou se o apartamento aceita financiamento pelo Minha Casa Minha Vida, qual o prazo até entrega e a planta dos apartamentos. Reno perguntou se era o mesmo apartamento; cliente confirmou `Sim, isso mesmo`. CRM/MinIO confirmaram o contexto Union Vista e foi localizada prancha de plantas no MinIO: 56,9m² (finais 1, 4, 5 e 8), 58,4m² (finais 2, 3, 6 e 7), ambos com 2 quartos, 1 suíte, varanda gourmet; também aparecem versões garden. Próxima resposta ao cliente deve enviar a planta, informar entrega prevista Jul/2027 e tratar MCMV como possibilidade dependente de enquadramento/análise.

## Objeções e travas
- Entrada indicada em torno de R$ 5.000 pode exigir ajuste de expectativa, unidade, condição de entrada parcelada e simulação segura.
- Cliente quer MCMV; não prometer aprovação, apenas possibilidade a validar.
- Cliente retomou após rotina corrida; manter tom leve, sem cobrança.

## Próximo passo
Enviar ao cliente a planta localizada e responder: Union Vista tem possibilidade de financiamento pelo Minha Casa Minha Vida conforme unidade/enquadramento; entrega prevista Jul/2027; plantas principais de 56,9m² e 58,4m² com 2 quartos, 1 suíte, varanda gourmet e 1 vaga. Se o perfil agradar, convidar para passar na Fama na segunda-feira para ver as opções e simular com segurança.

## Observações operacionais
- CRM/FamaChat segue como fonte operacional de verdade.
- Nota CRM 16485 registrou a retomada de 2026-05-03 e o conteúdo a ser respondido.
- Resgate não possui ciclo ativo; repescagem já está parada por `client_replied`.
- Prancha de plantas localizada em MinIO/URL pública: https://s3.famachat.com.br/famaserver-files/public/empreendimentos/HLTS-Construtora/Union-Vista/fotos/HLTS_-UNION-VISTA_PLANTAS-A4_FEV-2025-1774650777724-602159699.jpg
