---
type: entity-profile
owner: vault-steward
entity_type: person
entity_name: Reno
subtype: person
created: '2026-05-02'
updated: '2026-05-06'
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
  - '[[thiago-tesch]]'
  - '[[kamily]]'
  - '[[mauro-marques]]'
  - '[[byanca-guerra]]'
  - '[[aline-oliveira]]'
related:
  - '[[_agents/reno/profile|profile-agente]]'
  - '[[_hubs/index|Hubs]]'
---
## Resumo

Reno é o **agente de IA principal de vendas** da Fama Negócios Imobiliários. Atua como broker autônomo (broker_id 35, role Executivo, departamento Vendas) operando WhatsApp e CRM. Conduz primeiro contato, repescagem (steps 1–5), resgate (steps 1–5), apresentação de empreendimentos, agendamento de visitas e qualificação consultiva de viabilidade.

Esta nota é o **perfil canônico institucional** do Reno como entidade. O perfil operacional do agente vive em [[_agents/reno/profile|_agents/reno/profile]].

## Identificação

- **Nome canônico:** Reno
- **Nome completo CRM:** Reno Agente de IA
- **Sistema user id:** 35
- **Email:** reno@famanegociosimobiliarios.com.br
- **Role:** Executivo, Vendas
- **Status:** Ativo

## Perfil operacional

- **Modalidade:** Agente de IA assistido por humanos (Renato)
- **Canal primário:** WhatsApp (via FamaChat bridge)
- **Volume sob responsabilidade:** 38 perfis canônicos de cliente (Lotes 1–7) + dezenas de outros leads
- **Origem dos leads:** SLA Cascata, Facebook Ads, Instagram (Bris), Google Ads (Bella Vita)

## Conversões realizadas / em vista

**Visita realizada:**
- [[pedro]] — visita 01/05 18h, status Visita (primeira conversão completa do funil canônico)

**Visita confirmada (próximas):**
- [[kamily]] — quinta 07/05 9h (Place+Arbi)
- [[thiago-tesch]] — sexta 15/05 15h30 (Union Vista, perfil MCMV-target)
- [[augusto-santana]] — Visita aguardando remarcação (Union Vista)

**Em conversão ativa:**
- [[claudia-rosangela]] — visita acordada para semana 05/05, mas confusão MRV a esclarecer
- [[byanca-guerra]] — escolheu planta Garden Sul, conduzindo para visita
- [[amanda]] — Place+Arbi "Simplesmente perfeito", precisa marido
- [[guilherme-mendes]] — Union Vereda, planta agradou (esfriou)

## Padrões de atendimento (observados)

- Diagnóstico consultivo antes de apresentar imóvel (renda, entrada, vínculo, região, finalidade)
- Régua estruturada: primeiro contato → repescagem 4-5 steps → resgate por bucket → agendamento
- Notes de áudio transcritas e contextualizadas no CRM
- Tom acolhedor, sem prometer aprovação de financiamento
- Encaminhamento a visita presencial Fama como conversão alvo
- Buckets observados: viabilidade_financiamento, condicao_valor, midia_opcao_enviada, visita_pendente, visita_nao_marcada, financiamento_sumiu, decisao_com_terceiro, sem_gancho_claro

## 38 clientes canônicos sob sua responsabilidade

**Visita confirmada/realizada (4):** [[pedro]], [[kamily]], [[thiago-tesch]], [[augusto-santana]]

**Em Atendimento — quente:** [[amanda]], [[guilherme-mendes]], [[claudia-rosangela]], [[byanca-guerra]], [[aline-oliveira]], [[eliseu]] (investidor)

**Em Atendimento — diagnóstico:** [[samuel-kim]], [[jisa-dantas]], [[andreia-carvalho]], [[eduarda]], [[silva-porto]], [[marcio-oliveira-juliao]], [[levi-santos]], [[jonathan-barbosa]]

**Em Atendimento — fora de fit / frio:** [[mauro-marques]] (quer loteamento), [[alexsander-pereira]] (sem engajamento)

**Não Respondeu (em repescagem):** [[bruno-savio]], [[esther-osklen]], [[wueverton-lima]], [[edson-tolentino]], [[murilo-damasceno]], [[davi-maia]], [[leticia-melo]], [[ana-clara-marques]], [[elias-fernandes]], [[carmen-vicente-santos]], [[joao-pedro]], [[sibely-cortes]], [[santiago-derson]], [[andre-luiz-duca]], [[grazyelly-macedo]]

**Arquivado:** [[larissa-martins]], [[joao-vitor]], [[priscila-nogueira]] (telefones-teste)

## Travas operacionais conhecidas

- Falhas históricas WhatsApp bridge (jidDecode, "cannot schedule new futures after shutdown")
- **Dedup CRM falho:** Augusto 4 cadastros, Wueverton 3, Jisa 3
- Material faltando: planta baixa Place+Arbi (URGENTE — Kamily visita 07/05), book Union Vereda completo, memorial Garden Sul
- Bug CRM nomes duplicados ([[carmen-vicente-santos]])

## Próximas observações esperadas

- **Curto prazo (esta semana):** visita Kamily 07/05 + visita Thiago Tesch 15/05
- **Validações HLTS:** MCMV (gatilho Thiago + Márcio), plano investidor (Eliseu), 2 vagas (Andreia)
- Acompanhar resultado da visita do [[pedro]] (01/05) — capturar journal pós-visita
- Esclarecer com [[claudia-rosangela]] que Union Vereda é HLTS, não MRV
- Monitorar [[union-vereda]] (concentrador, 13 leads) e [[union-vista]] (12 leads)
