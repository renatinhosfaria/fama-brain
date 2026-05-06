---
type: entity-profile
owner: reno
created: '2026-05-05'
updated: '2026-05-06'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - nome-corrigido
  - manual-reprocesso
  - repescagem
  - repescagem-step2
entity_type: atendimento
entity_name: Keila
client_id: 11186
broker_id: 35
status_crm: Não Respondeu
source: Facebook Ads
---
# Atendimento — Keila

## Resumo atual
Cliente entrou via Facebook Ads com interesse no empreendimento Place+Arbi, no Shopping Park. O cadastro original veio ruidoso como `keila_Ef`, mas Renato corrigiu que o primeiro nome humano é Keila; o CRM está ajustado para `Keila`. Status atual no CRM: `Não Respondeu`.

Em 2026-05-06 foi enviada a repescagem step 2. A abordagem mudou em relação ao step 1: saiu de finalidade/momento de compra (`morar` vs comparar oportunidade) para **viabilidade prática do lançamento**, com foco em entrada, parcelas da obra e financiamento antes de avançar em planta/valor.

## Dados operacionais
- Cliente ID: 11186
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: Facebook Ads / lead_automatico
- Telefone/WhatsApp: telefone cadastrado com WhatsApp; JID cadastrado no CRM
- Empreendimento de interesse: Place+Arbi — Shopping Park, Uberlândia
- Nome operacional atual: Keila
- Última interação relevante: 2026-05-06 09:45 BRT — repescagem step 2 enviada via WhatsApp

## Contexto comercial
O cadastro indica interesse no Place+Arbi, lançamento no Shopping Park / Zona Sul, com entrega prevista para JUN/2027. Unidades cadastradas no CRM indicam plantas de 48 m² e 50 m², com sacada, e perfil de lançamento. Ainda não houve resposta real da cliente nem diagnóstico comercial iniciado.

Como Renato confirmou que o cadastro ruidoso permite inferir Keila com segurança, as próximas mensagens do Reno devem usar Keila e seguir a qualificação normal, sem aguardar nova confirmação de nome.

## Diagnóstico
### Necessidade
Ainda não identificada. A repescagem step 1 abriu a pergunta de finalidade; a step 2 buscou criar resposta por viabilidade prática do lançamento.

### Momento
Ainda não identificado. O contexto do Place+Arbi exige entender se a entrega prevista para 2027 combina com o momento da cliente.

### Decisão
Ainda não identificada.

### Viabilidade
Ainda não identificada. A step 2 trouxe o tema de entrada, parcelas da obra e financiamento sem prometer aprovação ou condição.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato não enviado por falha técnica
Reno validou o cliente no CRM: cliente existente, `broker_id=35`, status `Sem Atendimento`. Foi preparada uma abertura neutra por interpretação excessivamente cautelosa do cadastro ruidoso. A tentativa de envio pelo WhatsApp não concluiu por erro técnico de endereçamento no canal. O status foi preservado em `Sem Atendimento` e uma nota operacional foi registrada no CRM.

### 2026-05-05 — Primeiro contato enviado após correção técnica
Após autorização manual do Renato, Reno revalidou o cliente no CRM, confirmou `broker_id=35`, status `Sem Atendimento`, WhatsApp disponível e interesse no Place+Arbi. Foram enviadas duas mensagens curtas pelo WhatsApp: apresentação do Reno/Fama e pergunta de confirmação de nome. O CRM foi atualizado condicionalmente para `Não Respondeu` e a branch de repescagem foi inicializada para acompanhar o silêncio caso a cliente não responda.

### 2026-05-05 — Correção de interpretação do nome
Renato apontou que `keila_Ef` é um cadastro ruidoso, mas contém primeiro nome humano claro: Keila. A pergunta `como posso te chamar?` foi classificada como excesso de cautela neste caso. CRM atualizado para `full_name = Keila`; nota operacional registrada. Regra futura: usar primeiro nome claro extraído de cadastros ruidosos e só perguntar o nome quando não houver primeiro nome confiável.

