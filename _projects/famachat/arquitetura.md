---
type: context
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-05-08'
tags:
  - projeto
  - famachat
  - arquitetura
---
# Arquitetura — FamaChat

Vínculos: [[fama-overview]], [[operacao-crm-webhook]], [[schema]].
## Visão macro

Monorepo TypeScript com `client/` (React SPA + PWA), `server/` (Express API)
e `shared/` (schema Drizzle + tipos compartilhados). Deploy em VPS Contabo
via PM2 (`famachat-backend`, porta 5000). Em desenvolvimento, Vite roda em
5173 e faz proxy de `/api`, `/uploads`, `/upload` e WebSocket para o
Express em 3000.

Fonte única de verdade para o modelo de dados: `shared/schema.ts`.

## Camadas

- **UI:** React 19 + Wouter (routing) + TanStack Query 5 (server state) +
  Zustand 5 (client state) + Radix UI + TailwindCSS 4 + `styled-components`
  + PWA via `vite-plugin-pwa`.
- **API:** Express 4 com `helmet`, `compression`, CORS, rate limit.
- **Auth:** JWT Bearer em `Authorization` header. Secrets separados para
  access (`JWT_SECRET`) e refresh (`JWT_REFRESH_SECRET`). Guard global em
  `/api` com exceções em `server/config/api-auth-exemptions.ts`.
- **Services:** lógica de negócio e integrações em `server/services/`.
- **Repositories:** acesso a dados via Drizzle em `server/repositories/`.
  Padrão `base.repository.ts` com helpers reutilizáveis.
- **DB:** PostgreSQL via `drizzle-orm/node-postgres` (driver `pg` + pool
  TCP). Pool configurável via `DB_POOL_MIN/MAX/IDLE_TIMEOUT`.
- **Cache:** Redis opcional (`REDIS_ENABLED=false` por default) + cache
  em memória como fallback.
- **Storage:** MinIO/S3 (`MINIO_ENABLED=false` por default) com fallback
  para filesystem local em `uploads/`.
- **Tempo real:** WebSocket em `/ws/notifications` com auth JWT,
  heartbeat, reconexão exponencial e fallback para Web Push (VAPID).

## Data flow principal

```
Facebook Lead Ads (webhook inbound)
  └─> sistema_leads → automação → clientes (via SLA Cascata)
       └─> clientes_agendamentos → clientes_visitas → clientes_vendas
            └─> Meta CAPI (Lead / Contact / Schedule / Purchase)
            └─> Webhooks outbound (OpenClaw, etc.)
```

## Jobs e schedulers

- **`SLACascataScheduler`** (5 min) — monitora regras de SLA e rotaciona
  leads por corretor (menor carga mensal + round-robin em empate).
- **`webhookRetryJob`** (1 min) — reprocessa eventos pendentes/falhos em
  `sistema_webhook_events`.
- **`automationInitializer`** — tarefas periódicas e housekeeping.
- **CAPI Listener** — PostgreSQL NOTIFY/LISTEN via `pg-listen` para
  capturar mudanças de qualquer origem (app, MCP/Reno, SQL direto).

## Estrutura de pastas

**Frontend (`client/src/`):**

```
components/   UI base + componentes de domínio
hooks/        providers e hooks compartilhados
lib/          infraestrutura client-side (api, queryClient)
modules/      feature slices em adoção
  auth/  agenda-v2/  arquivos/  clientes/  dashboard/  imoveis/  leads/
  _template/  — template para novos módulos
pages/        rotas Wouter (estilo legado)
services/     clientes específicos (ex: webhooks)
styles/       estilos auxiliares
```

**Backend (`server/`):**

```
config/       segurança, CORS, banco, JWT, auth exemptions
constants/    constantes compartilhadas
middleware/   auth, cache, métricas, rate limit
repositories/ acesso a dados por entidade (padrão base.repository)
routes/       endpoints HTTP (registro central em routes.ts)
routes.ts     registro central de todos os groups de rotas
services/     lógica de negócio e integrações
modules/      extração modular em andamento
jobs/         schedulers e listeners (SLA, webhook retry, CAPI)
models/       modelos auxiliares
utils/        logger, metrics, cache, helpers
lib/          utilities internas
database.ts   bootstrap de conexão DB
index.ts      entry point
```

**Compartilhado (`shared/`):**

- `schema.ts` — tabelas, enums, tipos Drizzle + validação Zod.
- `video-upload.ts` — tipos auxiliares de mídia.

## Padrões convivendo no código

Repo em transição arquitetural — dois estilos em paralelo:

- **Frontend:** páginas e componentes legados em `pages/` + `components/`
  ↔ feature slices novos em `modules/`.
- **Backend:** rotas extensas com lógica inline ↔ rotas enxutas delegando
  a services/repositories. Alguns módulos já migraram para
  `server/modules/*`.

Ao evoluir código, preferir os padrões novos (modules + services +
repositories + Drizzle); ao tocar legado, **não forçar refatoração fora
de escopo**.

## Segurança e resiliência

- JWT access + refresh com secrets separados, família de refresh com
  tracking em `sistema_refresh_tokens`.
- Audit log em `sistema_auth_audit_log`.
- Rate limit em auth, API geral e webhooks.
- `helmet` com CSP em `report-only`.
- Sentry (`@sentry/react`) no frontend, DSN em `VITE_SENTRY_DSN`.
- **Degradação controlada:** Redis/MinIO opcionais; sistema funciona sem
  eles com fallback em memória / filesystem.

## Ponteiros para código

- Entry servidor: `server/index.ts`
- Registro de rotas: `server/routes.ts` + `server/routes/*`
- Drizzle schema: `shared/schema.ts`
- Middleware auth: `server/middleware/auth.ts`
- JWT config: `server/config/`
- Entry cliente: `client/src/App.tsx` (+ `main.tsx`)
- Query config: `client/src/lib/` (perfis `static`, `semiStatic`,
  `dynamic`, `realtime`, `list`, `detail`)
- WebSocket: `client/src/hooks/use-websocket.tsx` + RealTimeNotificationServer no backend

## Docs detalhados no repo

- [`docs/ARQUITECTURE.md`](../../../var/www/famachat/docs/ARQUITECTURE.md) — arquitetura completa (fonte desta nota)
- [`docs/README.md`](../../../var/www/famachat/docs/README.md) — overview e onboarding
- [`docs/PRD.md`](../../../var/www/famachat/docs/PRD.md) — visão de produto
- [`docs/API.md`](../../../var/www/famachat/docs/API.md) — contratos HTTP + WebSocket
