---
type: context
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - projeto
  - famachat
  - integracoes
---
# Integrações — FamaChat

Integrações externas e internas. Todas opcionais via env vars — sistema
degrada com graça quando desligadas.

## WhatsApp via Evolution API

FamaChat **não** fala com WhatsApp Cloud API diretamente. Usa a
**Evolution API** (gateway open-source baseado em `WHATSAPP-BAILEYS`) como
intermediária.

- **Serviço:** `server/services/whatsapp-api.ts`
- **Rotas:** `server/routes/whatsapp.ts` (criação de instâncias, QR Code,
  status, diagnósticos, profile picture, webhooks, validações).
- **Config env:**
  - `EVOLUTION_API_URL` — base URL da instância Evolution
  - `EVOLUTION_API_KEY` — API key
  - `EVOLUTION_API_TOKEN` — token de autenticação
  - `EVOLUTION_API_INTEGRATION=WHATSAPP-BAILEYS`
  - `EVOLUTION_INSTANCE=gestor` — instância padrão
  - `INSTANCE_TOKEN` — token da instância
- **DB:** `sistema_whatsapp_instances` mantém config de instâncias ativas
  por usuário/canal.
- **Rotação** de instâncias ativa para balancear envio e mitigar bloqueios.

## Facebook Lead Ads (webhook inbound)

- **Rota:** `server/routes/webhooks/facebook-leads.routes.ts`
- **Verify token:** `FACEBOOK_WEBHOOK_VERIFY_TOKEN` (handshake inicial).
- **Page access token:** `FACEBOOK_PAGE_ACCESS_TOKEN` (fetch de
  leads quando webhook traz `leadgen_id`).
- **Fluxo:** webhook → normalização de campos → fallback de telefone →
  `processLeadAutomation` → cria `sistema_leads` + cliente via SLA Cascata.

## Meta Conversions API (CAPI)

Envio server-side de eventos de conversão para o Meta Pixel.

- **Serviço:** `server/services/meta-capi.service.ts`
- **Listener:** `server/services/capi-listener.service.ts` escuta PostgreSQL
  NOTIFY/LISTEN via `pg-listen` — captura mudanças de qualquer origem
  (app, MCP/Reno AI, SQL direto).
- **Config env:**
  - `META_CAPI_ENABLED=false` (default)
  - `META_CAPI_ACCESS_TOKEN` — token Graph
  - `META_CAPI_PIXEL_ID` — pixel ID
  - `META_CAPI_TEST_EVENT_CODE` — código de teste
- **Pixel de referência (Corretor):** `1969770703769014` — Graph API v25.0.
- **Tipo:** CRM (`custom_data.event_source="crm"`).
- **Eventos disparados:**
  - `Lead` — criação do lead
  - `Contact` — entrada em atendimento (Em Atendimento)
  - `Schedule` — agendamento/visita
  - `Purchase` — venda fechada
- **Matching:** dados hashados do cliente (email, telefone, etc.).
  Para `source="Facebook Ads"`, matching por **telefone** — `leadgen_id`
  não é mais obrigatório (mudança de 2026-04-04).

## OpenClaw / Reno AI

Agent externo de IA rodando em VPS separado. Consumidor do CRM via dois
mecanismos:

- **Leitura direta do DB** via MCP server `crm-postgres` (SQL).
- **Webhooks outbound** via config `OpenClaw` (id 4) em
  `sistema_webhook_configs`. Secret plaintext — `decryptSecret` lida
  transparentemente via `isEncrypted()` check.

Reno tem `user_id=35` no sistema — recebe leads via SLA Cascata como
qualquer corretor. Se Reno falha (zero atendimento), guardrail é
**suspender novos leads** e redistribuir os existentes para corretores
humanos (caso real: abril/2026, 8 leads CRITICAL redistribuídos).

## MinIO — Object Storage

Armazenamento de mídia (fotos, vídeos, thumbnails, arquivos anexos).

- **Serviço:** `server/services/minio-storage.ts`
- **Config env:**
  - `MINIO_ENABLED=false` (default)
  - `MINIO_ENDPOINT`, `MINIO_PORT`, `MINIO_USE_SSL`
  - `MINIO_ACCESS_KEY`, `MINIO_SECRET_KEY`
  - `MINIO_BUCKET_NAME=famaserver-files` (default)
  - `MINIO_PUBLIC_URL`, `MINIO_CONSOLE_URL`
  - `MINIO_REGION=us-east-1`
- **Funcionalidades:** presigned URLs para upload direto do browser,
  URLs públicas, geração de thumbnails server-side com Sharp.
- **Fallback:** se MinIO desligado/indisponível, usa `uploads/` local.

## Webhooks outbound (sistema próprio)

- **Config:** `sistema_webhook_configs` — URL, secret, filtros de evento.
- **Encryption:** `WEBHOOK_ENCRYPTION_KEY` (AES-256-GCM) — secret pode
  ser encrypted ou plaintext; `decryptSecret` + `isEncrypted()` lidam
  com ambos.
- **Entregas:** `sistema_webhook_events` com status, payload, timestamps.
- **Retry:** automático via `webhookRetryJob` (1 min) + retry manual por
  rota.
- **Delay de `cliente.created`:** 10 segundos após criação do cliente
  (evita race condition com enrichment).

## Web Push (VAPID)

Notificações push no browser.

- **Config env:**
  - `VAPID_PUBLIC_KEY`, `VAPID_PRIVATE_KEY`
  - `VAPID_SUBJECT=mailto:...`
- **Subscriptions:** `sistema_push_subscriptions`.
- **Geração de keys:** `pnpm run generate-vapid-keys`.
- **Fallback para WebSocket:** se usuário está offline.

## WebSocket / Tempo real

- **Servidor:** `RealTimeNotificationServer` no backend.
- **Endpoint:** `/ws/notifications`.
- **Auth:** JWT Bearer (mesmo token da API).
- **Entrega:** notificações por usuário conectado; fallback para Web Push
  se offline.
- **Cliente:** `client/src/hooks/use-websocket.tsx` com heartbeat, refresh
  preventivo do token e reconexão exponencial.

## Google Maps

- **Config env:** `GOOGLE_MAPS_API_KEY`
- **Uso:** geolocalização de imóveis (provável — verificar componentes
  de mapa no `client/src/components/novo-imovel/`).

## Sentry

Error tracking no frontend.

- **Config env:** `VITE_SENTRY_DSN`
- **Lib:** `@sentry/react` 10.38.0.

## Ponteiros para código

- Meta CAPI: `server/services/meta-capi.service.ts`
- CAPI Listener: `server/services/capi-listener.service.ts`
- WhatsApp API: `server/services/whatsapp-api.ts`
- Facebook Leads inbound: `server/routes/webhooks/facebook-leads.routes.ts`
- MinIO: `server/services/minio-storage.ts`
- Webhook service: `server/services/` (procurar `webhook`)
- Webhook routes: `server/routes/` (procurar `webhook`)

## Docs detalhados

- [`docs/API.md`](../../../var/www/famachat/docs/API.md) — contratos HTTP + WebSocket
- [`docs/ARQUITECTURE.md`](../../../var/www/famachat/docs/ARQUITECTURE.md) § Integrações
- `.env.example` — lista completa de variáveis
