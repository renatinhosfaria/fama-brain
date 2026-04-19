---
type: context
owner: renato
project: famachat
created: '2026-04-19'
updated: '2026-04-19'
tags:
  - projeto
  - famachat
  - dominio
---
# Domínio — FamaChat

CRM imobiliário. Fluxo central: **lead → cliente → agendamento → visita →
venda**, com rotação automática de leads entre corretores via SLA Cascata.

Fonte única de verdade do modelo: `shared/schema.ts`.

## Entidades centrais

| Entidade (tabela) | Descrição |
|---|---|
| `sistema_users` | Corretores, gestores, admin. Suporta `isActive`. Role determina o dashboard e permissões. |
| `sistema_leads` | Captação bruta de origens externas (Facebook Lead Ads, WhatsApp, manual). |
| `clientes` | Cliente comercial no funil. Origem, etapa, corretor atribuído. Campo `cliente_original_id` aponta para a raiz não-SLA-Cascata. |
| `clientes_agendamentos` | Agendamentos (retornos, reuniões, visitas pendentes). |
| `clientes_visitas` | Visitas realizadas a imóveis. |
| `clientes_vendas` | Fechamentos. Dispara `Purchase` no Meta CAPI. |
| `clientes_id_anotacoes` | Histórico e anotações do atendimento. |
| `imoveis_empreendimentos` | Lançamentos e empreendimentos com mídia e dados comerciais. |
| `imoveis_apartamentos` | Unidades (apartamentos/imóveis individuais). |
| `imoveis_proprietarios_pf` | Proprietários PF do catálogo. |
| `sistema_whatsapp_instances` | Instâncias WhatsApp (via Evolution API) vinculadas a usuários e canais. |
| `sistema_webhook_configs` | Consumers de webhooks outbound (OpenClaw, etc.). Secret encrypted/plaintext. |
| `sistema_webhook_events` | Histórico de entregas com retries. |
| `sistema_notificacoes` | Notificações do sistema. |
| `sistema_push_subscriptions` | Subscriptions de Web Push (VAPID). |
| `sistema_refresh_tokens` | Refresh tokens com tracking de família. |
| `sistema_auth_audit_log` | Log de auditoria de autenticação. |

## Fluxo comercial

```
sistema_leads (captação)
   ├── origem: Facebook Lead Ads → webhook inbound
   ├── origem: WhatsApp / outras → rota interna ou manual
   └── automação (processLeadAutomation) → clientes
        └── status: Sem Atendimento → Em Atendimento → Visita → Venda
             ├── clientes_agendamentos (retornos, pré-visitas)
             ├── clientes_visitas (visitas realizadas)
             └── clientes_vendas (fechamento)

Em cada transição relevante:
  → Meta CAPI event (Lead / Contact / Schedule / Purchase)
  → Webhooks outbound (configuráveis)
  → Notificações (WebSocket + Web Push fallback)
```

Kanban de clientes organizado pelo status: `Sem Atendimento`, `Em
Atendimento`, `Visita`, `Venda` (+ intermediários). Cada corretor vê sua
fila; gestores veem a global.

## SLA Cascata

Sistema de rotação automática de leads entre corretores. Scheduler
`SLACascataScheduler` roda a cada 5 minutos.

**Mecânica:**

1. Lead entra no sistema → vira cliente com etapa inicial.
2. Se o corretor atribuído não avança dentro do SLA configurado, a
   cascata dispara: cria uma **cópia** do cliente e atribui ao próximo
   corretor.
3. `cliente_original_id` DEVE apontar para a **raiz** (cliente não-SLA-Cascata).
   Usar helper `resolverClienteOriginalId()` para resolver corretamente
   (bug fixado 2026-03-04: estava apontando para o pai da cópia em vez da
   raiz, causando re-atribuições para o mesmo corretor).
4. `getProximoUsuario` seleciona o **próximo corretor** pela **menor
   carga mensal** (contagem total de clientes do mês, todas as origens),
   com **round-robin** em empate (mudado 2026-03-05, antes era fila fixa).
5. `encerrarSLACascata` **EXCLUI** o `clienteId` gatilho ao arquivar
   derivados (bug fixado 2026-03-04: a cópia que alcançou sucesso era
   arquivada pela própria encerramento).
6. Guards de `isActive` em `iniciarSLACascata` e `processLeadAutomation`
   — usuário desativado NÃO recebe novos leads.

**Impacto operacional:** cada cópia SLA conta como oportunidade real na
carga do corretor.

## Desativação de usuário

`handleUserDeactivation()` em `server/services/user-deactivation.service.ts`
(adicionado 2026-03-18 após incidente onde desativação não tinha
side-effects). Ao desativar um usuário:

1. Remove de configs de rotação (`rotationUsers`).
2. Finaliza SLAs ativos.
3. Rotaciona SLAs para próximo corretor ativo.
4. Fecha histórico de rotação.

Sem isso, usuário desativado continuava recebendo SLAs.

## Rotação de WhatsApp

Balanceamento de envio entre instâncias Evolution API ativas. Config em
DB (`sistema_whatsapp_instances`). Validação de status periódica.

## Webhooks outbound

- Config persistida em `sistema_webhook_configs` (URL, secret, filtros de
  evento).
- Entregas rastreadas em `sistema_webhook_events` com retry automático
  (`webhookRetryJob` a cada 1 min) e retry manual por rota.
- Secret handler: `decryptSecret` com check `isEncrypted()` — aceita
  plaintext e encrypted (AES-256-GCM, chave `WEBHOOK_ENCRYPTION_KEY`).
- Evento `cliente.created` é emitido **com delay de 10s** após criação
  do cliente (evita race conditions com enrichment).

Config especial: webhook `OpenClaw` (id 4) tem secret plaintext no DB —
`decryptSecret` lida transparentemente.

## Personas (do PRD)

- **Gestão** — visão global, usuários, métricas, webhooks, governança.
- **Central de Atendimento** — triagem, qualificação, acompanhamento
  inicial dos clientes.
- **Vendas** — funil, agenda, visitas, imóveis, fechamento.

Esses 3 pilares viram os dashboards por role.

## Estados (etapas de cliente)

A ordem canônica dentro do funil (pode haver intermediários específicos):

1. Sem Atendimento
2. Em Atendimento
3. Visita
4. Venda

Venda dispara Meta CAPI `Purchase` e atualiza `clientes_vendas`.

## Ponteiros para código

- Schema canônico: `shared/schema.ts`
- SLA Cascata (scheduler + lógica): `server/jobs/` + `server/services/sla-*`
- Desativação de usuário: `server/services/user-deactivation.service.ts`
- Meta CAPI: `server/services/meta-capi.service.ts`
- CAPI Listener (pg-listen): `server/services/capi-listener.service.ts`
- Webhook service: `server/services/` (procurar por `webhook`)
- Facebook Lead Ads inbound: `server/routes/webhooks/facebook-leads.routes.ts`

## Docs detalhados

- [`docs/PRD.md`](../../../var/www/famachat/docs/PRD.md) — visão de produto, personas, fluxos
- [`docs/ARQUITECTURE.md`](../../../var/www/famachat/docs/ARQUITECTURE.md) — modelo de dados
