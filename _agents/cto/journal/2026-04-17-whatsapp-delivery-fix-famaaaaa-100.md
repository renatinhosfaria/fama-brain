---
type: journal
owner: cto
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - incident
  - whatsapp
  - FAMAAAAA-100
  - delivery-fix
title: whatsapp-delivery-fix-famaaaaa-100
---
## Sintoma
FAMAAAAA-100 (CRITICAL): 8 first-touch WhatsApp falharam após redistribuição de leads do Reno AI para Michel e Maria Eduarda.

## Diagnóstico
- Sistema tem apenas 1 instância WhatsApp: `gestor` (Renato, user_id=1, `553499772714@s.whatsapp.net`)
- Michel (user 14) e Maria Eduarda (user 24): `whatsapp_instance: null`, `whatsapp_connected: false`
- Reno AI (user 35): mesma situação — nunca teve instância
- 8 clientes confirmados na tabela `clientes` com JIDs válidos e `haswhatsapp: true`
- Follow-up agent não encontrou canal de envio para os brokers → 8 entregas falharam

## Causa raiz
Infraestrutura de WhatsApp não provisionada para brokers individuais. Apenas o gestor (Renato) tem instância conectada. O ADR anterior (validar WhatsApp antes de rotação) já cobria a prevenção — aqui é o remédio operacional.

## Ação
1. Decisão: usar instância `gestor` como fallback sender imediato
2. Delegação ao Sparring: enviar 8 first-touch via Evolution/Baileys API usando a instância gestor
3. Médio prazo: provisionar instâncias individuais para corretores ativos (requer QR code presencial)

## Prevenção
- ADR já registrado: validar WhatsApp antes de incluir broker na rotação
- Próximo passo estrutural: implementar fallback sender no FamaChat (usar gestor quando broker sem instância)
