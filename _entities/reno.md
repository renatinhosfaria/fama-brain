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
  - '[[eliseu]]'
  - '[[marcio-oliveira-juliao]]'
  - '[[elias-fernandes]]'
  - '[[amanda]]'
  - '[[carmen-vicente-santos]]'
  - '[[levi-santos]]'
  - '[[joao-pedro]]'
  - '[[sibely-cortes]]'
  - '[[santiago-derson]]'
  - '[[larissa-martins]]'
  - '[[andre-luiz-duca]]'
  - '[[grazyelly-macedo]]'
  - '[[alexsander-pereira]]'
  - '[[claudia-rosangela]]'
  - '[[jonathan-barbosa]]'
  - '[[joao-vitor]]'
  - '[[priscila-nogueira]]'
related:
  - '[[_agents/reno/profile|profile-agente]]'
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Reno é o **agente de IA principal de vendas** da Fama Negócios Imobiliários. Atua como broker autônomo (broker_id 35, role Executivo, departamento Vendas) operando WhatsApp e CRM. Conduz primeiro contato, repescagem (steps 1–4), resgate (steps 1–4), apresentação de empreendimentos, agendamento de visitas e qualificação consultiva de viabilidade.

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
- **Volume sob responsabilidade:** 33 perfis canônicos de cliente (Lotes 1–6) + dezenas de outros leads sem perfil canônico
- **Origem dos leads:** SLA Cascata, Facebook Ads (Garden Sul / Place+Arbi / lead automático), Instagram (Bris), Google Ads (Bella Vita), leads orgânicos

## Padrões de atendimento (observados)

- Diagnóstico consultivo antes de apresentar imóvel (renda, entrada, vínculo, região, finalidade)
- Régua estruturada: primeiro contato → repescagem 4 steps → resgate por bucket (até step 4)
- Notes de áudio transcritas e contextualizadas no CRM
- Tom acolhedor, sem prometer aprovação de financiamento
- Encaminhamento a visita presencial Fama como conversão alvo
- Buckets observados: viabilidade_financiamento, condicao_valor, midia_opcao_enviada, visita_pendente, visita_nao_marcada, financiamento_sumiu, decisao_com_terceiro, sem_gancho_claro

## Clientes ativos com perfil canônico (33)

**Visita confirmada / agendada:**
- [[pedro]] (01/05 18h, [[union-vereda]]) — confirmada
- [[claudia-rosangela]] ([[union-vereda]] — visita próxima semana)
- [[augusto-santana]] ([[union-vista]] — Visita, aguardando remarcação)

**Em Atendimento — lead muito quente:**
- [[amanda]] ([[place-arbi]] — "Simplesmente perfeito", precisa marido)
- [[guilherme-mendes]] ([[union-vereda]] — planta agradou)

**Em Atendimento — investidor:**
- [[eliseu]] ([[union-vista]] — tese valorização/revenda)

**Em Atendimento — diagnóstico em curso:**
- [[samuel-kim]], [[jisa-dantas]], [[andreia-carvalho]], [[eduarda]], [[silva-porto]], [[marcio-oliveira-juliao]], [[levi-santos]] (régua travada), [[jonathan-barbosa]]

**Em Atendimento — frio (sem engajamento):**
- [[alexsander-pereira]]

**Não Respondeu (em repescagem ativa):**
- [[bruno-savio]], [[esther-osklen]], [[wueverton-lima]], [[edson-tolentino]], [[murilo-damasceno]], [[davi-maia]], [[leticia-melo]], [[ana-clara-marques]], [[elias-fernandes]], [[carmen-vicente-santos]], [[joao-pedro]], [[sibely-cortes]], [[santiago-derson]], [[andre-luiz-duca]], [[grazyelly-macedo]]

**Arquivado:**
- [[larissa-martins]] ([[bris]], telefone teste)
- [[joao-vitor]] ([[bella-vita]], telefone teste)
- [[priscila-nogueira]] ([[park-espanha]], telefone teste)

## Travas operacionais conhecidas

- Falhas históricas no bridge WhatsApp (jidDecode error, 401/408 gateway, "cannot schedule new futures after shutdown") — múltiplas auditorias do Renato
- **ATIVA:** envio para [[levi-santos]] travado em 2026-05-01 (whatsapp_send_failed)
- Duplicidade entre cadastros e corretores → necessidade de override manual
- **Dedup CRM falho:** [[augusto-santana]] tem 4 cadastros, [[wueverton-lima]] e [[jisa-dantas]] têm 3 cada — telefones idênticos
- Material de marketing faltando: planta baixa Place+Arbi e book completo Union Vereda
- Bug CRM nomes: [[carmen-vicente-santos]] tem nome duplicado; 3 leads-teste (Larissa/João Vitor/Priscila) têm 3+ cópias da mesma anotação cada

## Próximas observações esperadas

- Acompanhar 3 conversões em vista: [[pedro]] (01/05), [[claudia-rosangela]] (próxima semana), [[amanda]] (alvo iminente)
- Identificar se [[andreia-carvalho]] retorna com lançamento HLTS de 2 vagas
- Resolver enquadramento MCMV do [[marcio-oliveira-juliao]] junto a HLTS
- Desbloquear infra WhatsApp para [[levi-santos]]
- Monitorar [[union-vereda]] como concentrador (13 leads canônicos)
- Investigar anomalia campanha Facebook Ads (Garden Sul + 50% Union Vista + 50% Place+Arbi) — padrão de "lead silente" recorrente
