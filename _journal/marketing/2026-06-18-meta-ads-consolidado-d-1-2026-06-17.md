---
schema_version: 1
type: interaction
status: active
created: '2026-06-18'
updated: '2026-06-18'
source: agent-generated
author_agent: marketing
tags:
  - meta-ads
  - performance
  - daily-analysis
  - consolidado-d1
  - fama
title: Meta Ads — Consolidado D-1 — 2026-06-17
event_date: '2026-06-18'
channel: telegram-cron
participants:
  - Renato Faria
  - marketing-agent
confidence: 0.85
external_ids:
  cron_job_id: 00a25969527a
  analysis_type: consolidado_d1
  period: '2026-06-17'
---
# 📊 Meta Ads — Consolidado de ontem (D-1)

Período analisado em BRT: ontem 2026-06-17. Comparativos: anteontem 2026-06-16 e média dos dias anteriores do mês 2026-06-01 a 2026-06-16.
Conta analisada: act_24036721645944375.

## Resumo executivo

- D-1 veio zerado na API: 0 linhas, 0 gasto e 0 leads em 2026-06-17. Isso não parece oscilação de performance; é principalmente um ponto operacional.
- As 4 campanhas relevantes de leads/formulário estão atualmente PAUSED/effective_status PAUSED, com updated_time em 2026-06-16 por volta de 16:55 BRT. Isso explica o D-1 sem entrega, embora eu não tenha histórico de status além do estado atual retornado pela API.
- Antes da pausa, o mês estava com R$ 936,30 de gasto, 88 leads primários de formulário e CPL primário de R$ 10,64. Média diária anterior: R$ 58,52 de gasto e 5,5 leads/dia.
- O melhor recorte de público no acumulado é ABERTO: 48 leads, R$ 413,46 de gasto, CPL R$ 8,61. LLA e BASE estão mais caros: LLA R$ 12,75 e BASE R$ 14,19.
- Há divergência grande entre ação genérica lead e lead de formulário: no acumulado, lead genérico = 376 vs lead primário de formulário = 88. A análise de CPL usa o primário de formulário.

## Números principais

- Ontem, 2026-06-17: gasto R$ 0,00; leads primários 0; CPL não aplicável; impressões 0; alcance 0; cliques 0.
- Anteontem, 2026-06-16: gasto R$ 41,70; leads primários 3; CPL R$ 13,90; impressões 2.914; alcance 2.443; cliques 25; link clicks 16; CTR 0,86%; CPM R$ 14,31; CPC R$ 1,67.
- Média anterior do mês, 2026-06-01 a 2026-06-16: gasto médio R$ 58,52/dia; leads primários médios 5,5/dia; CPL agregado R$ 10,64; impressões médias 4.518/dia; alcance médio deduplicado de conta 1.637/dia; cliques médios 49,25/dia; link clicks médios 32,38/dia; CTR agregado 1,09%; CPM R$ 12,95; CPC R$ 1,19; frequência 2,76.
- Variação de ontem vs anteontem: gasto -100%; leads -100%; CPL não comparável porque ontem zerou.
- Variação de ontem vs média anterior do mês: gasto -100%; leads -100%; CPL não comparável.

## Campanhas que puxaram o resultado antes do D-1 zerado

- No D-1 não houve campanha puxando resultado: a API retornou zero entrega.
- Acumulado 01-16/06:
  - Vista: R$ 343,22; 37 leads; CPL R$ 9,28; 36,7% do gasto e 42,0% dos leads. Melhor relação volume/eficiência no nível campanha.
  - Vereda: R$ 315,24; 27 leads; CPL R$ 11,68; 33,7% do gasto e 30,7% dos leads. Volume bom, mas abaixo de Vista e Arbi em CPL.
  - Arbi: R$ 159,03; 16 leads; CPL R$ 9,94; 17,0% do gasto e 18,2% dos leads. Menor volume, eficiência boa.
  - Garden Sul: R$ 118,81; 8 leads; CPL R$ 14,85; 12,7% do gasto e 9,1% dos leads. Mais fraca no nível campanha.
- Anteontem, 16/06:
  - Arbi gerou 2 leads com R$ 9,97 de gasto, CPL R$ 4,99. O destaque foi ABERTO / anúncio 05 - ARBI: 2 leads com R$ 5,66 de gasto.
  - Vista gerou 1 lead com R$ 18,29 de gasto. O lead veio de Vista LLA / anúncio 01 - VISTA, com R$ 11,23 de gasto.
  - Vereda gastou R$ 11,01 sem lead primário no dia.
  - Garden Sul gastou R$ 2,43 sem lead primário no dia.

## Leitura por público: ABERTO / LLA / BASE

