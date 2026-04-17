---
type: journal
owner: cto
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - incident
  - reno
  - whatsapp
  - sla
  - lead-rotation
title: Incidente Reno AI — 0% conversão por falta de WhatsApp
---
## Sintoma

Reno AI (user_id 35) acumulando leads sem converter nenhum. 79 clientes atribuídos, 0 vendas, 0 agendamentos, 0% conversão. 8 SLAs CRITICAL com status "Sem Atendimento" em 2026-04-17. 15 SLAs ativos no total.

## Diagnóstico

Investigação via crm-postgres revelou:

1. **User profile (sistema_users id=35):**
   - `whatsapp_instance: null` — nenhuma instância WhatsApp configurada
   - `whatsapp_connected: false`
   - `last_login_at: null` — nunca fez login no CRM
   - `is_active: true`, role "Executivo", department "Vendas"
   - Criado em 2026-03-22

2. **WhatsApp instances (sistema_whatsapp_instances):** Apenas 1 instância no sistema inteiro — "gestor" (user_id 1, Renato). Nenhuma instância para Reno.

3. **Rotation config (sistema_config_automacao_leads):**
   - Config id=93 (2026-04-09): Reno adicionado à rotação `[24, 14, 35]`
   - Configs 93-95 (Apr 9-16): Reno recebendo leads ativamente
   - Config id=96 (2026-04-16): Reno removido, rotação volta para `[24, 14]`

4. **Impacto nos clientes (tabela clientes, broker_id=35):**
   - 79 clientes total atribuídos
   - 56 em "Sem Atendimento" (nunca contatados)
   - 18 em "Em Atendimento" (provavelmente via SLA cascata para outros brokers)
   - 5 em "Não Respondeu"
   - Maioria com source "SLA Cascata" — leads que já falharam com outros brokers sendo re-atribuídos ao Reno, criando loop

## Causa Raiz

**Reno AI foi adicionado à rotação de leads em 09/04 sem ter instância WhatsApp configurada.** Sem canal de comunicação, o agente não consegue fazer primeiro contato. Todos os leads atribuídos ficaram em "Sem Atendimento" indefinidamente, SLAs cascateando e re-atribuindo de volta ao pool (que incluía Reno), criando um buraco negro de leads.

**Falha sistêmica:** O sistema de rotação (`sistema_config_automacao_leads`) não valida se o usuário tem `whatsapp_instance` e `whatsapp_connected` antes de incluí-lo na rotação. Não há alerta quando um broker acumula 100% de "Sem Atendimento".

## Ação

1. Reno já foi removido da rotação ontem (config 96, `[24, 14]`) — dano contido para novos leads
2. **Pendente:** 56 clientes "Sem Atendimento" precisam ser redistribuídos para brokers ativos
3. **Pendente:** Decisão sobre desativar user 35 ou configurar WhatsApp para Reno
4. **ADR registrado:** Implementar validação de WhatsApp na rotação de leads

## Prevenção

1. Validação no backend: não aceitar user em `rotation_users` se `whatsapp_instance IS NULL` ou `whatsapp_connected = false`
2. Alerta/monitoramento: broker com >5 clientes "Sem Atendimento" por >24h deve disparar notificação
3. Dashboard de saúde do Reno AI visível para gestão
