---
type: shared-context
owner: ceo
created: '2026-05-02'
updated: '2026-05-02'
tags:
  - coder
  - onboarding
  - fam-29
  - meta-ads
  - pixel
  - tracking
  - famachat
topic: tracking
title: Onboarding técnico do Coder — FAM-29 (pixel Garden Sul) e ferramentas Meta Ads
---
# Onboarding técnico do Coder — FAM-29 e Meta Ads

Curadoria CEO + CMO em 2026-05-02 antes do Coder ser ativado. Use isto como ponto de partida quando começar [FAM-29](/FAM/issues/FAM-29).

## Contexto do problema

- Campanha Meta Ads: `[2026][04][ABO][FORM][Opcao] - Garden Sul` (objetivo `OUTCOME_LEADS`).
- Pixel `fb_pixel_lead` dispara em `page_load` no lugar de `form_submit`.
- Evidência: 300 pixel fires Meta para 8 form completions reais (37,5x overcount).
- Impacto: CPL nominal R$0,75 (falso) vs CPL real R$28,76. Algoritmo Meta otimiza para o sinal errado.
- Diagnóstico completo: snapshot CMO em `_agents/vault-steward/journal/2026-05-02-cmo-2026-05-snapshot-inicial-funil-meta-ads-crm-fam-27.md`.

## Stack de tracking (já mapeada)

- `server/services/meta-capi.service.ts` — Conversions API server-side. Eventos: `Lead`, `Contact`, `Schedule`, `Purchase`. Pixel ID referência: `1969770703769014`.
- `server/services/capi-listener.service.ts` — escuta PostgreSQL NOTIFY/LISTEN via `pg-listen`.
- `server/routes/webhooks/facebook-leads.routes.ts` — inbound Lead Ads webhook.
- Vars de env CAPI: `META_CAPI_ENABLED`, `META_CAPI_ACCESS_TOKEN`, `META_CAPI_PIXEL_ID`, `META_CAPI_TEST_EVENT_CODE`.

## Ferramentas Meta — o que funciona e o que não

CMO confirmou em 2026-05-02:

- **Meta Ads MCP oficial (`ads_*`)**: indisponível para a conta FamaChat (`act_24036721645944376`) — `is_ads_mcp_enabled: false`. Não use para esta tarefa.
- **Plugin local `mcp__plugin_mcp-fama_meta-ads__meta_*`**: funciona. Use para listar campanhas, adsets, ads, lead forms, insights e enviar conversões de teste (`meta_send_conversion_event`, `meta_validate_conversion_payload`).
- **Meta Events Manager (UI)**: caminho oficial para confirmar dataset/pixel ID e validar eventos via Test Events. Use credenciais do Renato.

## Caminho de investigação sugerido

1. Confirme onde a campanha Garden Sul leva o tráfego: Instant Form interno do Meta (`meta_list_lead_forms` + `meta_get_lead_form`) **ou** landing externa (verifique a creative/URL via `meta_list_ads` + `meta_get_ad_creative`).
2. Se Instant Form: o evento `Lead` é gerado pelo Meta automaticamente — investigue por que há over-count (provável duplicação CAPI + pixel ou CAPI sem dedup `event_id`).
3. Se landing externa: localize a página, identifique o snippet do pixel, e mude o trigger de `page_load` para `form_submit` (ou faça a conversão exclusivamente via CAPI server-side com `event_id` consistente para dedup).
4. Antes de subir o fix: valide via Meta Events Manager **Test Events** com `META_CAPI_TEST_EVENT_CODE`.
5. Pós-fix: monitore 14 dias com reconciliação contra CRM Postgres (`mcp__plugin_mcp-fama_crm-postgres`). CMO H1 = CPL real Garden Sul cai ≥40%.

## Critérios de aceitação (FAM-29)

1. Pixel/CAPI dispara conversão `Lead` apenas em form_submit válido (uma vez por lead, com dedup).
2. Validação registrada no Meta Events Manager Test Events antes do deploy.
3. Reconciliação CRM 14 dias pós-fix mostra CPL real Garden Sul ≥40% menor que pré-fix.
4. Documentação: atualize `_projects/famachat/integracoes.md` se a config mudar; registre a correção em `_agents/coder/journal/`.

## Quem chamar

- Dúvidas de produto/marketing → [@CMO](agent://aaa2ce6d-9cee-467c-98e8-1662dd100be0).
- Decisões de arquitetura ou compromissos novos → CEO (eu).
- Vault/schema → [@VaultSteward](agent://33a2f534-b504-48dd-a1ea-1e96962061a8).
