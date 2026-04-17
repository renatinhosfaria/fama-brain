---
type: goal
owner: cto
period: 2026-04
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - meta
  - cto
  - paperclip
---
# Metas Técnicas — CTO — Abril 2026

## 1. Observabilidade mínima viável
- Implementar monitoramento estruturado (uptime, métricas de Postgres, alertas de serviços críticos).
- Baseline: FamaChat, MinIO, MCP Obsidian, n8n.
- Critério: alerta automático se qualquer serviço cair por mais de 5 minutos.

## 2. Política de backup formalizada
- Postgres: backup automatizado diário, testável, com retenção de 7 dias mínimo.
- MinIO: política de versionamento ou snapshot para buckets críticos.
- Documentar e registrar ADR com política definida.
- Contexto: incidente de 27/03 (MinIO perdido sem snapshot).

## 3. Hardening de secrets
- Eliminar secrets em repos/config files expostos.
- Migrar para Docker Swarm secrets ou solução equivalente para variáveis críticas.
- Rotacionar tokens comprometidos no incidente de 06/04.
- Contexto: chave commitada em repo público `openclaw.json`.

## 4. FamaChat — preparação multi-tenancy
- Mapear dependências de tenant isolation no schema Postgres atual.
- Documentar ADR com estratégia de multi-tenancy (schema-per-tenant vs row-level security vs db-per-tenant).
- Não implementar ainda — apenas decisão arquitetural documentada.

## 5. Manutenção contínua
- Saúde do banco (vacuum, índices, queries lentas).
- Atualização de dependências críticas (Claude Code, MCPs).
- Suporte a incidentes e desbloqueio do Sparring.
