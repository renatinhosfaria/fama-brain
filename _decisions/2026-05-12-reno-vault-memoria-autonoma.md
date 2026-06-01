---
created: '2026-05-12'
decided_by: Renato Faria
owner: reno
schema_version: 1
related:
  - '[[reno-second-brain-governance]]'
  - '[[reno-vault-operacao]]'
  - '[[reno-hub]]'
source: human-curated
status: active
decision_state: approved
provenance: human-approved
tags:
  - reno
  - vault
  - second-brain
  - autonomy
  - skills
type: decision
updated: '2026-06-01'
---
# Decisão: memória autônoma do Reno no vault

## Decisão

Renato aprovou a Opção C: Reno pode operar o `fama-brain` como segunda memória autônoma com guardrails.

Na prática, o Reno pode atualizar:

- `_journal/reno/` para eventos, auditorias e registros curados;
- `_entities/` para fatos duráveis confirmados;
- `_runbooks/` para procedimentos reutilizáveis;
- `_hubs/` para navegação e MOCs;
- `_shared/context/` para contexto institucional, comercial ou conceitual da Fama;
- `_decisions/` apenas quando houver aprovação explícita;
- `_meta/` somente com aprovação para schema, ownership ou mudanças estruturais.

## Fonte de verdade

CRM/FamaChat continua sendo a fonte operacional de verdade para cliente, lead, broker, status, appointment, visitas, vendas, notas operacionais e `meta_data.reno_followup`.

O vault é memória curada e contexto recuperável. Ele não substitui o CRM e não deve ser usado para decidir estado operacional sem validação no FamaChat.

## Guardrails

- Não recriar `_agents/` como destino ativo.
- Não salvar payload bruto, logs técnicos completos, segredos ou raciocínio interno.
- Toda escrita relevante precisa ter fonte rastreável e read-back via MCP.
- Fato durável precisa ser confirmado; inferência deve ficar marcada como inferência ou permanecer no journal.
- Decisão canônica exige aprovação explícita de Renato.

## Referências

- `docs/superpowers/specs/2026-05-12-reno-vault-memoria-autonoma-design.md`
- `docs/superpowers/plans/2026-05-12-reno-vault-memoria-autonoma.md`