### 2026-05-05 — Repescagem step 1 enviada
Repescagem enviada via WhatsApp usando o JID cadastrado no CRM, com fallback excepcional pelo bridge local saudável porque `send_message` não estava exposto no runtime do cron. Ângulo usado: novo motivo para responder sobre o Place+Arbi, sem repetir a abertura de cadastro/nome; foco em lançamento com entrega planejada e em entender se o imóvel combina com o momento da cliente.

Mensagem enviada:

> Oi, Keila! Tudo bem? 🏡
>
> Sobre o Place+Arbi, no Shopping Park, como é um lançamento com entrega planejada, vale entender primeiro se ele combina com o seu momento antes de olhar só planta ou valor.
>
> Pra eu te orientar de um jeito mais certeiro: você estava olhando mais pra **morar** ou pra comparar uma oportunidade de compra na Zona Sul?

Estado CRM após marcação: `repescagem.step=1`, `enabled=true`, `last_sent_at=2026-05-05T19:44:39-03:00`, `next_run_at=2026-05-06T09:10:00-03:00`, `stopped_reason=null`. Status permaneceu `Não Respondeu` conforme regra dos steps 1 a 4.

### 2026-05-06 — Repescagem step 2 enviada
Repescagem step 2 enviada via WhatsApp usando o JID cadastrado no CRM, com fallback excepcional pelo bridge local saudável porque `send_message` não está exposto no runtime do cron. Antes do envio, o CRM confirmou cliente `broker_id=35`, status `Não Respondeu`, branch `repescagem.enabled=true`, `step=1` e `next_run_at` vencido.

Diferenciação em relação ao step 1:
- Ângulo comercial: de finalidade/momento para viabilidade prática do lançamento.
- Pergunta: de morar/comparar oportunidade para permissão de primeira leitura de entrada, parcelas da obra e financiamento.
- Benefício: evitar avançar em opção que não encaixa financeiramente, em vez de apenas entender o objetivo de compra.
- Vocabulário/ritmo: abertura direta de manhã, foco em cuidado prático e leitura pé no chão.

Mensagem enviada:

> Keila, bom dia! 🔑
>
> No Place+Arbi, por ser lançamento com entrega prevista pra 2027, o cuidado principal é não olhar só planta e valor. Entrada, parcelas da obra e financiamento precisam fazer sentido no seu momento.
>
> Posso te ajudar a fazer uma primeira leitura **bem pé no chão** antes de você avançar com qualquer opção?

Estado CRM após marcação: `repescagem.step=2`, `enabled=true`, `last_sent_at=2026-05-06T09:45:14-03:00`, `next_run_at=2026-05-07T14:20:00-03:00`, `stopped_reason=null`, `claim_expires_at=null`. Status permaneceu `Não Respondeu` conforme regra dos steps 1 a 4.

## Objeções e travas
- Trava técnica anterior: houve falha de endereçamento WhatsApp no primeiro evento; correção aplicada e envio manual autorizado realizado com sucesso em 2026-05-05.
- Nome corrigido: usar Keila nas próximas mensagens.
- Ainda não há objeção comercial real, pois a cliente não respondeu.

## Próximo passo
Aguardar resposta da cliente. Se responder, a repescagem deve parar e o atendimento deve seguir pelo fluxo de qualificação, com status `Não Respondeu` → `Em Atendimento` somente se ainda aplicável.

Se continuar sem resposta, a próxima repescagem elegível é o step 3 em 2026-05-07 às 14:20 BRT. O step 3 deve mudar novamente o ângulo, evitando repetir viabilidade/entrada/parcela; sugestão: diagnóstico leve por critério principal de escolha, como localização no Shopping Park, planta/tamanho ou prazo de entrega em 2027.

## Observações operacionais
- Evento original: `evt_3354`.
- Idempotency key original: `3354_1777996393685`.
- Reprocessamento manual autorizado por Renato em 2026-05-05.
- Repescagem inicializada com `step=0`, `enabled=true`, `entry_shift=tarde`, `next_run_at=2026-05-05T19:10:00-03:00`.
- Envios de repescagem steps 1 e 2 realizados por fallback excepcional via bridge local `/send`, com sucesso técnico no JID cadastrado e validação `onWhatsApp`.
- Documento mantido no caminho existente iniciado por `client_id`; o nome operacional/`entity_name` está corrigido para Keila para evitar duplicidade no vault.
