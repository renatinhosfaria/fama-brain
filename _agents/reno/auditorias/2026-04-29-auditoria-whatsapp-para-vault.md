---
type: journal
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
tags:
  - reno
  - auditoria
  - obsidian
  - vault
  - whatsapp
  - rastreabilidade
title: Auditoria — atendimentos WhatsApp virando documentos no vault
---
# Auditoria — atendimentos WhatsApp virando documentos no vault

Data da verificação: 2026-04-29.

## Escopo verificado

Fontes consultadas:
- CRM/FamaChat via `mcp-postgres`, usando `clientes` e `clientes_id_anotacoes` como fonte operacional.
- Vault via `mcp-obsidian`, dentro de `_agents/reno/`.

Critério CRM usado:
- clientes com `broker_id = 35`;
- notas relevantes envolvendo Reno, WhatsApp, mensagem, resposta, repescagem, visita ou agendamento.

## Resultado

### Últimas 48h

- 94 clientes Reno tiveram nota relevante no CRM nas últimas 48h.
- 161 notas relevantes foram encontradas nesse período.
- Primeira nota considerada: 2026-04-27 14:43:35 UTC.
- Última nota considerada: 2026-04-29 13:38:09 UTC.

### Hoje — 2026-04-29

- 59 clientes Reno tiveram nota relevante no CRM hoje.
- Foi encontrada escrita recente no vault para todos os 59 clientes de hoje, mas a escrita não está padronizada no caminho oficial.

Distribuição observada no vault:
- `_agents/reno/clientes/`: 56 documentos recentes de clientes, usados principalmente pela repescagem/follow-up.
- `_agents/reno/cliente/`: 1 documento recente (`10945-hilton-oliveira-leite.md`), em pasta singular não padronizada.
- `_agents/reno/atendimentos/`: há documentos corretos/recentes para alguns casos de hoje, como `11012`, `11083`, `11084`, `11085`, `11110`, `cliente-10951`, `cliente-10992`, `cliente-11004`, `cliente-11010`.

## Conclusão

Os atendimentos de WhatsApp do Reno estão sim virando documentos no vault, especialmente os atendimentos/follow-ups executados em 2026-04-29.

Porém, a implementação atual ainda não respeita totalmente a governança definida no próprio vault. A regra oficial diz que o documento único de cliente deve ficar em:

`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

Na prática, a automação recente está criando muitos documentos em:

`_agents/reno/clientes/{client_id}-{slug}.md`

E pelo menos um caso em:

`_agents/reno/cliente/{client_id}-{slug}.md`

Isso significa que a escrita está funcionando, mas o destino está parcialmente errado e ainda há risco de duplicidade ou fragmentação de histórico.

## Casos críticos ainda pendentes da auditoria anterior

A auditoria anterior já apontava casos com histórico comercial sem documento único adequado. A busca atual confirmou que alguns continuam sem documento próprio rastreável por cliente, especialmente:

- 10986 — Andreia Carvalho: conversa comercial relevante, várias notas CRM, mas sem documento de atendimento próprio localizado; aparece apenas em auditorias.
- 10928 — Elias Mourão: status `Em Atendimento`, follow-up de resgate em 2026-04-28, sem documento localizado por ID/nome.
- 10930 — Cássio Coimbra: status `Em Atendimento`, follow-up de resgate em 2026-04-28, sem documento localizado por ID/nome.

## Diagnóstico

1. O fluxo recente de repescagem/follow-up está criando documentos no vault.
2. O fluxo não está consolidando tudo no documento único oficial de atendimento.
3. A pasta `_agents/reno/clientes/` virou um destino operacional real, apesar de a governança apontar `_agents/reno/atendimentos/` como destino oficial.
4. Alguns atendimentos comerciais mais ricos e anteriores ao lote atual continuam sem documento individual adequado.
5. O CRM segue sendo a fonte mais completa para estado e histórico operacional.

## Recomendação

- Corrigir o writer/worker para escrever sempre em `_agents/reno/atendimentos/{client_id}-{slug}.md`.
- Migrar ou consolidar os documentos de `_agents/reno/clientes/` e `_agents/reno/cliente/` para `_agents/reno/atendimentos/`.
- Priorizar reconciliação de conversas com valor comercial: 10986, 10928 e 10930.
- Manter o CRM como fonte de verdade e usar o vault como histórico curado, evitando duplicidade entre pastas.
