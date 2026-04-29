---
type: shared-context
owner: ceo
created: '2026-04-29'
updated: '2026-04-29'
tags:
  - organograma
  - hiring
  - paperclip
  - diretoria
  - gargalo-renato
topic: organograma
title: Proposta de diretoria Paperclip — gaps e prioridades 2026Q2
---

## TL;DR

Hoje só existe **CEO** registrado como diretoria Paperclip (vault `_agents/`). Reno é OpenClaw operacional, não diretoria. Renato concentra 6 frentes (gestão, vendas, tech, marketing, financeiro, backoffice) e o jurídico nem está formalizado. Para destravar o foco 2026 (caixa, IA/automação, FamaChat SaaS) sem inflar headcount humano, recomendo abrir **6 papéis de diretoria** em ondas, começando por CTO, CMO e CFO.

## Princípio de hiring

- **Diretoria Paperclip = camada de julgamento e governança**, não execução. Quem executa é OpenClaw + corretores + Renato.
- **Contratar devagar, demitir rápido.** Cada agente tem que ter P&L mental claro, escopo nítido e rationale anti-overlap.
- **Replicar o gargalo do Renato sem replicar a centralização** — agentes não são proxies do sócio, são donos de função com autoridade delegada.
- **Cada diretor lê o vault antes de decidir e escreve no vault depois.** Sem isso, vira repetição de heartbeat.

## Gaps mapeados (frente → estado atual → custo de não cobrir)

| Frente | Hoje | Custo de manter assim |
|---|---|---|
| Tecnologia (FamaChat, OpenClaw, infra Contabo, MCPs, segurança) | Renato sozinho | Incidentes recentes (MinIO perdido 27/03, secret commitado 06/04) viram regra. SaaS não escala sem dono técnico. |
| Marketing/aquisição (Meta Ads, criativos, funil) | Renato + MKT Criativo (subagentes) | Sem dono de funil pago, CAC sobe e leads não convertem. |
| Financeiro (caixa, P&L, runway, gerenciador financeiro) | Renato | Foco #1 de 2026 é equilibrar caixa — não dá para isso ser hobby do sócio. |
| Vendas/corretores (pipeline, performance, crédito como diferencial) | Renato + 2 corretores parceiros | Maria Eduarda e Michel sem coach/coordenação dedicada. Crédito imobiliário (diferencial central) sem dono. |
| Produto (FamaChat SaaS, Portal Essência Feliz, Gerenciador Financeiro) | Renato | 3 produtos paralelos, nenhum com PM. Multi-tenancy não acontece sem dono de roadmap. |
| UX/Design | Não existe | FamaChat só vira SaaS com UX que outros corretores entendam sem o Renato. |
| Jurídico/Compliance | Não formalizado | LGPD do SaaS multi-tenant, contratos com construtoras, riscos de parceria. |

## Recomendação — 6 diretores Paperclip em 3 ondas

### Onda 1 — destravar o gargalo imediato (contratar agora)

#### 1. CTO
- **Escopo:** FamaChat (CRM atual), plataforma OpenClaw, infra Contabo/Docker Swarm/MinIO, MCPs, segurança/secrets, CI/CD, observabilidade.
- **Por que primeiro:** dois incidentes em <30 dias (MinIO perdido sem snapshot, secret em repo público) mostram que a empresa opera no fio do navalha técnico. SaaS exige fundação que hoje não existe.
- **Decisões delegadas:** stack, prioridade de bugs vs features, política de backup, padrões de segurança.
- **Subordinados naturais:** agentes OpenClaw técnicos, futuro Head of Platform, futuro UX Designer (se ficar sob produto, fica com CPO).

#### 2. CMO
- **Escopo:** estratégia de aquisição, Meta Ads (CAPI, criativos, públicos, lead forms), Google Ads, posicionamento, marca, social orgânico (gap atual), conteúdo, MKT Criativo.
- **Por que segundo:** Meta Ads é o motor da operação, mas hoje roda sem dono de funil. Aquisição cara mata margem antes de FamaChat virar SaaS.
- **Decisões delegadas:** budget de mídia, criativo, calendário, política de testes A/B, mensagem de marca.

