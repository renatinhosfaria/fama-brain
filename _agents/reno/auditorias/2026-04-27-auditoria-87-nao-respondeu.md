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


---

## Retificação importante — 2026-04-27

Após pedido do Renato por certeza sobre os 31 classificados inicialmente como "falha técnica a reauditar", foi feita uma segunda auditoria mais rígida.

A primeira classificação de 31 estava superestimada porque o SQL interpretou o campo textual `error=` vazio em alguns registros de webhook como se fosse erro real. Isso contaminou parte do bucket.

### Resultado corrigido

Sobre os 87 clientes em `Não Respondeu`:

| Resultado operacional corrigido | Qtd | Significado |
|---|---:|---|
| Envio confirmado por nota/ID de mensagem | 42 | O sistema registrou envio bem-sucedido do Reno. |
| Não enviado — falha confirmada | 26 | Há nota explícita de falha/erro e não há nota posterior de envio bem-sucedido. |
| Webhook aceito sem prova de envio | 12 | O FamaChat aceitou/encaminhou o evento, mas não há prova operacional de envio no CRM/log disponível. |
| Webhook falhou sem envio confirmado | 1 | Webhook expirou/falhou, sem prova de envio. |
| Sem WhatsApp/JID confiável | 3 | Não há destino confiável para envio automático. |
| Sem evidência suficiente | 3 | Casos com histórico ambíguo/sem prova conclusiva. |

### Clientes com certeza operacional de que NÃO houve envio bem-sucedido do Reno

Critério: existe anotação explícita de falha de envio/bridge/JID e não existe anotação posterior de `resultado=enviado`, `WhatsApp enviado`, `message_id` ou equivalente.

Total: **26 clientes**.

- 10660 — Giovanna
- 10662 — Elias Fernandes
- 10968 — Maycon Olimpio
- 10970 — Maria Eduarda
- 10967 — Flaviahair Especialista em Mechas e Loiro
- 10990 — César Augusto Silva
- 10991 — Rodrigo Moreira
- 10971 — Bruno Sávio
- 10996 — Sibely Cortes
- 10974 — Grazyelly Macêdo
- 10975 — Andre Luiz duca
- 10976 — Silvio Humberto Silva
- 10979 — Júlia
- 10982 — Mateus Costa
- 10983 — Joanne Thais
- 10986 — Andreia Carvalho
- 10987 — Thais Ravazio
- 10989 — Erlania Silva
- 10988 — Sônia
- 10992 — Rosii Gonçalves
- 10993 — Luis
- 10994 — ALINEFERKDU⚘
- 10997 — Santiago Derson
- 10998 — Carmen Vicente Santos Vicente Santos
- 10999 — Guilherme Mendes
- 11000 — Wueverton Lima

### Observação sobre certeza

A certeza aqui é operacional: não há envio bem-sucedido registrado no CRM/log disponível e há falha explícita registrada. Para clientes com `message_id`, a certeza é de envio pelo sistema; isso não é a mesma coisa que confirmação de leitura pelo cliente.


---

## Ação executada — 2026-04-27

Por solicitação do Renato, os **26 clientes com falha confirmada de envio e sem registro posterior de envio bem-sucedido** tiveram o status alterado no FamaChat de `Não Respondeu` para `Sem Atendimento`.

Ação executada com segurança:

- filtro aplicado: `broker_id=35`, IDs auditados e status anterior exatamente `Não Respondeu`;
- total alvo: 26;
- total atualizado: 26;
- anotações inseridas no CRM/FamaChat: 26;
- nenhum WhatsApp foi disparado nesta ação.

Validação pós-ação: os 26 clientes constam com status `Sem Atendimento`.


## Auditoria dos 15 clientes mantidos em Sem Atendimento após recuperação — 2026-04-27

Recorte: clientes do batch `reno_recuperacao_20260427_2min` que permaneceram em `Sem Atendimento` após a fila de recuperação dos 26.

Resultado geral:
- 15 clientes permaneceram em `Sem Atendimento`.
- Nenhum desses 15 recebeu novo WhatsApp automático nesta recuperação.
- A decisão de não envio foi deliberada por revalidação de segurança, não por parada da fila.
- Não houve correspondência desses 15 com usuários internos ativos pelo telefone.

Distribuição por motivo principal:
- 6/15 — duplicidade, reentrada por SLA Cascata ou histórico anterior de contato/atendimento no mesmo telefone.
- 5/15 — origem interna/autolead (`lead_automatico`) marcada no CRM.
- 3/15 — WhatsApp não utilizável ou não confirmado no CRM.
- 1/15 — origem interna/autolead somada a duplicidade/continuidade operacional em outros cadastros.

