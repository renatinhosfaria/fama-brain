---
type: journal
owner: cto
created: '2026-04-17'
updated: '2026-04-17'
tags:
  - heartbeat
  - pixel
  - meta-ads
  - garden-sul
  - diagnostico
  - FAMAAAAA-97
title: diagnostico-pixel-garden-sul-leads-inflados
---
## Wake: issue_assigned FAMAAAAA-97 — 2026-04-17

### Tarefa
Verificar pixel de conversão no site Garden Sul — leads inflados (297 pixel leads vs ~11 reais).

### Investigação

1. **Adset correto:** A inflação está no adset **LLA** (`120244908268570206`), não no ABERTO como descrito na issue. LLA = 297 pixel leads / 5 form leads. ABERTO = 5 pixel leads / 6 form leads.

2. **Criativos:** Todos os 5 anúncios do LLA usam Meta Lead Form nativo (id `1154020216795438`), CTA `LEARN_MORE`, URL `fb.me/`. Não redirecionam para site externo.

3. **Form real:** 11 leads capturados no form (nomes + WhatsApp). São os leads reais. CPL verdadeiro = R$26,66.

4. **Site da construtora:** `opcaoempreendimentos.com.br/garden-sul/` — propriedade da Opção Empreendimentos. Contém formulários (simulação/callback). Pixel provavelmente no `<head>` ou via tag manager — WebFetch não capturou (renderização server-side).

5. **Mecanismo de inflação:** Pixel no site da construtora dispara `Lead` em trigger errado (pageview?). Audiência LLA (form abandoners + lookalikes) visita o site organicamente. Meta atribui via view-through ao adset LLA.

6. **Por que LLA >> ABERTO:** LLA inclui `[RMKT] ABANDONO DE FORMS GLOBAL - 30D` e lookalikes de clientes/leads como custom_audiences. ABERTO exclui essas audiências. Pessoas nessas audiências navegam sites imobiliários naturalmente → mais view-throughs → mais pixel leads falsos.

### Dados de suporte
- Campanha: `120244908268460206` (Garden Sul)
- LLA adset: `120244908268570206` — spend R$145,99, 297 `offsite_conversion.fb_pixel_lead`, 5 `onsite_conversion.lead_grouped`
- ABERTO adset: `120244908268560206` — spend R$147,33, 5 `offsite_conversion.fb_pixel_lead`, 6 `onsite_conversion.lead_grouped`
- Form: `1154020216795438` — 11 leads reais (nomes verificados)
- Conta: `act_24036721645944375`

### Status
Diagnóstico completo postado na issue. Pendente: verificação no Meta Events Manager (CMO) ou contato com construtora.
