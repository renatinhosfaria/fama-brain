---
created: '2026-04-27'
updated: '2026-04-27'
owner: reno
status: concluida
tags:
  - reno
  - auditoria
  - whatsapp
  - nao-respondeu
  - performance
type: journal
---
# Auditoria dos 87 clientes Não Respondeu — Reno

Data da auditoria: 2026-04-27T16:39:15+02:00
Escopo: clientes com `broker_id=35` e `status='Não Respondeu'`.
Ação realizada: auditoria de elegibilidade/entrega. Nenhum WhatsApp foi enviado e nenhum status foi alterado.

## Resumo executivo

Total auditado: **87 clientes**.

Distribuição por bucket operacional:

| Bucket | Qtd | Interpretação |
|---|---:|---|
| A — Sem WhatsApp/JID utilizável | 6 | Não devem entrar em reengajamento automático antes de corrigir/validar contato. |
| C — Suprimido ou ambiguidade | 26 | Há notas/flags que indicam supressão, teste, interno, ambiguidade ou contato não seguro. Requer revisão antes de qualquer envio. |
| D — Falha técnica a reauditar | 31 | Há evidência de falha/erro de envio. Como o bridge atual está conectado e o código já normaliza JID, são os principais candidatos a reteste controlado. |
| E — Enviado sem resposta | 23 | Há evidência de envio/primeiro contato, mas sem resposta registrada. Entram em cadência de reengajamento, não em novo primeiro contato. |
| F — Sem evidência clara de envio | 1 | Caso isolado para revisão manual. |

## Estado técnico verificado

- Bridge WhatsApp atual: conectado (`status=connected`, fila 0).
- Caminho de envio atual contém normalização para JID: `_normalize_whatsapp_chat_id` e `_send_whatsapp()` usando `normalized_chat_id`.
- Processos gateway/bridge reiniciados em 2026-04-27 15:52.

Conclusão técnica: falhas antigas não devem ser tratadas automaticamente como falha ainda ativa. O caminho atual parece apto para reteste controlado.

## Leitura comercial

A carteira de 87 Não Respondeu não é homogênea:

1. **23** parecem realmente enviados e sem resposta. Esses devem receber cadência de reengajamento.
2. **31** parecem ter sofrido falha técnica. Esses devem ser priorizados para reteste controlado, um por vez, com revalidação antes do envio.
3. **6** têm problema de WhatsApp/JID utilizável. Esses devem sair da régua automática até resolver contato.
4. **26** têm indicação de supressão/ambiguidade. Esses não devem ser disparados sem revisão.
5. **1** está sem evidência clara de envio e merece revisão manual.

## Candidatos com problema de WhatsApp/JID utilizável

- 10714 — João pedro — Facebook Ads — candidato sem 9: 553491607365
- 10806 — Eliane — WhatsApp — candidato sem 9: 553492274323
- 10991 — Rodrigo Moreira — Facebook Ads — haswhatsapp=false apesar de JID existente — candidato sem 9: 553493735244
- 10987 — Thais Ravazio — SLA Cascata — candidato sem 9: 555185650659
- 10993 — Luis — SLA Cascata — candidato sem 9: 553492063689
- 10995 — Julia santos — SLA Cascata — sem candidato confiável sem 9

## Candidatos com falha técnica a reauditar — prioridade alta

31 clientes. Recomendação: retestar em fila controlada, no máximo um envio por execução, com revalidação antes do envio e nota no CRM.

