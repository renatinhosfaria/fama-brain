---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Jeandra Cândido
client_id: 11208
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
---
# Atendimento — Jeandra Cândido

## Resumo atual
Repescagem step 1 enviada com sucesso em 2026-05-06 para tentar gerar a primeira resposta real da cliente. O status operacional permanece `Não Respondeu`; a próxima repescagem ficou programada para 2026-05-07T14:20:00-03:00 se não houver resposta.

## Dados operacionais
- Cliente ID: 11208
- Broker ID: 35
- Status CRM: Não Respondeu
- Origem: SLA Cascata / sla_cascata
- Cliente original relacionado: 11153 (Facebook Ads, broker_id=14; usado apenas como contexto consultivo)
- Telefone/WhatsApp: (34) 98821-5118 / 553488215118@s.whatsapp.net
- Empreendimentos vinculados no CRM: 25 (Garden Sul), 67 (Place+Arbi)
- Última interação relevante: 2026-05-06 — repescagem step 1 enviada pelo Reno

## Contexto comercial
Cliente chegou ao Reno por redistribuição da SLA Cascata, com dois empreendimentos vinculados no CRM: Garden Sul, lançamento no Jardim Sul/Zona Sul com entrega prevista para set/2028, e Place+Arbi, lançamento no Shopping Park/Zona Sul com entrega prevista para jun/2027. O cliente original relacionado tem origem Facebook Ads e também registra esses interesses, mas sem diagnóstico comercial útil para o Reno.

Como o primeiro contato já perguntou se a busca era para morar ou investir, a repescagem step 1 mudou o ângulo para organização da busca entre opções com regiões, prazos e condições diferentes, evitando repetir a pergunta inicial.

## Diagnóstico
### Necessidade
Ainda não diagnosticada. Há interesse em mais de um lançamento, o que sugere necessidade de organizar prioridade entre localização, prazo de entrega e condição de pagamento.

### Momento
Ainda não diagnosticado.

### Decisão
Ainda não diagnosticada.

### Viabilidade
Ainda não diagnosticada. Não houve promessa ou inferência de crédito; a mensagem apenas abriu espaço para entender prioridades de compra.

## Histórico curado de interações
### 2026-05-05 — Primeiro contato WhatsApp
Mensagem enviada pelo Reno: “Oi, Jeandra! Tudo bem? Aqui é o Reno, da Fama. Vi seu interesse em alguns imóveis e queria entender rapidinho: você procura pra morar ou investir?”

O envio foi feito para o JID priorizado `553488215118@s.whatsapp.net` e teve retorno técnico de sucesso. O status CRM mudou de `Sem Atendimento` para `Não Respondeu`.

### 2026-05-05 — Repescagem inicializada
Branch `meta_data.reno_followup.repescagem` criada com `enabled=true`, `step=0`, `entry_shift=noite`, `entry_reference_at=2026-05-05T21:04:36-03:00` e `next_run_at=2026-05-06T09:10:00-03:00`.

### 2026-05-06 — Repescagem step 1 enviada
Mensagem enviada pelo Reno:

“Oi, Jeandra! Tudo bem? 🏡

Como você apareceu com interesse em mais de uma opção, tipo Garden Sul e Place+Arbi, o ponto não é só mandar mais anúncio.

São lançamentos com regiões, prazos e condições diferentes, então vale organizar primeiro **o que pesa mais pra você**.

Pra eu te orientar sem chute: hoje você quer priorizar localização, prazo de entrega ou condição de pagamento?”

Ângulo usado: criar novo motivo para resposta a partir de comparação/organização de prioridades entre dois lançamentos, sem repetir a pergunta inicial sobre morar/investir.

Envio realizado pelo fallback excepcional do bridge local saudável porque `send_message` não estava exposto nesta sessão de cron. O bridge validou o JID salvo por `onWhatsApp` e retornou sucesso técnico. Em seguida, o CRM foi atualizado por `mcp_mcp_postgres_mark_reno_followup_sent` com `step=1`, `last_sent_at=2026-05-06T10:34:50-03:00`, `next_run_at=2026-05-07T14:20:00-03:00`, `claim_expires_at=null` e `stopped_reason=null`.

## Objeções e travas
- Nenhuma objeção registrada até o momento.
- Ainda não houve primeira resposta real ao Reno neste ciclo.

## Próximo passo
Aguardar resposta da cliente. Se continuar sem resposta e permanecer elegível (`broker_id=35`, `status=Não Respondeu`, `repescagem.enabled=true`, `stopped_reason=null`), a próxima execução deve enviar o step 2 a partir de 2026-05-07T14:20:00-03:00, mudando o ângulo para evitar caminho errado/viabilidade prática.

## Observações operacionais
- Nome no CRM parece humano e confiável; foi usado na saudação.
- Como havia dois empreendimentos vinculados, a mensagem citou Garden Sul e Place+Arbi de forma contextual, sem inventar disponibilidade ou condição.
- O cliente original 11153 foi usado apenas como contexto; a entidade operacional deste atendimento é o cliente 11208.
- Status não foi alterado no step 1, conforme contrato da repescagem.
- Nota operacional automática de envio registrada no CRM pelo usuário Reno (`user_id=35`).
