---
type: project-readme
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - projeto
  - famachat
---
# FamaChat

CRM imobiliário full-stack (React 19 + Express 4 + PostgreSQL + Drizzle)
com integração Evolution API/WhatsApp, Facebook Lead Ads e Meta
Conversions API. Projeto individual do **Renato Faria** (sócio da Fama
Negócios Imobiliários), operado em VPS Contabo via PM2 e usado pelo time
compacto da Fama (Renato + 2 corretores parceiros + Reno AI). Cobre
captação de leads, kanban de atendimento, rotação automática via SLA
Cascata, agenda comercial, catálogo de imóveis, gerenciador de arquivos,
webhooks outbound e dashboards por role. Aposta de longo prazo: virar
SaaS para outras imobiliárias do segmento econômico (MCMV).

## Mapa de notas

- [[arquitetura]] — monorepo, camadas, data flow, jobs assíncronos
- [[stack]] — libs, versões, comandos, gotchas herdados
- [[dominio]] — entidades, SLA Cascata, regras de negócio
- [[modulos]] — breakdown do código (frontend, backend, shared, scripts)
- [[integracoes]] — Evolution/WhatsApp, Facebook Leads, Meta CAPI, OpenClaw/Reno, MinIO, webhooks, Web Push, Sentry
- [[deploy]] — Contabo, PM2, env vars, build, runbook, observabilidade

## Docs detalhados no repo

Fonte de verdade técnica em `/var/www/famachat/docs/`:

- `README.md` — overview e setup
- `PRD.md` — visão de produto, personas, fluxos
- `ARQUITECTURE.md` — arquitetura canônica
- `API.md` — contratos HTTP + WebSocket
- `DESIGN-SYSTEM.md` — tokens, componentes, UI

## Regras de manutenção deste vault

Mantido pelo Claude Code do repositório `/var/www/famachat/` conforme
`CLAUDE.md` do repo. Disparadores explícitos no dia-a-dia + revisão
mensal no primeiro dia útil. Agents do ecossistema Fama leem estas notas
para contexto antes de tomar decisões sobre o FamaChat.

## Nota sobre filename

Este arquivo está em `readme.md` (caixa baixa) e não `README.md` porque o
validador MCP `write_note` exige `^[a-z0-9][a-z0-9-]*\.md$`. Wikilinks
`[[README]]` e `[[readme]]` funcionam case-insensitive no Obsidian.

## Última revisão

2026-04-19 — criação inicial (7 notas).
