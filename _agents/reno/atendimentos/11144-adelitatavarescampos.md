---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Adelitatavarescampos
client_id: 11144
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
created: '2026-05-02'
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
---
# Atendimento — Adelitatavarescampos

## Resumo atual
Cliente do Reno (`broker_id=35`) segue em `Não Respondeu`. Primeiro contato enviado em 2026-05-02 e repescagem step 1 enviada com sucesso via WhatsApp em 2026-05-03 às 16:50 BRT. Como o nome cadastrado parece concatenado/inseguro, a repescagem manteve abordagem neutra e priorizou confirmar como a cliente prefere ser chamada antes de iniciar qualificação comercial.

## Dados operacionais
- Cliente ID: 11144
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead automático
- Empreendimento de interesse: Union Vereda, Jaraguá, Uberlândia
- WhatsApp: contato cadastrado no CRM com JID disponível
- Última interação relevante: repescagem step 1 enviada em 2026-05-03 16:50 BRT
- Próxima repescagem prevista: step 2 em 2026-05-04 14:20 BRT, se continuar sem resposta

## Contexto comercial
Lead demonstrou interesse no Union Vereda, empreendimento no bairro Jaraguá, em Uberlândia. O empreendimento tem unidades de 2 quartos e entrega prevista para Dez/2028. Ainda não há diagnóstico sobre finalidade, prazo, decisão ou viabilidade. Como o nome do CRM aparece concatenado (`Adelitatavarescampos`), a prioridade comercial imediata é obter uma microresposta confirmando como a cliente prefere ser chamada.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. Aguardando resposta com nome preferido para abrir a qualificação de forma humana.

### Momento
Ainda não diagnosticado.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. Não houve abordagem de renda, entrada, financiamento ou visita.

## Histórico curado de interações
### 2026-05-03 — Repescagem step 1 enviada
Mensagem enviada pelo Reno via WhatsApp:

> Oi, tudo bem? 🏡
>
> Aqui é o Reno, da Fama. Vi que seu interesse ficou ligado ao Union Vereda, no Jaraguá, mas antes de te passar qualquer orientação eu prefiro deixar o atendimento **bem certinho**.
>
> Como posso te chamar?

- Intenção do step: criar novo motivo para resposta sem repetir a abertura inicial.
- Ângulo usado: nome cadastrado inseguro + contexto do Union Vereda/Jaraguá.
- Diferenciação: em vez de qualificar imóvel, financiamento ou visita, a mensagem reduziu fricção e pediu apenas confirmação de nome.
- Estado CRM após marcação: `repescagem.step=1`, `enabled=true`, `stopped_reason=null`, `next_run_at=2026-05-04T14:20:00-03:00`.
- Status do cliente preservado como `Não Respondeu`.

### 2026-05-02 — Primeiro contato enviado
Mensagem inicial do Reno fez apresentação curta da Fama, contextualizou o interesse no Union Vereda e perguntou como a cliente prefere ser chamada. O status foi alterado de `Sem Atendimento` para `Não Respondeu` e a repescagem foi inicializada para 2026-05-03 às 09:10.

## Objeções e travas
- Nome cadastrado no CRM parece concatenado/inseguro (`Adelitatavarescampos`), exigindo confirmação antes da qualificação.
- Nenhuma objeção comercial real registrada, pois ainda não houve resposta da cliente.

## Próximo passo
Aguardar resposta da cliente. Se ela responder informando o nome, atualizar o `full_name` no CRM, registrar nota objetiva da correção e seguir o atendimento normal/qualificação pelo interesse no Union Vereda. Se permanecer sem resposta, a próxima repescagem elegível será o step 2 em 2026-05-04 às 14:20 BRT.

## Observações operacionais
- Evento de origem: `cliente.created` pela rota `famachat-created`.
- Ref. primeiro contato: evt_3312 / 3312_1777763937422.
- Repescagem enviada pelo worker `reno-repescagem-message-queue-production` em produção.
- O envio foi feito pelo `whatsapp_jid` salvo no CRM; não houve necessidade de tentar variação com/sem nono dígito.
