---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Andreia Carvalho
client_id: 10986
broker_id: 35
status_crm: Em Atendimento
source: SLA Cascata
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
---
# Atendimento — Andreia Carvalho

## Resumo atual
Cliente em atendimento com Reno, interessada em imóvel compatível com 2 vagas. Após receber fotos/dados do Zurique, ficou silenciosa. Resgate step 2 enviado em 2026-04-30 com gancho no critério decisivo de 2 vagas e escolha simples de região para destravar a resposta.

## Dados operacionais
- Cliente ID: 10986
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: final 5440
- Última interação relevante: Resgate step 2 enviado em 2026-04-30 às 15:00 BRT, bucket `midia_opcao_enviada`.

## Contexto comercial
Interesse inicial no Union Vereda/região do Jaraguá, mas a cliente indicou possuir dois carros e reforçou que 2 vagas são indispensáveis. Preferências consolidadas no CRM: imóveis na planta ou em construção, até aproximadamente R$ 430 mil, regiões Martins, Jaraguá, Jardim Patrícia e possibilidade de Roosevelt; evitar Umuarama, Santa Mônica e Zona Sul sentido Uberlândia Shopping por percepção de segurança/valorização.

Opção apresentada pelo Reno: Zurique, no Roosevelt, com unidade de 51m², 2 quartos, varanda e 2 vagas cobertas, faixa aproximada de R$ 293.900. Também havia opção de 45m² com 1 vaga, descartada por não atender ao critério de 2 vagas. Fotos/imagens promocionais foram enviadas; book/PDF ou planta baixa oficial não foram localizados naquele momento.

## Diagnóstico
### Necessidade
Encontrar apartamento que encaixe no perfil de rotina da cliente, especialmente com 2 vagas de garagem.

### Momento
Cliente estava comparando opções e avaliando material enviado. Houve silêncio após apresentação do Zurique e após o resgate step 1.

### Decisão
Critérios de região e vaga parecem decisivos. Não há registro curado de terceiro decisor nesta etapa.

### Viabilidade
Faixa desejada informada: até cerca de R$ 430 mil. O Zurique apresentado está abaixo dessa faixa, mas ainda precisa validação de interesse e condição real. Não prometer aprovação ou encaixe financeiro sem análise.

## Histórico curado de interações
### 2026-04-27 — Primeiro atendimento e qualificação
Cliente respondeu ao primeiro contato sobre o Union Vereda, perguntou sobre vaga e informou morar próximo à região. Reforçou que precisa de 2 vagas porque possui dois carros.

### 2026-04-27 — Critérios consolidados
Cliente informou regiões preferidas: Martins, Jaraguá, Jardim Patrícia; aceitou Osvaldo Rezende, Lídice e Roosevelt. Rejeitou Umuarama, Santa Mônica e Zona Sul sentido Uberlândia Shopping. Preferência por imóvel na planta/em construção, até aproximadamente R$ 430 mil.

### 2026-04-27 — Opção Zurique apresentada
Reno localizou e apresentou Zurique, no Roosevelt, como opção compatível com 2 vagas. Cliente pediu fotos/book/material e metragem. Reno registrou envio de imagens promocionais e dados da unidade de 51m² com 2 vagas cobertas.

### 2026-04-30 — Resgate step 1
Bucket: `midia_opcao_enviada`.
Mensagem enviada: "Andreia, conseguiu ver as imagens e os dados do Zurique que te mandei?\n\nComo ele atende seu ponto das 2 vagas, quero entender se esse perfil fez sentido para você ou se ajusto a busca."
Próximo `next_run_at`: 2026-04-30T14:41:29-03:00.
Intenção: retomar avaliação do material enviado e validar se o Zurique faz sentido ou se a busca deve ser ajustada.

### 2026-04-30 — Resgate step 2
Bucket: `midia_opcao_enviada`.
Mensagem enviada: "Andreia, pensando no seu critério das 2 vagas, acho melhor a gente não perder tempo com opção que não atende isso.\n\nVocê prefere que eu mantenha o Roosevelt na busca por causa do Zurique ou volto a focar mais em Martins, Jaraguá e Jardim Patrícia?"
Próximo `next_run_at`: 2026-04-30T17:00:15-03:00.
Intenção: mudar a abordagem do step 1, saindo de pedido de opinião sobre material para escolha simples de direção da busca, com foco em reduzir perda de tempo e respeitar o critério de 2 vagas.

## Objeções e travas
- 2 vagas de garagem é critério decisivo; 1 vaga tende a inviabilizar.
- Rejeição de bairros por percepção de segurança/valorização: Umuarama, Santa Mônica e Zona Sul sentido Uberlândia Shopping.
- Material completo/planta oficial do Zurique não localizado no momento anterior; evitar prometer planta oficial sem validar asset.

## Próximo passo
Se a cliente responder escolhendo Roosevelt/Zurique, conduzir para validação de condição e convite para visita presencial na Fama. Se preferir Martins, Jaraguá ou Jardim Patrícia, ajustar a busca com esse filtro e apresentar uma opção compatível, sem despejar catálogo.

## Observações operacionais
- CRM/FamaChat é a fonte operacional de verdade. Documento criado para reconciliar lacuna apontada em auditorias anteriores do vault.
- Resgate permanece ativo após step 2, com próxima elegibilidade em 2026-04-30T17:00:15-03:00, salvo resposta da cliente ou mudança comercial.
- Step 2 trouxe abordagem diferente do step 1: novo ângulo comercial (evitar perder tempo com opção fora do critério), nova pergunta (escolha entre manter Roosevelt/Zurique ou voltar às regiões preferidas), benefício de direção mais precisa e CTA de baixa fricção.
