---
aliases:
  - Keila
  - keila
  - cliente-11186
  - 'client:11186'
author_agent: brain
broker: '[[reno]]'
confidence: 0.93
created: '2026-06-16'
entity_name: Keila
entity_type: lead
external_ids:
  broker_id: '35'
  client_id: '11186'
  empreendimento_id: '67'
interesse_atual: >-
  Interesse operacional em Place+Arbi / Shopping Park; conversa retomada por
  inbound curto depois de follow-up de resgate sobre visita/horário pendente.
mentions_entity:
  - reno-hub
  - place-arbi
  - shopping-park
name: Keila
objecoes_ativas:
  - >-
    Resposta inbound muito curta e ambígua; exige reconstrução de contexto antes
    de qualquer avanço comercial.
  - >-
    Há homônimos/duplicatas operacionais no CRM com o mesmo primeiro nome; a
    entidade canônica atual está vinculada ao client_id 11186.
origem: Facebook Ads
owner: brain
proximo_passo: >-
  Reno ou atendimento humano deve reconstruir o contexto do Place+Arbi e
  confirmar se ainda há interesse/horário para continuidade, sem tratar o
  inbound curto como qualificação completa.
related:
  - '[[reno-hub]]'
  - '[[place-arbi]]'
  - '[[shopping-park]]'
  - '[[2026-06-15-keila-inbound-whatsapp-nao-sem-primeiro-contato-estruturado]]'
schema_version: 1
source: agent-generated
status: active
status_comercial: Em Atendimento
subtype: person
tags:
  - reno
  - whatsapp-inbound
  - qualificacao
  - place-arbi
  - shopping-park
  - crm-verified
  - curado-brain
  - homonimo-desambiguado
type: entity
updated: '2026-06-16'
verified_at: '2026-06-16'
verified_by: CRM read-back via mcp_crm_postgres_get_client em 2026-06-16
---
# Keila

## Resumo curado
Lead de Facebook Ads atendida pelo [[reno]] e verificada no CRM como cliente ativo/atual em **Em Atendimento**. O contexto comercial associado é [[place-arbi]] / [[shopping-park]]. A interação recente foi um inbound curto em 2026-06-15, após automações de repescagem/resgate, sem novo primeiro contato estruturado enviado por essa rotina.

## Classificação
- Tipo: entidade / lead.
- Tema: Reno, WhatsApp inbound, qualificação e retomada de interesse em [[place-arbi]].
- Estado: ativo, mas com sinal de baixa clareza semântica no último inbound.
- Prioridade: média — útil para continuidade do atendimento, mas não deve virar tarefa imediata automática sem novo diagnóstico.

## Interesse atual
Interesse operacional em [[place-arbi]] / [[shopping-park]]. O histórico sugere que a decisão pode depender de entrada, parcela, prazo de mudança ou visita/horário pendente, mas o último inbound foi insuficiente para inferir preferência firme.

## Objeções e riscos de interpretação
- O inbound recente foi apenas uma negativa curta; interpretar como objeção definitiva seria excesso de inferência.
- Há duplicatas/homônimos no CRM em ciclos de SLA Cascata com status terminal/inativo. Para continuidade, esta nota usa como canônico o cliente ativo verificado no CRM (`client:11186`).
- Não há evidência suficiente para tratar como lead qualificada para visita sem reconstrução de contexto.

## Próximo passo sugerido
Retomar com mensagem consultiva curta, reconstruindo o contexto do [[place-arbi]] e confirmando se ainda faz sentido falar de visita/horário, entrada, parcela ou prazo de mudança.

## Evidências relacionadas
- [[2026-06-15-keila-inbound-whatsapp-nao-sem-primeiro-contato-estruturado]]
- CRM read-back em 2026-06-16 para `client:11186`.
- Duplicatas operacionais inativas identificadas no CRM foram tratadas apenas como evidência de desambiguação, não como estado atual desta entidade.
