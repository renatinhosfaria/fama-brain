---
type: entity
name: Gustavo Silva
entity_type: lead
aliases:
  - gustavo-silva
  - cliente-11702
  - 'client:11702'
  - gustavo-silva-11702
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
schema_version: 1
status: active
created: '2026-06-13'
updated: '2026-06-14'
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
  - homonimo-desambiguado
author_agent: brain
owner: brain
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

## Desambiguação por ID estável
Há registros operacionais antigos de outro atendimento com o mesmo nome civil **Gustavo Silva**, mas com `client_id=11465` e ciclo de repescagem concluído/arquivado em maio de 2026. Esta entidade representa somente o cliente CRM `11702`.

Regra de curadoria adotada: não consolidar automaticamente homônimos por nome; usar `client_id`, contexto de empreendimento e journals de origem como chave estável. Se o cliente `11465` voltar a aparecer, criar/curar uma entidade própria ou registrar explicitamente a relação como homônimo, não como duplicata.

Referências de homônimo que **não** devem ser mescladas nesta entidade sem nova verificação CRM:
- [[2026-05-18-primeiro-contato-enviado-cliente-11465-gustavo-silva]]
- [[2026-05-24-repescagem-step-5-concluida-e-cliente-arquivado-gustavo-silva]]

## Continuidade útil
- Se houver nova resposta válida no CRM/FamaChat, revisar status comercial antes de qualquer consolidação adicional.
- Não reativar repescagem automática só por existir este inbound; a branch já está parada por resposta do cliente.
- Relacionar futuros eventos de atendimento deste cliente a esta entidade para evitar notas soltas por `client_id=11702`.

## Fontes relacionadas
- [[reno-hub]]
- [[union-vista]]
- [[2026-06-13-inbound-whatsapp-registrado-sem-kpi-de-primeiro-contato]]