Detalhamento por cliente:

1. 10967 — Flaviahair Especialista em Mechas e Loiro
   - Motivo principal: reentrada por SLA Cascata com duplicidade.
   - Evidência: mesmo telefone em cadastros anteriores; cadastro original com tentativas manuais de 2º/3º contato.
   - Decisão: não enviar primeiro contato automático para evitar duplicidade.

2. 10970 — Maria Eduarda
   - Motivo principal: origem `lead_automatico`.
   - Evidência: CRM/source_details marcou origem como lead automático; também havia duplicidade posterior por SLA Cascata.
   - Decisão: suprimir envio automático.

3. 10971 — Bruno Sávio
   - Motivo principal: duplicidade/ambiguidade operacional.
   - Evidência: outro cadastro do mesmo telefone em `Em Atendimento`, com notas de tratativa comercial sobre valores.
   - Decisão: não enviar novo primeiro contato automático.

4. 10974 — Grazyelly Macêdo
   - Motivo principal: duplicidade com atendimento em andamento.
   - Evidência: mesmo telefone em outros cadastros; um deles em `Em Atendimento`, com notas de tentativa de marcar visita.
   - Decisão: suprimir para evitar conflito com corretor/atendimento existente.

5. 10975 — Andre Luiz duca
   - Motivo principal: duplicidade com histórico de contato manual já iniciado.
   - Evidência: cadastros anteriores arquivados com notas de atendimento/contato manual e reentrada por duplicação.
   - Decisão: não enviar primeiro contato automático.

6. 10976 — Silvio Humberto Silva
   - Motivo principal: histórico anterior de 2º/3º contato.
   - Evidência: mesmo telefone em cadastros anteriores, com notas de 2º e 3º contato por outro corretor.
   - Decisão: preservar sem novo WhatsApp automático.

7. 10979 — Júlia
   - Motivo principal: histórico anterior no mesmo telefone com contexto comercial.
   - Evidência: cadastros anteriores tinham notas como envio de vídeo decorado, 3ª tentativa de contato e informação comercial/viabilidade.
   - Decisão: não repetir primeiro contato automático.

8. 10987 — Thais Ravazio
   - Motivo principal: sem WhatsApp utilizável no CRM.
   - Evidência: `haswhatsapp=false` e sem JID utilizável; duplicatas anteriores indicavam número inexistente/caixa postal.
   - Decisão: não enviar WhatsApp.

9. 10991 — Rodrigo Moreira
   - Motivo principal: WhatsApp não confirmado.
   - Evidência: `haswhatsapp=false`, embora houvesse JID cadastrado; duplicata por SLA Cascata.
   - Decisão: suprimir até validação do contato.

10. 10993 — Luis
   - Motivo principal: sem WhatsApp utilizável confirmado.
   - Evidência: `haswhatsapp=false` e sem JID; duplicatas anteriores com notas de ausência de WhatsApp/número inexistente.
   - Decisão: não enviar WhatsApp.

11. 10996 — Sibely Cortes
   - Motivo principal: origem interna/autolead.
   - Evidência: origem `lead_automatico`; múltiplas duplicatas históricas, incluindo retorno várias vezes e não resposta.
   - Decisão: suprimir envio automático.

12. 10997 — Santiago Derson
   - Motivo principal: origem interna/autolead.
   - Evidência: origem `lead_automatico`; duplicata posterior por SLA Cascata.
   - Decisão: suprimir envio automático.

13. 10998 — Carmen Vicente Santos Vicente Santos
   - Motivo principal: origem interna/autolead.
   - Evidência: origem `lead_automatico`; grande volume de duplicatas históricas e notas antigas de baixa viabilidade/não resposta.
   - Decisão: suprimir envio automático.

14. 10999 — Guilherme Mendes
   - Motivo principal: origem interna/autolead + duplicidade/continuidade operacional.
   - Evidência: origem `lead_automatico`; duplicatas anteriores com resposta anterior, sumiço e encaminhamento posterior para outro corretor.
   - Decisão: não enviar primeiro contato automático para evitar duplicidade.

15. 11000 — Wueverton Lima
   - Motivo principal: origem interna/autolead.
   - Evidência: origem `lead_automatico`; duplicata posterior por SLA Cascata.
   - Decisão: suprimir envio automático.

Conclusão operacional:
- Os 15 não ficaram em `Sem Atendimento` por erro de execução da fila.
- Eles foram bloqueados por critérios de segurança: duplicidade/histórico anterior, origem interna/autolead ou ausência de WhatsApp confiável.
- Próximo passo recomendado: revisão humana/limpeza de base. Não reenviar automaticamente sem tratar a causa de cada grupo.