#### 3. CFO
- **Escopo:** caixa, P&L, runway, projeções, Gerenciador Financeiro como produto, política de comissões, MCP `financas`, contas a pagar/receber, fiscal (interface com contador externo se houver).
- **Por que terceiro:** foco #1 de 2026 é "equilibrar fluxo de caixa e garantir rentabilidade mínima para o sócio". Isso só vira realidade com alguém medindo todo dia.
- **Decisões delegadas:** alocação de capital dentro da política do CEO, sinal de stop/go em campanhas de mídia por unit economics, política de pricing.

### Onda 2 — destravar SaaS e crescimento (contratar quando Onda 1 estabilizar)

#### 4. CRO (Diretor Comercial)
- **Escopo:** pipeline de vendas, performance dos corretores parceiros, coaching, jornada do cliente, **crédito imobiliário como diferencial competitivo** (subordinado: Head de Crédito Imobiliário, se justificar volume).
- **Por que onda 2:** sem CTO/CMO/CFO em pé, CRO vira firefighter. Mas o diferencial da Fama (crédito) precisa de dono dedicado em algum momento de 2026.
- **Decisões delegadas:** SLA de atendimento, política de roteamento de leads, scripts comerciais, métricas de funil.

#### 5. CPO (Head of Product) — FamaChat SaaS
- **Escopo:** roadmap multi-tenant do FamaChat, descoberta com imobiliárias-piloto, packaging do produto, onboarding sem Renato, integração com Portal Essência Feliz e Gerenciador Financeiro.
- **Por que onda 2:** SaaS é a aposta de longo prazo. Sem CPO, FamaChat fica preso ao uso interno da Fama. Mas precisa de CTO antes para ter plataforma.
- **Decisões delegadas:** priorização de features SaaS vs. operação interna, política de multi-tenancy, parametrização de cliente, pricing do SaaS (com CFO).

### Onda 3 — risco e governança (contratar quando SaaS começar a vender)

#### 6. Diretor Jurídico/Compliance (fracional)
- **Escopo:** LGPD do SaaS, contratos de licença, contratos com construtoras, política de parcerias, contratos de corretagem, terms of service.
- **Por que onda 3:** hoje os riscos são gerenciáveis caso a caso. No momento em que FamaChat tiver primeiro cliente externo pagando, o risco salta de categoria — antes disso é overhead.
- **Modelo:** pode ser fracional (acionado por demanda), não diretoria full-time.

## O que **não** estou recomendando contratar

- **COO/Head de Operações:** sobreposição grande com CFO + CRO + CTO no nosso porte. Reabrir só se a empresa crescer headcount humano.
- **Head de RH:** sem CLT, sem necessidade. Hiring de agentes é responsabilidade do CEO.
- **UX Designer como diretoria:** UX é função sob CPO (ou CTO, no curto prazo). Trazer como diretoria infla organograma.
- **Head de Crédito separado do CRO:** só se volume justificar. Por ora, função sob CRO.

## Como a hierarquia fica depois das 3 ondas

```
CEO (Paperclip)
├── CTO ── (UX Designer subordinado, Head of Platform futuro)
├── CMO ── (MKT Criativo já existe como pipeline subordinado)
├── CFO
├── CRO ── (Head de Crédito Imobiliário se volume justificar)
├── CPO (FamaChat SaaS)
└── Jurídico/Compliance (fracional)

Operação OpenClaw segue paralela:
├── Reno (atendimento WhatsApp)
├── FamaAgent (gerente de plantão)
└── (outros agentes de execução)
```

## Risco do plano

- **Ondas vs. tudo de uma vez:** se eu contratar 6 de uma vez, viro o gargalo de onboarding e os agentes não se calibram entre si. Onda escalonada é mais lenta mas mais segura.
- **Overlap CTO × CPO:** real. Mitigação: CTO dono de plataforma e infra; CPO dono de produto e descoberta. Linha divisória clara em runtime: CTO decide "como construir", CPO decide "o que construir".
- **CFO descobrir caixa apertado tarde demais:** mitigação é contratar CFO na Onda 1 mesmo, exatamente para isso.

## Próximo passo

Aprovação do board (Renato) sobre **quais ondas e em que ordem** disparar. Depois de aprovado, eu uso a skill `paperclip-create-agent` para escrever profile + contratar cada um, criando issues filhas de FAM-3 por agente.
