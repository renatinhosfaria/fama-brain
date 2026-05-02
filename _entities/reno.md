---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: Reno
subtype: person
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - broker
  - ia-agent
  - reno
schema_version: 1
status: active
provenance: agent-generated
author_agent: VaultSteward
verified_by: null
verified_at: null
confidence: 0.95
aliases:
  - Reno Agente de IA
  - Reno Bot
external_ids:
  sistema_user_id: 35
  role: Executivo
  department: Vendas
clients:
  - '[[bruno-savio]]'
  - '[[augusto-santana]]'
  - '[[samuel-kim]]'
  - '[[jisa-dantas]]'
  - '[[esther-osklen]]'
  - '[[wueverton-lima]]'
  - '[[edson-tolentino]]'
  - '[[murilo-damasceno]]'
  - '[[davi-maia]]'
  - '[[leticia-melo]]'
  - '[[ana-clara-marques]]'
  - '[[andreia-carvalho]]'
  - '[[eduarda]]'
  - '[[silva-porto]]'
  - '[[pedro]]'
  - '[[guilherme-mendes]]'
related:
  - '[[_agents/reno/profile|profile-agente]]'
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Reno é o **agente de IA principal de vendas** da Fama Negócios Imobiliários. Atua como broker autônomo (broker_id 35, role Executivo, departamento Vendas) operando WhatsApp e CRM. Conduz primeiro contato, repescagem (steps 1–3), resgate (steps 1–2), apresentação de empreendimentos, agendamento de visitas e qualificação consultiva de viabilidade.

Esta nota é o **perfil canônico institucional** do Reno como entidade. O perfil operacional do agente (instructions, decisões, journal) vive em [[_agents/reno/profile|_agents/reno/profile]].

## Identificação

- **Nome canônico:** Reno
- **Nome completo CRM:** Reno Agente de IA
- **Sistema user id:** 35
- **Email:** reno@famanegociosimobiliarios.com.br
- **Role:** Executivo
- **Departamento:** Vendas
- **Status:** Ativo

## Perfil operacional

- **Modalidade:** Agente de IA assistido por humanos (Renato)
- **Canal primário:** WhatsApp (via FamaChat bridge)
- **Volume sob responsabilidade:** 16 perfis canônicos de cliente (Lotes 1–3) + dezenas de outros leads sem perfil canônico ainda
- **Origem dos leads:** SLA Cascata, Facebook Ads, leads orgânicos

## Padrões de atendimento (observados)

- Diagnóstico consultivo antes de apresentar imóvel (renda, entrada, vínculo, região, finalidade)
- Régua estruturada: primeiro contato → repescagem 3 steps (~24h cada) → resgate 2 steps por bucket
- Notes de áudio transcritas e contextualizadas no CRM
- Tom acolhedor, sem prometer aprovação de financiamento
- Encaminhamento a visita presencial Fama como conversão alvo

## Especialidades observadas

- Empreendimentos HLTS (Union Vista, Union Vereda) — alta cobertura
- Place+Arbi (Shopping Park) — apresentação para Zona Sul
- Garden Sul (Jardim Sul) — descoberto via [[davi-maia]]
- Zurique (Roosevelt) — alternativa apresentada para [[andreia-carvalho]]

## Clientes ativos com perfil canônico

**Em Atendimento (engajados):**
- [[samuel-kim]], [[jisa-dantas]], [[andreia-carvalho]], [[eduarda]], [[silva-porto]], [[guilherme-mendes]]

**Visita confirmada:**
- [[pedro]] (01/05 18h)

**Agendamento (visita cancelada):**
- [[augusto-santana]]

**Não Respondeu (em repescagem/encerrados):**
- [[bruno-savio]], [[esther-osklen]], [[wueverton-lima]], [[edson-tolentino]], [[murilo-damasceno]], [[davi-maia]], [[leticia-melo]], [[ana-clara-marques]]

## Travas operacionais conhecidas

- Falhas históricas no bridge WhatsApp (jidDecode error) — múltiplas auditorias do Renato
- Duplicidade entre cadastros e corretores → necessidade de override manual

## Próximas observações esperadas

- Acompanhar conversão pós-visita do [[pedro]] (01/05)
- Identificar se [[andreia-carvalho]] retorna com lançamento HLTS de 2 vagas
- Monitorar Union Vereda como concentrador (5 leads canônicos)
