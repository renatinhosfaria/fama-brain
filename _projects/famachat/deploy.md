---
type: context
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - projeto
  - famachat
  - deploy
---
# Deploy — FamaChat

## Ambiente

- **VPS:** Contabo (Linux).
- **Runtime:** Node.js 22+.
- **Process manager:** PM2 (`ecosystem.config.cjs` na raiz).
- **Process name:** `famachat-backend` (**não** `famachat`). Atenção a
  comandos `pm2 restart` — usar o nome exato.
- **Working dir em produção:** `/var/www/famachat`.
- **Porta em produção:** 5000 (via `PORT` no PM2 env).
- **Exec mode:** fork, 1 instância.
- **Restart policy:** `max_memory_restart: 500M`, `max_restarts: 10`,
  `min_uptime: 10s`, `restart_delay: 4s`.
- **Logs:** `./logs/famachat-backend-{out,error,combined}.log`
  (rotacionados em 10M).
- **Package manager:** pnpm 10.28.2 via Corepack.
- **Timezone:** `America/Sao_Paulo` (`TZ` e `DATABASE_TIMEZONE`).

## Build & deploy

Passos canônicos após atualização de código em produção:

```bash
cd /var/www/famachat
git pull
pnpm install --frozen-lockfile        # ou pnpm install
pnpm build                            # vite build + esbuild server
pm2 restart famachat-backend --update-env
pm2 logs famachat-backend --lines 100 # confirmar subiu ok
```

**Crítico:** o backend em produção executa a partir de `dist/index.js`,
não do fonte. Sempre `pnpm build` **antes** de `pm2 restart`, senão o
código novo não sobe.

## Desenvolvimento local

```bash
pnpm install
cp .env.example .env
pnpm dev             # Vite 5173 + Express 3000
```

Portas em dev:

- Frontend Vite: `5173`
- Backend Express: `3000` (via `DEV_PORT`)
- Vite faz proxy de `/api`, `/uploads`, `/upload` e WebSocket para o backend

## Variáveis de ambiente críticas

Agrupadas por área (source: `.env.example`):

### Auth & segurança
- `JWT_SECRET` — 64 bytes base64 (`openssl rand -base64 64`)
- `JWT_REFRESH_SECRET` — idem
- `WEBHOOK_ENCRYPTION_KEY` — 32 bytes base64 (AES-256-GCM)

### App
- `NODE_ENV`, `PORT=5000` (prod), `DEV_PORT=3000`
- `APP_URL`, `APP_NAME`, `APP_VERSION`
- `TZ=America/Sao_Paulo`, `DATABASE_TIMEZONE=America/Sao_Paulo`

### Database (Postgres)
- `DATABASE_URL` (ou `PGDATABASE`/`PGHOST`/`PGPORT`/`PGUSER`/`PGPASSWORD`)
- `DB_POOL_MIN=2`, `DB_POOL_MAX=10`, `DB_POOL_IDLE_TIMEOUT=30000`
- `DB_CONNECTION_TIMEOUT=60000`, `DB_QUERY_TIMEOUT=60000`

### Redis (opcional)
- `REDIS_ENABLED=false` (default)
- `REDIS_HOST`, `REDIS_PORT`, `REDIS_PASSWORD`
- Cache: `CACHE_TTL`, `CACHE_MAX_ITEMS`, `CACHE_CHECK_PERIOD`

### WhatsApp (Evolution API)
- `EVOLUTION_API_URL`, `EVOLUTION_API_KEY`, `EVOLUTION_API_TOKEN`
- `EVOLUTION_API_INTEGRATION=WHATSAPP-BAILEYS`
- `EVOLUTION_INSTANCE`, `INSTANCE_TOKEN`

### MinIO (opcional)
- `MINIO_ENABLED=false` (default)
- `MINIO_ENDPOINT`, `MINIO_PORT`, `MINIO_USE_SSL`
- `MINIO_ACCESS_KEY`, `MINIO_SECRET_KEY`, `MINIO_BUCKET_NAME`

### Facebook / Meta
- `FACEBOOK_WEBHOOK_VERIFY_TOKEN`, `FACEBOOK_PAGE_ACCESS_TOKEN`
- `META_CAPI_ENABLED=false` (default)
- `META_CAPI_ACCESS_TOKEN`, `META_CAPI_PIXEL_ID`, `META_CAPI_TEST_EVENT_CODE`

### Google Maps
- `GOOGLE_MAPS_API_KEY`

### Sentry (frontend)
- `VITE_SENTRY_DSN`

### Web Push (VAPID)
- `VAPID_PUBLIC_KEY`, `VAPID_PRIVATE_KEY`, `VAPID_SUBJECT`
- Gerar com `pnpm generate-vapid-keys`

## Observabilidade

- **PM2 logs:** `pm2 logs famachat-backend`
- **Log files:** `/var/www/famachat/logs/famachat-backend-{out,error,combined}.log`
- **Sentry frontend:** se `VITE_SENTRY_DSN` configurado.
- **MCP tools:**
  - `whatsapp_status` (plugin `crm-postgres`) — status WhatsApp.
  - `database_stats`, `running_queries`, `table_stats`, `index_usage` — PG.
  - `notifications` — notificações do sistema.

## Backup

- Script `auto-backup-github.sh` na raiz do repo — roda via cron e faz
  push do estado para GitHub.
- Vault Obsidian `fama-brain` tem `brain-sync.sh` cron (a cada 5 min)
  que faz fallback de push quando o container Paperclip falha em `flock`.

## Runbook de rollback

Quando um deploy quebra produção:

```bash
cd /var/www/famachat
git log --oneline -10                 # 1. identificar SHA estável
git revert <SHA-ruim>                 # 2a. ou: git checkout <SHA-estável>
pnpm install --frozen-lockfile        # 3. se deps mudaram
pnpm build                            # 4. rebuild obrigatório
pm2 restart famachat-backend --update-env
pm2 logs famachat-backend --lines 100 # 5. confirmar subiu ok
```

**Se o restart não resolve:** `pm2 stop famachat-backend` + investigar
logs + `pm2 start ecosystem.config.cjs --only famachat-backend`.

## CI / GitHub Actions

- Workflow em `.github/workflows/ci.yml` — 5 jobs: lint, typecheck,
  testes unit (client + server), build.
- Dependabot configurado.

## Ponteiros

- `ecosystem.config.cjs` — config PM2 canônica.
- `.env.example` — template completo de env vars.
- `auto-backup-github.sh` — backup automatizado.
- `.claude/napkin.md` — gotchas e padrões de deploy/PM2.
- [`docs/README.md`](../../../var/www/famachat/docs/README.md) — guia de setup.
