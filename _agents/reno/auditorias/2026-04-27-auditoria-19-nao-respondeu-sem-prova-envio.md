---
created: '2026-04-27'
owner: reno
tags:
  - reno
  - auditoria
  - nao-respondeu
  - whatsapp
  - primeiro-contato
type: journal
updated: '2026-04-27'
---
# Auditoria dos 19 clientes `Não Respondeu` sem certeza de primeiro contato — 2026-04-27

## Objetivo
Confirmar, dentro do possível pelas evidências operacionais, se os 19 clientes em `Não Respondeu` sem prova forte receberam ou não receberam o primeiro contato do Reno.

## Fontes verificadas
- CRM (`clientes`).
- Notas do CRM (`clientes_id_anotacoes`).
- Eventos de webhook `cliente.created` (`sistema_webhook_events`).
- Estado atual do bridge WhatsApp: conectado, fila 0.

## Conclusão executiva
Não é correto afirmar que todos os 19 receberam o primeiro contato do Reno.

Classificação final:
- 1 com primeiro contato/abertura confirmada por nota CRM.
- 1 com mensagens de resgate/repescagem confirmadas, mas não como primeira abertura padrão do Reno.
- 5 com evidência objetiva de não envio/supressão/falha.
- 12 com webhook aceito ou cadastro válido, mas sem prova operacional de envio efetivo.

## Cliente a cliente

### Recebeu primeiro contato confirmado
- 10933 — Flávio: nota em 2026-04-22 informa “Abertura enviada via WhatsApp após webhook...”.

### Recebeu mensagens posteriores/resgate, não primeira abertura padrão
- 10659 — Davi Maia: notas registram Resgate 1, 2, 3 e Repescagem 1 enviados. Não há registro claro de primeira abertura padrão do Reno.

### Não recebeu primeiro contato Reno / envio não realizado confirmado
- 10969 — Tamires Lima: nota indica webhook suprimido por `lead_automatico`; não houve envio.
- 10977 — Murilo Damasceno: nota indica envio de primeiro contato suprimido por histórico/duplicidade.
- 10959 — Michele Oliveira: webhook expirou com `fetch failed`; não há envio posterior registrado.
- 10570 — nome como telefone: nota indica primeira mensagem recebida com cobrança/fora do escopo; reenvio suprimido por ambiguidade. Não há primeiro contato Reno confirmado.
- 10657 — Lead Garden Sul: cadastro manual após mensagem que ficou fora do fluxo automático; não há primeira abertura Reno confirmada.

### Sem prova operacional de envio efetivo
- 10931 — Vitória Oliveira: webhook success/runId, mas sem nota de envio; reenvio depois foi suprimido.
- 10934 — Mateus Silva: webhook success/runId, mas sem nota de envio; reenvio depois foi suprimido.
- 11001 — Biiahsiilva: webhook aceito, sem notas CRM.
- 11009 — Diasalvez111q1~qqq: webhook aceito, sem notas CRM.
- 11013 — Black in style: webhook aceito, sem notas CRM.
- 11014 — Yasmin Mascarenhas: webhook aceito, sem notas CRM.
- 11017 — Claudia Martins Ferreira: webhook aceito, sem notas CRM.
- 11019 — Andreia Marson: webhook aceito, sem notas CRM.
- 11021 — Claudia Rosângela: webhook aceito, sem notas CRM.
- 10714 — João pedro: sem JID confiável e sem webhook/nota de envio.
- 10806 — Eliane: sem JID confiável, duplicata/arquivamento anterior e sem envio confirmado.
- 10995 — Julia santos: haswhatsapp=false, sem JID e sem nota de envio, apesar de webhook aceito.

## Interpretação
Status `Não Respondeu` não pode ser usado como prova de envio. Nestes 19, há mistura de: envio confirmado isolado, mensagens de resgate, supressões, webhook aceito sem resultado de envio e contatos sem JID confiável.

## Recomendação
Antes de colocar estes 19 em cadência de reengajamento, separá-los:
1. Reengajamento: 10933 e possivelmente 10659, com cuidado por já ter recebido resgates.
2. Recuperação/primeiro contato: os casos sem prova de envio, após revalidação de WhatsApp/JID e duplicidade.
3. Não automatizar sem validação: casos sem JID confiável, duplicados ou ambíguos.
