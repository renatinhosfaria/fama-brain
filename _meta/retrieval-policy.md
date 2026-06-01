---
created: '2026-05-13'
owner: renato
schema_version: 1
source: agent-generated
provenance: mcp-obsidian-audit
status: active
tags:
  - meta
  - retrieval
  - indexacao
  - reno
  - vault
type: concept
updated: '2026-06-01'
---
# Política de retrieval e indexação operacional

## Objetivo

Esta política orienta quais fontes o Reno deve priorizar ao recuperar contexto do vault `fama-brain`, especialmente após a migração Reno-first e a remoção do namespace `_agents/` como destino ativo.

## Hierarquia de fontes

Ao responder ou decidir onde escrever, usar a seguinte ordem:

1. **Decisões aprovadas** em `_decisions/`.
2. **Runbooks atuais** em `_runbooks/`.
3. **READMEs locais** da pasta de destino.
4. **Hubs** em `_hubs/` para navegação e descoberta.
5. **Entidades** em `_entities/` para fatos duráveis.
6. **Contexto compartilhado** em `_shared/context/` para Fama, crédito, produtos e metodologia.
7. **Journal recente** em `_journal/reno/` para eventos datados e histórico curado.
8. **Projetos** em `_projects/` quando a pergunta envolver iniciativa, arquitetura ou trabalho em andamento.
9. **Meta** em `_meta/` para schema, inventário, migração, avaliação e estado técnico.
10. **Docs históricos/specs/plans** somente quando a pergunta for sobre histórico de implementação ou auditoria.

## Fontes que não devem ser destino ativo

- `_agents/` é namespace legado/inativo.
- Caminhos `_agents/reno/...` em linhas de proveniência, manifestos ou inventários são evidência histórica.
- Nenhuma resposta operacional deve instruir nova escrita em `_agents/`.

## Tratamento de `docs/superpowers/**`

`docs/superpowers/**` contém specs e planos de implementação. Esses arquivos podem preservar comandos, caminhos antigos e decisões intermediárias.

Usar como:

- histórico de design;
- auditoria de implementação;
- evidência de por que uma mudança foi feita;
- fonte secundária quando não houver runbook/decisão atual.

Não usar como:

- rota operacional padrão;
- fonte superior a decisões aprovadas;
- fonte superior a runbooks atuais;
- justificativa para recriar `_agents/`.

## Tratamento de manifestos de migração

Manifestos e inventários de migração em `_meta/` são fontes de rastreabilidade.

Usar para:

- saber de onde uma nota veio;
- auditar cobertura de migração;
- entender status histórico;
- classificar proveniência.

Não usar para:

- definir destino ativo se houver decisão/runbook mais recente;
- reabrir namespace legado;
- apagar histórico sem autorização.

## Tratamento de `_journal/reno/`

O journal é fonte de eventos datados, mas não substitui entidade canônica nem CRM.

Usar journal para:

- reconstruir histórico operacional;
- encontrar evidência de uma ação;
- entender sequência temporal;
- decidir se um fato já amadureceu para `_entities/`.

Não usar journal para:

- afirmar status operacional atual sem CRM/FamaChat;
- duplicar fatos duráveis que já foram consolidados;
- criar decisão sem aprovação.

## Tratamento de `_entities/`

Entidades são fonte de fatos duráveis e perfis consolidados.

Antes de criar ou atualizar entidade:

- buscar por nome;
- buscar por telefone/ID quando disponível;
- buscar aliases;
- verificar links para journal;
- pedir confirmação quando houver ambiguidade.

## Status e confiança

- `active`: pode ser usado conforme hierarquia de fontes.
- `draft`: contexto auxiliar; não usar como regra sem revisão.
- `superseded`: histórico; procurar decisão/nota substituta.
- `archived`: histórico; não usar como regra ativa.
- `source: imported`: exigir atenção à migração e ao contexto.
- `source: agent-generated`: não tratar como ground truth isolado sem verificação.

## Segurança

Nunca usar retrieval para expor ou preservar:

- tokens;
- senhas;
- API keys;
- connection strings;
- payload bruto;
- logs técnicos completos;
- raciocínio interno.

Se dado sensível aparecer, substituir por `[REDACTED]`.

## Golden queries

A qualidade do retrieval deve ser avaliada com [[golden-queries]]. Quando uma mudança de schema, política ou indexação ocorrer, repetir as golden queries principais e registrar resultado em `_meta/` ou `_journal/reno/`, conforme o tipo da avaliação.