- 10660 — Giovanna — Facebook Ads - Union Vista — sem 9: 553492106179
- 10662 — Elias Fernandes — Facebook Ads - Garden Sul — sem 9: 557799340972
- 10950 — Ivens Paiva — SLA Cascata — sem 9: 553491995169
- 10959 — Michele Oliveira — Facebook Ads — sem 9: 553488545426
- 10952 — Marcos Caetano — SLA Cascata — sem 9: 553488434767
- 10968 — Maycon Olimpio — Facebook Ads — sem 9: 553496985427
- 10970 — Maria Eduarda — Facebook Ads — sem 9: 553492550299
- 10967 — Flaviahair Especialista em Mechas e Loiro — SLA Cascata
- 10990 — César Augusto Silva — Facebook Ads — sem 9: 556799579583
- 10971 — Bruno Sávio — SLA Cascata — sem 9: 553488651063
- 10996 — Sibely Cortes — Facebook Ads — sem 9: 553491525226
- 10973 — Layane Souza — SLA Cascata
- 10974 — Grazyelly Macêdo — SLA Cascata — sem 9: 553493093595
- 10975 — Andre Luiz duca — SLA Cascata — sem 9: 553499660215
- 10976 — Silvio Humberto Silva — SLA Cascata — sem 9: 553499773485
- 10979 — Júlia — SLA Cascata — sem 9: 553499744664
- 10978 — Esther Osklen — SLA Cascata — sem 9: 553496874251
- 10980 — Vanessa — SLA Cascata — sem 9: 553497186904
- 10982 — Mateus Costa — SLA Cascata — sem 9: 553498045144
- 10983 — Joanne Thais — SLA Cascata — sem 9: 553496432796
- 10986 — Andreia Carvalho — SLA Cascata — sem 9: 553492295440
- 10989 — Erlania Silva — SLA Cascata — sem 9: 553488584789
- 10988 — Sônia — SLA Cascata
- 10992 — Rosii Gonçalves — SLA Cascata
- 10994 — ALINEFERKDU⚘ — SLA Cascata — sem 9: 553497701436
- 10997 — Santiago Derson — Facebook Ads — sem 9: 553498826127
- 10998 — Carmen Vicente Santos Vicente Santos — Facebook Ads — sem 9: 553496546101
- 10999 — Guilherme Mendes — Facebook Ads — sem 9: 553491880508
- 11000 — Wueverton Lima — Facebook Ads — sem 9: 553492133985
- 11008 — Fabio Martins Polaro — Facebook Ads — sem 9: 553491638372
- 11005 — Thabata Cristina — SLA Cascata — sem 9: 553498325262

## Enviados sem resposta — cadência de reengajamento

23 clientes. Não tratar como primeiro contato; usar retomada curta.

- 10659 — Davi Maia — Facebook Ads - Garden Sul — sem 9: 553497631451
- 10923 — Silva Porto — SLA Cascata
- 10924 — Edson Tolentino — SLA Cascata — sem 9: 553496976532
- 10925 — Wanderson Alessandro — SLA Cascata — sem 9: 553499794972
- 10927 — Murilo Damasceno — SLA Cascata
- 10929 — Eva Neves — SLA Cascata — sem 9: 553499872584
- 10943 — •Ana Clara Marques• — SLA Cascata — sem 9: 553484407759
- 10966 — Nayara Ferreira — SLA Cascata — sem 9: 553498663380
- 10981 — samara — SLA Cascata — sem 9: 553499170727
- 10985 — João — SLA Cascata — sem 9: 553493358891
- 11001 — Biiahsiilva — Facebook Ads — sem 9: 553497953700
- 11002 — Marco Antonio Goncalves — Facebook Ads — sem 9: 553499859186
- 11006 — Elinete Silva — Facebook Ads — sem 9: 553491506630
- 11009 — Diasalvez111q1~qqq — Facebook Ads — sem 9: 553496536824
- 11004 — Amanda — SLA Cascata
- 11007 — Alessandra Nascimento — SLA Cascata — sem 9: 553497749587
- 11012 — Ton — Facebook Ads — sem 9: 553484126983
- 11013 — 𝑩𝒍𝒂𝒄𝒌 𝒊𝒏 𝒔𝒕𝒚𝒍𝒆 — Facebook Ads — sem 9: 553491566454
- 11011 — Siguinei Souza — SLA Cascata — sem 9: 553498917244
- 11014 — Yasmin Mascarenhas — Facebook Ads — sem 9: 553491784983
- 11017 — Claudia Martins Ferreira — Facebook Ads — sem 9: 553491218029
- 11019 — Andreia Marson — Facebook Ads — sem 9: 553492585604
- 11021 — Claudia Rosângela — Facebook Ads — sem 9: 553496508821

## Caso sem evidência clara de envio

- 10657 — Lead Garden Sul — WhatsApp - Garden Sul — sem 9: 553484260681

## Recomendação de próximo passo

1. Não mexer nos 6 sem WhatsApp/JID até validar contato.
2. Não disparar automaticamente para os 26 suprimidos/ambíguos.
3. Priorizar os 31 com falha técnica em reteste controlado, com intervalo e revalidação.
4. Rodar cadência de reengajamento para os 23 enviados sem resposta.
5. Revisar manualmente o caso 10657.
