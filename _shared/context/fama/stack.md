---
type: context
owner: renato
created: 2026-04-14
updated: 2026-04-14
tags: [fama, stack, tecnologia]
---
# Stack Tecnológico

## CRM — FamaChat

CRM imobiliário **próprio**, em produção, **coração operacional** da Fama. Evolui ativamente.

### Stack técnica

- **Linguagem/framework:** TypeScript/Node.js, com **NestJS** (backend) e **Next.js** (frontend) no ecossistema geral — arquitetura exata do FamaChat é inferência forte, não confirmada ponto a ponto.
- **Banco:** **PostgreSQL 17 com pgvector** (confirmado via MCP `crm-imobiliario`).
- **Storage de mídia:** **MinIO self-hosted**, exposto via Caddy em `s3.famachat.com.br` e `minio.famachat.com.br`.
- **Runtime:** **Docker**, com **Docker Swarm** confirmado em pelo menos parte do ambiente.

### O que gerencia

Sistema relacional amplo da operação imobiliária. Objetos principais:

- Leads, clientes, imóveis/empreendimentos, apartamentos/unidades.
- Tarefas, agendamentos, visitas, vendas.
- Brokers/usuários, horários, performance de corretores.
- SLA cascata, notificações, board de tarefas.
- Timeline de cliente, notas, fontes de lead, disponibilidade de unidades, análise de preço, relatórios operacionais.

### Módulos

Pelo menos: funil/pipeline de leads, gestão de clientes, imóveis e unidades, agenda, board de tarefas, SLA, relatórios, **integração nativa com WhatsApp** e ligação operacional com Meta Ads. Lista formal de módulos de interface não documentada em detalhe.

### Estado atual

Em **produção estável**, mas **em evolução ativa**. Não é produto congelado — recebe manutenção, correções, integrações e melhorias continuamente.

### Quem usa hoje

- **Renato e corretores parceiros** — uso humano diário.
- **Agentes OpenClaw** — consultam via MCP `crm-imobiliario`. Se já escrevem de forma ampla e autônoma em produção: não confirmado.

### Visão SaaS

Transformar o FamaChat em **produto comercializável** para outras imobiliárias e corretores é a principal aposta de longo prazo. Ainda precisa:

- **Multi-tenancy** robusto.
- Endurecimento de permissões e separação de dados entre clientes.
- Produto **empacotado** e configurável sem depender do Renato.
- Redução de acoplamentos com a operação interna da Fama.

Timeline de lançamento: não documentada.

## Ferramentas de marketing

### Confirmadas

- **Meta Ads** — motor principal de captação paga. Infraestrutura robusta via MCP (91 tools): campanhas, criativos, públicos, lead forms, previews, **CAPI**.
- **WhatsApp** — canal principal de atendimento. **Baileys** principal, **Evolution** fallback (desde 06/04/2026).
- **Google Ads** — parte do stack declarado. Status operacional atual não documentado.
- **Produção criativa assistida por IA** — estrutura **MKT Criativo** com pipeline de agentes/subagents para estratégia, redação, imagem e revisão final. Regras específicas para produção visual de Meta Ads.
- **Meta Pixel / CAPI** — confirmado via MCP.

### Não documentadas

- **Email marketing / automação** — sem ferramenta formalizada.
- **Social orgânico (Instagram/Facebook)** — calendário editorial e gestão contínua não formalizados. Ênfase documentada é em paid.
- **Portais imobiliários** (ZAP, VivaReal, ImóvelWeb, QuintoAndar) — sem integração documentada.
- **Ferramentas de criação específicas** (Canva, Midjourney, Runway, Veo) — nenhuma formalizada nominalmente.
- **Analytics adicionais** (GA4, Hotjar, Clarity, Mixpanel) — não documentados.
- **Landing pages / site** — Next.js no stack sugere capacidade, mas arquitetura atual não documentada. Centro da conversão documentado é o WhatsApp.

## Integrações

### Confirmadas

- **MCPs do ecossistema** — camada principal de integração entre agentes e sistemas: `crm-imobiliario`, `meta-ads`, `minio`, `mcp-obsidian`, `context7`, `playwright`, `serena`, `episodic-memory`, `claude-mem`, Canva, Gmail, Google Drive, Google Calendar.
- **n8n** — parte do stack. Papel operacional atual específico não documentado.
- **Caddy** — proxy reverso com SSL automático em pelo menos parte da infra (MinIO).
- **GitHub Actions** — CI/CD declarado no stack. Cobertura exata não documentada.

### Indícios fortes (não documentados em detalhe)

- **Meta → CRM** — webhook/captura de leads do Meta Ads alimentando o FamaChat.
- **WhatsApp event handling** — migração para Baileys + menção a hook `message:received` futuro para roteamento dinâmico pelo CRM.

### Não documentadas

- **APIs bancárias / crédito imobiliário** — sem integração direta com Caixa, Itaú, Bradesco, Santander. Diferencial em crédito é sustentado por know-how operacional, não por API plugada.
- **Portais imobiliários** — sem feed XML/JSON.
- **Construtoras/parceiros** — canal técnico de troca (API, planilha, drive, webhook) não documentado.
- **APIs internas entre produtos** — FamaChat, Portal Essência Feliz e Gerenciador Financeiro: sem documentação de integração direta.

