---
author_agent: brain
created: '2026-05-13'
owner: renato
provenance: mcp-obsidian-audit
schema_version: 1
source: agent-generated
status: active
tags:
  - meta
  - retrieval
  - indexacao
  - reno
  - vault
  - brain
  - multiagent
type: concept
updated: '2026-06-03'
---
# Política de retrieval e indexação operacional

## Objetivo

Esta politica orienta quais fontes agentes devem priorizar ao recuperar contexto do vault `fama-brain`, especialmente apos a evolucao para multiagent por territorios e a remocao do namespace `_agents/` como destino ativo.

## Regra curta para perguntas normativas

Quando a pergunta for normativa — por exemplo “onde registrar?”, “pode fazer?”, “qual regra vale?”, “quem é dono?”, “qual política seguir?”, “o que fazer após escrever?” — o agente deve preferir fontes canônicas antes de exemplos recentes.

Ordem resumida para perguntas normativas:

1. decisões aprovadas;
2. runbooks atuais;
3. READMEs locais da pasta de destino;
4. políticas em `_meta/`, incluindo [[schema]], [[retrieval-policy]] e [[pii-redaction-policy]];
5. hubs em `_hubs/` para navegação;
6. journals apenas como evidência histórica ou exemplo, não como regra principal.

Se uma busca semântica retornar journal recente antes de política/runbook/decisão, o agente deve abrir também a fonte normativa candidata e basear a resposta nela. Journal recente pode explicar por que uma regra foi aplicada, mas não deve substituir a regra atual.

## Hierarquia de fontes

Ao responder ou decidir onde escrever, usar a seguinte ordem:

1. **Decisões aprovadas** em `_decisions/`.
2. **Runbooks atuais** em `_runbooks/`.
3. **READMEs locais** da pasta de destino.
4. **Meta/políticas** em `_meta/` para schema, inventário, migração, avaliação, estado técnico, retrieval e segurança.
5. **Hubs** em `_hubs/` para navegação e descoberta.
6. **Entidades** em `_entities/` para fatos duráveis.
7. **Contexto compartilhado** em `_shared/context/` para Fama, crédito, produtos e metodologia.
8. **Projetos** em `_projects/` quando a pergunta envolver iniciativa, arquitetura ou trabalho em andamento.
9. **Journal recente** em `_journal/{agent_id}/` para eventos datados e historico curado do agente responsavel.
10. **Docs históricos/specs/plans** somente quando a pergunta for sobre histórico de implementação ou auditoria.

Observação: `_meta/` aparece cedo na hierarquia porque perguntas sobre schema, inventário, golden queries, PII, políticas e indexação devem recuperar fontes normativas de governança antes de exemplos operacionais.

## Tratamento de territorios por agente

Quando a pergunta envolver um agente especifico, priorizar primeiro o territorio desse agente dentro da hierarquia normal de fontes.

Exemplos:

- Pergunta sobre atendimento ou follow-up do Reno: priorizar [[reno-hub]], `_runbooks/reno-*.md` e `_journal/reno/`.
- Pergunta sobre campanha, calendario ou comunicacao de Marketing: priorizar [[marketing-hub]], `_runbooks/marketing-*.md`, `_projects/marketing/`, `_journal/marketing/` e `_shared/context/marketing/`.
- Pergunta sobre curadoria central, organização do vault, PII, hubs, consolidação ou retrieval: priorizar [[brain-hub]], [[brain-vault-curadoria]], `_meta/`, [[_shared/context/AGENTS]] e decisões do Brain.
- Pergunta sobre entidade compartilhada: consultar `_entities/` e depois eventos dos agentes relacionados.

Um agente pode consultar e linkar territorio de outro agente, mas nao deve editar o territorio primario de outro agente sem confirmacao do Renato.

## Fontes que não devem ser destino ativo

- `_agents/` é namespace legado/inativo.
- Caminhos `_agents/reno/...` em linhas de proveniência, manifestos ou inventários são evidência histórica.
- Nenhuma resposta operacional deve instruir nova escrita em `_agents/`.
- Territorios ativos de agentes vivem em `_journal/{agent_id}/`, `_projects/{agent_id}/`, `_runbooks/{agent_id}-*.md`, `_hubs/{agent_id}-hub.md` e decisoes nomeadas por agente em `_decisions/`.

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

## Tratamento de `_journal/{agent_id}/`

O journal é fonte de eventos datados, mas não substitui entidade canônica, política canônica nem CRM.

Usar journal para:

- reconstruir histórico operacional;
- encontrar evidência de uma ação;
- entender sequência temporal;
- decidir se um fato já amadureceu para `_entities/`;
- registrar logs curatoriais e resultados de avaliação.

Não usar journal para:

- afirmar status operacional atual sem CRM/FamaChat;
- definir destino de escrita quando houver runbook, README local, schema ou política;
- substituir [[pii-redaction-policy]], [[schema]] ou outra política canônica;
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
- `source: human-curated`: preferir quando conflitar com conteúdo agent-generated de mesma classe e atualidade.

## Segurança

Nunca usar retrieval para expor ou preservar:

- tokens;
- senhas;
- API keys;
- connection strings;
- telefones completos;
- WhatsApp JIDs;
- e-mails de clientes;
- CPF ou identificador equivalente;
- payload bruto;
- logs técnicos completos;
- raciocínio interno.

Se dado sensível aparecer, substituir por marcador específico de redaction conforme [[pii-redaction-policy]]. Agentes podem usar `client_id`, `broker_id`, entidade canônica, data absoluta e wikilinks para preservar rastreabilidade sem expor PII.

O scanner oficial para auditoria read-only e `scan_sensitive_data` no MCP. Relatórios derivados devem registrar apenas contagens e exemplos redigidos, como [[pii-scan-2026-06-02]].

## Golden queries

A qualidade do retrieval deve ser avaliada com [[golden-queries]]. Quando uma mudança de schema, política ou indexação ocorrer, repetir as golden queries principais e registrar resultado em `_meta/` ou `_journal/{agent_id}/` conforme o tipo da avaliacao e o agente responsavel.

Para avaliação de regressão, incluir consultas literais curtas. Se a consulta literal falhar mas a consulta expandida passar, registrar como lacuna de ranking/recall e adicionar aliases ou trechos explícitos na fonte normativa canônica.
