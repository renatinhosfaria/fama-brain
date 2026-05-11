---
schema_version: 1
type: journal
status: active
created: 2026-04-29
updated: 2026-04-29
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: medium
mentions_entity: ["[[reno]]"]
related: ["[[reno-hub]]"]
tags: [journal, auditoria, operacional]
---
# Auditoria — atendimentos WhatsApp virando documentos no vault

## Estado atual

Esta nota preserva evidencia historica de caminhos legados em `_agents/reno/`. Os destinos canonicos atuais sao `_entities/` para entidades consolidadas, `_journal/reno/` para logs operacionais datados, `_runbooks/` para procedimentos duraveis e `_decisions/` para decisoes atomicas.

Vínculos: [[reno]], [[reno-operacao-crm-webhook]], [[reno-second-brain-governance]].
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

## Conclusão

Os atendimentos de WhatsApp do Reno estão sim virando documentos no vault, especialmente os atendimentos/follow-ups executados em 2026-04-29.

Porem, a implementacao da epoca ainda nao respeitava totalmente a governanca entao definida no proprio vault. A regra antiga dizia que o documento unico de cliente ficava em:

`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

Essa regra e historica e esta superada. Na arquitetura atual, novos registros de atendimento devem usar `_entities/` e `_journal/reno/`; procedimentos duraveis ficam em `_runbooks/`; decisoes ficam em `_decisions/`.

Na fonte original, este trecho deveria listar os destinos observados, mas a lista nao foi preenchida.
Por isso, esta nota preserva a conclusao como evidencia historica sem reconstruir caminhos nao registrados.

Isso significa que a escrita esta funcionando, mas o destino esta parcialmente errado; a lista de destinos estava ausente na origem migrada, e ainda ha risco de duplicidade ou fragmentacao de historico.

## Casos críticos ainda pendentes da auditoria anterior

A auditoria anterior já apontava casos com histórico comercial sem documento único adequado. A busca atual confirmou que alguns continuam sem documento próprio rastreável por cliente, especialmente:

- 10986 — Andreia Carvalho: conversa comercial relevante, várias notas CRM, mas sem documento de atendimento próprio localizado; aparece apenas em auditorias.
- 10928 — Elias Mourão: status `Em Atendimento`, follow-up de resgate em 2026-04-28, sem documento localizado por ID/nome.
- 10930 — Cássio Coimbra: status `Em Atendimento`, follow-up de resgate em 2026-04-28, sem documento localizado por ID/nome.

## Diagnostico na regra antiga (superado)

1. O fluxo recente de repescagem/follow-up está criando documentos no vault.
2. O fluxo nao estava consolidando tudo no documento unico oficial de atendimento da regra antiga.
4. Alguns atendimentos comerciais mais ricos e anteriores ao lote atual continuam sem documento individual adequado.
5. O CRM segue sendo a fonte mais completa para estado e histórico operacional.

## Recomendacao original (superada)

- Corrigir o writer/worker para, pela regra antiga, escrever em `_agents/reno/atendimentos/{client_id}-{slug}.md`.
- Priorizar reconciliação de conversas com valor comercial: 10986, 10928 e 10930.
- Manter o CRM como fonte de verdade e usar o vault como histórico curado, evitando duplicidade entre pastas.

Esta recomendacao e historica e nao e instrucao vigente. Na arquitetura atual, novos registros de atendimento devem usar `_entities/` e `_journal/reno/`; procedimentos duraveis ficam em `_runbooks/`; decisoes ficam em `_decisions/`.

## Evidencia original

Origem migrada: `_agents/reno/auditorias/2026-04-29-auditoria-whatsapp-para-vault.md`.
