---
schema_version: 1
type: entity
status: active
created: '2026-06-13'
updated: '2026-06-13'
source: agent-generated
tags:
  - reno
  - whatsapp-inbound
  - first-contact
  - repescagem
  - union-vista
  - grand-ville
  - crm-verified
  - curado-brain
author_agent: brain
name: Gustavo Silva
entity_type: lead
aliases:
  - gustavo-silva
  - cliente-11702
  - 'client:11702'
external_ids:
  client_id: '11702'
  broker_id: '35'
  empreendimento_id: '22'
  empreendimento_slug: union-vista
  fonte: Facebook Ads
  regiao: Grand Ville
mentions_entity:
  - reno-hub
  - union-vista
related:
  - '[[reno-hub]]'
  - '[[union-vista]]'
  - '[[2026-06-13-inbound-whatsapp-registrado-sem-kpi-de-primeiro-contato]]'
confidence: 0.95
verified_by: null
---
# Gustavo Silva

## Resumo curado
Lead CRM `client_id=11702`, origem Facebook Ads, associado ao [[union-vista]] / Grand Ville e sob broker operacional Reno (`broker_id=35`). O evento recente não deve ser interpretado como nova tarefa comercial automática: ele registra uma anomalia operacional de inbound em que o WhatsApp chegou antes do horário de envio reconhecido pelo KPI de primeiro contato.

## Estado CRM verificado
- Status comercial no CRM no momento da curadoria: **Não Respondeu**.
- WhatsApp disponível no CRM; dados de contato brutos não foram replicados aqui.
- Não há visitas, reuniões ou vendas registradas no read-back consultado.
- `reno_followup.repescagem` foi interrompido por `client_replied`, com `enabled=false` e `next_run_at=null`.

## Interpretação de curadoria
O registro em [[2026-06-13-inbound-whatsapp-registrado-sem-kpi-de-primeiro-contato]] é principalmente memória operacional/auditável do Reno. A função canônica de marcação de resposta não gerou KPI porque retornou `responded_before_sent_at`; por isso a entidade preserva o status CRM como fonte de verdade e evita inferir avanço de funil.

## Continuidade útil
- Se houver nova resposta válida no CRM/FamaChat, revisar status comercial antes de qualquer consolidação adicional.
- Não reativar repescagem automática só por existir este inbound; a branch já está parada por resposta do cliente.
- Relacionar futuros eventos de atendimento deste cliente a esta entidade para evitar notas soltas por `client_id=11702`.

## Fontes relacionadas
- [[reno-hub]]
- [[union-vista]]
- [[2026-06-13-inbound-whatsapp-registrado-sem-kpi-de-primeiro-contato]]
