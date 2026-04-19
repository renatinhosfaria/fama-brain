---
type: context
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - projeto
  - famachat
  - stack
---
# Stack — FamaChat

Tecnologias, versões-chave e gotchas herdados. Fonte de verdade:
`package.json` na raiz do repo.

## Frontend

| Lib | Versão | Uso |
|---|---|---|
| React | 19.2.4 | UI framework |
| Vite | 7.3.2 | Bundler, dev server, build |
| TypeScript | 5.9.3 | Linguagem |
| TailwindCSS | 4.1.18 | Styling (+ `@tailwindcss/postcss`, `tailwindcss-animate`) |
| Radix UI | 1.x–2.x | Componentes headless (dialog, select, toast, tooltip, ...) |
| Wouter | 3.3.5 | Routing |
| TanStack Query | 5.60.5 | Server state (perfis: static, semiStatic, dynamic, realtime, list, detail) |
| Zustand | 5.0.3 | Client state |
| React Hook Form | 7.53.1 | Forms |
| Zod | 3.25.76 | Validação (via `drizzle-zod`) |
| Framer Motion | 12.33.0 + `motion` 12.31 | Animações |
| FullCalendar | 6.1.19 | Agenda (`@fullcalendar/react` + plugins) |
| React Big Calendar | 1.15 | Calendário alternativo |
| Lucide React | 0.453 | Ícones |
| Sentry React | 10.38 | Error tracking (DSN em `VITE_SENTRY_DSN`) |
| React Konva / Konva | 19.2 / 10.2 | Canvas editor (imagem) |
| `react-filerobot-image-editor` | 4.9 | Editor de foto |
| `@diffusionstudio/core` | 4.0 | Editor de vídeo |
| PWA | via `vite-plugin-pwa` 1.2 + `workbox-window` 7.4 | Service worker, offline |
| `@axe-core/react` | 4.11 | Acessibilidade (dev) |
| Styled Components | 6.3 | Convive com Tailwind |

## Backend

| Lib | Versão | Uso |
|---|---|---|
| Node.js | 22+ | Runtime (engines declarados em `docs/README.md`) |
| Express | 4.22.1 | HTTP framework |
| Drizzle ORM | 0.45.2 | ORM PostgreSQL |
| Drizzle Kit | 0.30.6 | Migrations (`db:push`, `db:generate`, `db:migrate`) |
| Drizzle Zod | 0.7.1 | Validação integrada com schema |
| `pg` | 8.16.2 | Driver PostgreSQL (pool TCP — não serverless) |
| `pg-listen` | 1.7.0 | PostgreSQL NOTIFY/LISTEN (CAPI Listener) |
| ioredis | 5.6.1 | Cliente Redis (opcional) |
| ws | 8.18 | WebSocket server |
| `bcrypt` | 5.1.1 | Hash de senha |
| `jsonwebtoken` | 9.0.2 | JWT |
| `helmet` | 8.1 | Headers de segurança |
| `compression` | 1.8 | gzip |
| `cors` | 2.8.5 | CORS |
| `express-rate-limit` | 8.3.2 | Rate limit |
| MinIO | 8.0.6 | Object storage client |
| Multer | 1.4.5 | Upload multipart |
| Sharp | 0.34.5 | Thumbnails e processamento de imagem |
| Archiver | 7.0.1 | Geração de ZIP |
| Node Cron | 3.0.3 | Schedulers |
| Web Push | 3.6.7 | Notificações push (VAPID) |
| Axios | 1.15 | HTTP client (integrações externas) |
| Winston | 3.17 | Logging |
| Nanoid | 5.1.6 | Geração de IDs |
| Superjson | 2.2.5 | Serialização |
| Zod Validation Error | 3.5.4 | Formatação de erros Zod |

## Tooling

