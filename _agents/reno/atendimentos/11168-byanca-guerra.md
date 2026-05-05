---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Byanca Guerra
client_id: 11168
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-04'
updated: '2026-05-05'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Byanca Guerra

## Resumo atual
Repescagem step 2 enviada pelo Reno em 2026-05-05 às 09:15 BRT, após silêncio ao primeiro contato e ao step 1. Cliente segue em `Não Respondeu`, com interesse comercial vinculado ao Garden Sul, no Jardim Sul/Zona Sul de Uberlândia. Próxima repescagem prevista para 2026-05-06 às 14:20 BRT se não houver resposta.

## Dados operacionais
- Cliente ID: 11168
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: JID cadastrado no CRM
- Empreendimento vinculado: Garden Sul (`id_empreendimento=25`)
- Última interação relevante: repescagem step 2 enviada via WhatsApp em 2026-05-05 às 09:15 BRT

## Contexto comercial
Interesse vinculado ao empreendimento Garden Sul, no bairro Jardim Sul/Zona Sul de Uberlândia. O Garden Sul é lançamento com entrega prevista para set/2028, plantas de 2 quartos com suíte, opções a partir de aproximadamente R$ 294.900 e estrutura de lazer/condomínio. A abertura inicial do Reno já tinha perguntado se a cliente procurava imóvel naquela região; a repescagem step 1 mudou o ângulo para organização da busca em lançamento e finalidade de compra. O step 2 avançou para viabilidade prática do lançamento, destacando entrada, financiamento e parcelas da obra antes de comparar outras opções.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. A régua tentou abrir microresposta primeiro por finalidade (`morar` versus comparar oportunidade) e depois por leitura de encaixe do formato de pagamento.

### Momento
Ainda não diagnosticado. Como o empreendimento é lançamento com entrega futura, prazo de obra e forma de pagamento seguem como pontos prováveis de qualificação se a cliente responder.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. O step 2 introduziu entrada, financiamento e parcelas da obra como pontos de análise, sem prometer aprovação de crédito.

## Histórico curado de interações
### 2026-05-04 — Primeiro contato enviado
Reno enviou abertura curta pelo WhatsApp, apresentando-se pela Fama e contextualizando o interesse no Garden Sul, no Jardim Sul. Em seguida, perguntou se a cliente está procurando imóvel nessa região.

Status no CRM atualizado condicionalmente de Sem Atendimento para Não Respondeu. Branch de repescagem inicializada com step 0, turno de entrada madrugada e próximo envio programado para 2026-05-04 às 19:10, caso não houvesse resposta.

Ref.: evt_3336 / 3336_1777887774533

### 2026-05-04 — Repescagem step 1 enviada
Mensagem enviada:

> Oi, Byanca! Tudo bem? 🏡
>
> Sobre o Garden Sul, como é um lançamento na Zona Sul e tem plantas/faixas diferentes, o ideal não é só olhar o anúncio: é entender **qual caminho combina com o seu momento** para não perder tempo com opção solta.
>
> Você está olhando mais para morar ou para comparar uma oportunidade de compra na região?

Ângulo usado: imóvel específico / compra para morar versus comparação de oportunidade. Diferenciação em relação ao primeiro contato: saiu da confirmação de região e passou para organização do caminho de compra em lançamento, com pergunta objetiva sobre finalidade.

CRM atualizado via `mark_reno_followup_sent`: `repescagem.step=1`, `last_sent_at=2026-05-04T19:16:32-03:00`, `next_run_at=2026-05-05T09:10:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`. Status permaneceu `Não Respondeu` conforme regra dos steps 1 a 4.

### 2026-05-05 — Repescagem step 2 enviada
Mensagem enviada:

> Byanca, bom dia! 🔑
>
> No Garden Sul, um ponto que costuma mudar bastante a escolha é olhar a planta junto com entrada, financiamento e parcelas da obra. Às vezes a unidade parece boa no anúncio, mas só vale seguir se o **formato de pagamento** encaixar no seu momento.
>
> Quer que eu faça uma primeira leitura com você para ver se esse lançamento faz sentido antes de comparar outras opções?

Ângulo usado: evitar caminho errado / viabilidade prática do lançamento. Diferenciação em relação ao step 1: saiu da pergunta de finalidade e foi para formato de pagamento, entrada/financiamento/parcelas da obra e decisão de seguir ou comparar alternativas.

CRM atualizado via `mark_reno_followup_sent`: `repescagem.step=2`, `last_sent_at=2026-05-05T09:15:34-03:00`, `next_run_at=2026-05-06T14:20:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`. Status permaneceu `Não Respondeu` conforme regra dos steps 1 a 4.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava atual: ausência de primeira resposta após primeiro contato e duas repescagens.

## Próximo passo
Aguardar resposta da cliente. Se responder, mover o atendimento para `Em Atendimento` quando aplicável e seguir qualificação normal do Reno, começando pelo ponto respondido. Se permanecer sem resposta, próxima repescagem pela matriz oficial em 2026-05-06 às 14:20 BRT.

## Observações operacionais
Nome no CRM parece humano e foi usado com capitalização natural (`Byanca`). Envio do step 1 e do step 2 foram feitos pelo fallback excepcional do bridge local na porta 3000, porque `send_message` não estava exposto nesta sessão do cron; o bridge estava saudável/conectado e o envio retornou sucesso técnico. Não houve alteração de status nem arquivamento por se tratar de step 2.
