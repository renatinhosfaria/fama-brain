---
type: context
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - projeto
  - famachat
  - modulos
---
# Módulos — FamaChat

Breakdown do código por módulo, com owner funcional e entry points.

## Frontend — `client/src/modules/`

Feature slices em adoção (padrão novo; convive com `pages/` + `components/`
legados).

| Módulo | Função | Owner funcional |
|---|---|---|
| `auth` | Login, JWT Bearer, token storage, refresh automático, logout | CTO |
| `agenda-v2` | Calendário comercial (FullCalendar), agendamentos, visitas | CRO |
| `arquivos` | File manager — upload, preview, thumbnails, grid, seleção, download, ZIP | CTO |
| `clientes` | Kanban de atendimento, dialog de venda, funil, board interativo (dnd-kit) | CRO |
| `dashboard` | Dashboards por role (gestão, atendimento, vendas) | CEO / CRO |
| `imoveis` | Listagem, detalhes, novo imóvel/empreendimento, seleção de proprietário | CRO |
| `leads` | Captação e atribuição de leads | CRO |
| `_template` | Template para criar novos módulos | — |

**Legado ainda ativo em `client/src/pages/`:**

- `pages/modulos/shared/` — páginas compartilhadas entre roles
  (`Imoveis.tsx`, `arquivos.tsx`, etc.)
- `pages/modulos/gestao/` — tabs de gestão (`profile-tab.tsx`)
- `pages/modulos/<role>/` — dashboards legados por role

Componentes específicos de domínio coexistem em `client/src/components/`
(ex: `components/clientes/kanban-board.tsx`, `components/novo-imovel/`,
`components/NovoEmpreendimentoForm.tsx`, `components/UploadSequencial.tsx`).

## Backend — `server/`

| Área | Função |
|---|---|
| `index.ts` | Bootstrap: dotenv, timezone, helmet, CORS, uploads, Postgres, integrações, jobs, rotas, HTTP + WebSocket. |
| `routes.ts` + `routes/` | Registro central e endpoints HTTP. Groups: auth, users, clientes, agenda, visitas, vendas, dashboards, imóveis, empreendimentos, apartamentos, proprietários, WhatsApp, uploads, arquivos, webhooks, notificações, métricas, cache, health. |
| `config/` | Security (CORS, headers), banco, JWT, auth exemptions (`api-auth-exemptions.ts`), rate limit. |
| `constants/` | Constantes compartilhadas. |
| `middleware/` | Auth JWT (`auth.ts`), cache, métricas, rate limit, audit. |
| `repositories/` | Acesso a dados via Drizzle. Padrão `base.repository.ts` com helpers reutilizáveis. |
| `services/` | Lógica de negócio: SLA Cascata, rotação, user deactivation, Meta CAPI, CAPI Listener (pg-listen), Evolution/WhatsApp, MinIO storage, Facebook Leads, webhooks outbound. |
| `modules/` | Extração modular em andamento — módulos migrando para cá. |
| `models/` | Modelos auxiliares. |
| `jobs/` | Schedulers: `SLACascataScheduler` (5min), `webhookRetryJob` (1min), `automationInitializer`. |
| `utils/` | `token-manager.ts` (refresh tokens com family tracking), logger, metrics, cache, helpers. |
| `lib/` | Utilities internas. |
| `database.ts`, `pg-storage.ts`, `database-contract.ts` | Conexão Postgres + contrato de schema. |
| `shared/` | Código compartilhado entre áreas do server. |
| `uploads/` | Fallback local quando MinIO desligado. |
| `vite.ts` | Integração Vite SSR em dev. |

## Shared — `shared/`

| Arquivo | Função |
|---|---|
| `schema.ts` | Tabelas Drizzle, enums, tipos, schemas Zod (via `drizzle-zod`). Fonte de verdade do modelo. |
| `video-upload.ts` | Tipos auxiliares de mídia (upload sequencial). |

## Scripts — `scripts/`

Scripts utilitários: sanitização de clientes Facebook merged, geração de
VAPID keys, diff de contrato Drizzle, lint report custom. Executados via
`pnpm run <script>`.

## Migrations e database

- `migrations/` — SQL migrations geradas por `drizzle-kit generate`.
- `database/` — scripts auxiliares e documentação interna.

## Docs detalhados

- [`docs/ARQUITECTURE.md`](../../../var/www/famachat/docs/ARQUITECTURE.md) — estrutura e decisões
- [[dominio]] — entidades e regras de negócio
- [[stack]] — libs e versões
- [[integracoes]] — integrações externas