- ABERTO no acumulado: R$ 413,46; 48 leads; CPL R$ 8,61; 44,2% do gasto e 54,5% dos leads. É o bloco que mais merece preferência se a conta voltar a rodar.
- LLA no acumulado: R$ 395,14; 31 leads; CPL R$ 12,75; 42,2% do gasto e 35,2% dos leads. Não está morto, mas está perdendo para ABERTO.
- BASE no acumulado: R$ 127,70; 9 leads; CPL R$ 14,19; 13,6% do gasto e 10,2% dos leads. Usaria mais como sustentação/teste, não como prioridade de volume.
- Anteontem: ABERTO gerou 2 leads com R$ 16,91; LLA gerou 1 lead com R$ 21,71; BASE não gerou lead com R$ 3,08.

## Conjuntos e anúncios relevantes

- Escalar/retomar primeiro se a pausa não foi intencional:
  - Vista ABERTO: R$ 153,59; 21 leads; CPL R$ 7,31.
  - Arbi ABERTO: R$ 83,49; 12 leads; CPL R$ 6,96.
  - Vereda BASE: R$ 35,31; 4 leads; CPL R$ 8,83, apesar de menor volume.
  - Garden Sul LLA: R$ 43,07; 4 leads; CPL R$ 10,77, aceitável comparado ao resto da campanha.
- Segurar/cortar se orçamento estiver curto:
  - Garden Sul BASE: R$ 31,15; 0 lead primário no acumulado.
  - Arbi BASE: R$ 29,17; 1 lead; CPL R$ 29,17.
  - Arbi LLA: R$ 46,37; 3 leads; CPL R$ 15,46.
  - Vista LLA e Vereda LLA têm volume, mas CPL acima dos ABERTOS; manter com controle, não priorizar escala cega.
- Criativos do último dia com entrega:
  - 05 - ARBI foi o único anúncio com 2 leads no dia, CTR 3,49%, CPC R$ 0,71 e R$ 5,66 de gasto. É o melhor sinal de curto prazo.
  - 01 - VISTA em LLA trouxe 1 lead, mas com CTR 0,46% e custo por link click R$ 5,62; sinal menos limpo.
  - 02 - VEREDA LLA e 04 - VISTA ABERTO consumiram gasto no dia sem lead primário; volume baixo, mas eu não expandiria orçamento neles antes de novo sinal.

## Alertas/riscos

- Risco operacional principal: todas as campanhas relevantes estão pausadas no nível campanha. Se era para rodar ontem, a conta perdeu um dia inteiro de coleta e volume.
- Se a pausa foi intencional, não há ação de performance a tomar em D-1; o resultado é simplesmente sem entrega.
- A ação genérica lead está inflada/misturada. Usar lead genérico faria parecer CPL de R$ 2,49 no acumulado, mas o lead primário de formulário mostra R$ 10,64. Para decisão de mídia, eu usaria o primário até validar o mapeamento com CRM.
- Alcance por campanha/conjunto pode duplicar pessoas entre linhas; para total da conta no mês, usei alcance deduplicado de conta quando disponível.

## Ações recomendadas para calibração de hoje

- Primeiro decidir se a pausa das 4 campanhas foi intencional. Se não foi, o ajuste prioritário não é lances/criativos: é religar a operação correta. Eu não alterei nada no Meta Ads.
- Se voltar a rodar, priorizar orçamento em ABERTO, principalmente Vista ABERTO e Arbi ABERTO. Motivo: melhor CPL e maior proporção de leads vs gasto no acumulado.
- Manter LLA com teto mais controlado, principalmente Vista/Vereda, porque entregam volume mas com CPL pior que ABERTO. Não cortaria tudo de cara, mas não deixaria competir em igualdade se o orçamento estiver apertado.
- Cortar ou deixar mínimo em Garden Sul BASE e Arbi BASE até aparecer novo criativo/sinal de lead. Garden Sul BASE zerou lead no acumulado com R$ 31,15.
- Usar 05 - ARBI como referência de criativo no curto prazo. Foi o anúncio que concentrou os leads do último dia com entrega.
- Investigar a discrepância de eventos antes de qualquer leitura financeira para CRM: lead genérico 376 vs formulário primário 88 no acumulado é diferença grande demais para usar sem validação.

## Dados/limitações

- Todas as consultas foram read-only no Meta Ads MCP. Nenhuma campanha, conjunto, anúncio, orçamento ou status foi alterado.
- Datas calculadas em America/Sao_Paulo. Hoje da rotina: 2026-06-18 08:05 BRT; ontem: 2026-06-17; anteontem: 2026-06-16.
- meta_get_insights em nível conta para 2026-06-17 retornou total_rows 0, summary null e data vazia; por isso D-1 não tem breakdown por campanha/conjunto/anúncio.
- Os retornos com date_start/date_stop de 2026-06-16 e 2026-06-01 a 2026-06-16 bateram com as datas pedidas.
- O histórico de status não foi consultado; a leitura de pausa usa o estado atual retornado por meta_get_campaign/meta_list_adsets, com campaigns PAUSED e adsets effective_status CAMPAIGN_PAUSED.
- Para leads/CPL, priorizei onsite_conversion.lead_grouped/offsite_complete_registration_add_meta_leads como lead primário de formulário. Ação genérica lead foi reportada como discrepância, não usada para CPL principal.
