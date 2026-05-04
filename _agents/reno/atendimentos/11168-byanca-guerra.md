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
updated: '2026-05-04'
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
Repescagem step 1 enviada pelo Reno em 2026-05-04 às 19:16 BRT, após silêncio ao primeiro contato. Cliente segue em `Não Respondeu`, com interesse comercial vinculado ao Garden Sul, no Jardim Sul/Zona Sul de Uberlândia. Próxima repescagem prevista para 2026-05-05 às 09:10 BRT se não houver resposta.

## Dados operacionais
- Cliente ID: 11168
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Telefone/WhatsApp: JID cadastrado no CRM
- Empreendimento vinculado: Garden Sul (`id_empreendimento=25`)
- Última interação relevante: repescagem step 1 enviada via WhatsApp em 2026-05-04 às 19:16 BRT

## Contexto comercial
Interesse vinculado ao empreendimento Garden Sul, no bairro Jardim Sul/Zona Sul de Uberlândia. O Garden Sul é lançamento com entrega prevista para set/2028, plantas de 2 quartos com suíte, opções a partir de aproximadamente R$ 294.900 e estrutura de lazer/condomínio. A abertura inicial do Reno já tinha perguntado se a cliente procurava imóvel naquela região; por isso a repescagem step 1 mudou o ângulo para organização da busca em lançamento e finalidade de compra.

## Diagnóstico
### Necessidade
Ainda não diagnosticada; o objetivo do step 1 foi abrir uma microresposta sobre finalidade: morar ou comparar oportunidade de compra.

### Momento
Ainda não diagnosticado. Como o empreendimento é lançamento com entrega futura, prazo de obra pode ser ponto relevante se a cliente responder.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. Nenhuma promessa de crédito ou aprovação foi feita.

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

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Trava atual: ausência de primeira resposta após primeiro contato e repescagem step 1.

## Próximo passo
Aguardar resposta da cliente. Se responder, mover o atendimento para `Em Atendimento` quando aplicável e seguir qualificação normal do Reno, começando pela finalidade indicada. Se permanecer sem resposta, próxima repescagem pela matriz oficial em 2026-05-05 às 09:10 BRT.

## Observações operacionais
Nome no CRM parece humano e foi usado com capitalização natural (`Byanca`). Envio do step 1 foi feito pelo fallback excepcional do bridge local na porta 3000, porque `send_message` não estava exposto nesta sessão do cron; o bridge estava saudável/conectado e o envio retornou sucesso técnico com `messageId`. Não houve alteração de status nem arquivamento por se tratar de step 1.