| Ferramenta | Versão | Uso |
|---|---|---|
| pnpm | 10.28.2 | Package manager (via Corepack — `packageManager` em package.json) |
| Biome | 2.3.14 | Lint + format (substitui ESLint + Prettier) |
| Vitest | 3.2.4 | Unit tests (client `vitest.config.ts` / server `vitest.server.config.ts`) |
| Playwright | 1.54.2 + `playwright/test` 1.54.2 | E2E tests (config existe, mas `tests/` e `*.spec.ts` fora de node_modules não existem até 2026-04-16) |
| `@typescript/native-preview` | 7.0-dev | `tsgo --noEmit` em vez de `tsc` para typecheck |
| `esbuild` | 0.25.12 | Bundling server-side no build |
| `tsx` | 4.19.1 | Dev runner |
| PM2 | — | Process manager em produção |

## Comandos principais

```bash
pnpm dev                    # tsx --env-file=.env server/index.ts
pnpm build                  # vite build + esbuild server
pnpm start                  # node dist/index.js (produção)
pnpm check                  # tsgo --noEmit (typecheck)
pnpm lint                   # biome check .
pnpm lint:fix               # biome check --write .
pnpm format                 # biome format --write .
pnpm db:push                # drizzle-kit push (interativo!)
pnpm db:generate            # drizzle-kit generate (interativo!)
pnpm db:migrate             # drizzle-kit migrate
pnpm test:unit              # Vitest client + server
pnpm test:unit:client       # Vitest client
pnpm test:unit:server       # Vitest server (--config vitest.server.config.ts)
pnpm test                   # Playwright e2e
```

## Gotchas herdados (napkin)

- **Não trocar `pg` por `@neondatabase/serverless`** — VPS não é serverless.
  Long-running process PM2 + pool TCP é a escolha certa.
- **Drizzle retorna camelCase** — nunca assumir snake_case no frontend
  ao consumir queries (ex: `quartosApartamento`, não `quartos_apartamento`).
- **Ordem de rotas Express:** rotas nomeadas (`/opcoes-servicos`) devem
  vir **antes** das parametrizadas (`/:id`) no mesmo router, senão o
  param captura o path nomeado.
- **Vitest server-side** exige `--config vitest.server.config.ts`. Config
  default só casa `client/src/**`.
- **`vi.clearAllMocks()` não reseta spy implementations** definidas por
  `vi.spyOn().mockResolvedValue()`. Usar `vi.restoreAllMocks()` em
  `beforeEach` quando singleton é compartilhado entre tests, senão spies
  vazam.
- **Vitest: reassignment de `let dbMock` em `vi.mock` getter NÃO funciona**
  — o getter é avaliado uma vez. Usar objeto mutável + `resetDbChain()`
  que muta propriedades in-place.
- **pnpm v10 bloqueia build scripts por default**. `pnpm.onlyBuiltDependencies`
  declarado em `package.json` para: `bcrypt`, `bufferutil`, `esbuild`,
  `sharp`.
- **`pnpm db:push` e `pnpm db:generate` são interativos** — perguntam sobre
  tabelas novas vs renames. Quando souber exatamente quais tabelas adicionar,
  use `psql` direto em vez do `db:push`.
- **Biome enforça trailing newline** em `package.json` — scripts em Python
  que manipulam o arquivo precisam preservar esse newline.

## Peer dependency warnings (não-bloqueantes)

- `@vitest/ui@3.2.4` alinha com vitest 3.2.4 ✓
- `react-day-picker@8.10.1` pede React 18, projeto usa React 19 (funciona)
- `react-helmet@6.1.0` → `react-side-effect` pede React 18, projeto usa 19

## Código morto identificado

- `server/middleware/mock-auth.ts` — exporta `mockAuthMiddleware` mas não
  é importado em lugar nenhum (verificado 2026-04-16). Remover ou guardar
  com `NODE_ENV !== 'production'` se reintroduzir.

## Ponteiros

- `package.json` — source of truth para versões
- `.claude/napkin.md` — gotchas vivos e padrões que quebram
- `biome.json` — regras de lint/format
- `drizzle.config.*` — config do Drizzle Kit