## Infraestrutura

### Confirmadas

- **Provedor:** **Contabo** (VPSs Linux).
- **Containers:** Docker em todo lugar; **Docker Swarm** confirmado em pelo menos uma VPS (`144.126.134.23` roda o MCP FamaChat em Swarm).
- **Banco:** **PostgreSQL 17** com pgvector.
- **Storage:** **MinIO self-hosted**, servido via Caddy com SSL automático.
- **CI/CD:** **GitHub Actions**.
- **Versionamento:** **GitHub** (`renatinhosfaria`). Múltiplos repositórios por produto (openclaw, famaserver, portalcef, marketing, fama-brain). Mono-repo não documentado.

### Parcialmente documentadas

- **Múltiplas VPSs** ativas. IPs conhecidos: `144.126.134.23` (MCP FamaChat em Swarm, onde o MinIO foi perdido em 27/03), `173.249.13.241` (FamaChat com .env atualizado). Sessão OpenClaw atual: `vmi3094636`. Inventário completo e papéis não documentados.
- **n8n** no stack — papel atual detalhado não documentado.

### Não documentadas

- **CDN** (Cloudflare ou equivalente).
- **Estratégia de backup pós-incidente** — em 27/03/2026 o MinIO foi perdido e não havia snapshot contratado na Contabo. Sem registro formal de nova política.
- **Réplica/failover do Postgres** ou rotina automatizada robusta de backup.
- **Monitoramento/observabilidade estruturada** — sem Grafana, Sentry, Uptime Kuma.
- **Gerenciamento de secrets maduro** — incidente de 06/04/2026 (chave commitada em repo público `openclaw.json`) mostra gestão baseada em .env e arquivos de config. Sem Vault/secret manager dedicado.

## Agentes de IA

### Confirmado — OpenClaw

- **Plataforma multiagente persistente**, sempre ligada. Agentes têm identidade própria, canais, bindings, heartbeats e status persistente.
- **Modelos:** primário **openai-codex/gpt-5.4**, fallback **google-gemini-cli/gemini-3.1-pro-preview** (formalizado em `MEMORY.md`).
- **Runtime:** VPSs Linux na Contabo. Sessão atual: `vmi3094636`. Agentes **compartilham infraestrutura**, separados logicamente por conta/canal.
- **Memória:** arquivos locais (`MEMORY.md`, `memory/YYYY-MM-DD.md`) + CRM via MCP.
- **Heartbeats:** Reno WhatsApp 30 min; CFO Telegram 2 h.
- **Delegação entre agentes:** Sparring pode chamar Reno como subagent.
- **Canais/papéis:** CEO, FamaAgent, Reno, Sparring, CFO, EF.Arq e outros.

### Confirmado — Claude no ecossistema

- **Claude Code** presente no stack geral.
- **Claude Sonnet 4.6 e Opus 4.6** usados em fluxos de design, criação e subagentes especializados via **Anthropic API**.

### Parcialmente documentado — Paperclip

Ecossistema de agentes de nível **diretoria** (CEO, CFO, CMO, CRO, CTO) — estratégia, governança, orquestração. Complementar ao OpenClaw.

Documentado nesta sessão do fama-brain:
- Divisão clara Paperclip (estratégia) vs OpenClaw (execução).
- Papéis de cada agente Paperclip.
- Regra de ownership de escrita (ver [[../AGENTS]]).

Não documentado em detalhe:
- Runtime técnico de Paperclip (Claude Code em sessão interativa vs VPS dedicada).
- Forma de invocação (sempre ligado vs sob demanda).
- Se compartilha infra com OpenClaw ou roda separado.

### fama-brain — camada compartilhada de memória

**Este vault Obsidian em Git.** Sincronizado via `_infra/brain-sync.sh` entre VPSs e máquina local (cron de 5 min, Git for Windows no Windows, Git Linux nas VPSs). Serve como:

- **Contexto institucional compartilhado** — FAMA, mercado, produtos, stack, pessoas, agents map.
- **Metas e resultados mensais** — por diretor Paperclip, agregados pelo CEO.
- **Memória individual de cada agente** — `_agents/<nome>/` com profile, decisions, journal.

Complementa (não substitui) as memórias locais `MEMORY.md` dos OpenClaw e o FamaChat como memória operacional viva.

### Orquestração

Sem **orquestrador central formalizado único**. Arquitetura distribuída com:

- Bindings por canal/conta.
- Agentes com função específica.
- Delegação pontual entre agentes (Sparring → Reno confirmado).
- **Renato como arquiteto humano da malha**, ainda central em decisões de roteamento.

### Fluxo típico documentado

1. Lead chega no **WhatsApp**.
2. **Reno** (OpenClaw, consultor digital) atende, qualifica, conduz primeiro contato, agenda visita.
3. **FamaAgent** atua como gerente de plantão — apoia em crédito, imóveis, histórico.
4. Informações alimentam o **FamaChat** (telefone normalizado, chat_id, último contato, estágio, resumo, próxima ação).
5. Lead esquenta → **corretor parceiro humano** ou **Renato** assume o fechamento.
6. Aprendizados estratégicos consolidam no **fama-brain** (journal + decisions do agente envolvido).
