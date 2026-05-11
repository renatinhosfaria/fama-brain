---
schema_version: 1
type: runbook
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
procedure_owner: "[[reno]]"
trigger: manual
mentions_entity: ["[[reno]]"]
tags: [runbook, vault, registro, governanca]
related: ["[[reno-hub]]", "[[reno-second-brain-governance]]", "[[schema]]"]
---
# Runbook: Reno Registro Vault

## Objetivo

Manter contexto unico, auditavel e util para cada atendimento do Reno no vault.

O registro deve permitir que o Reno retome a conversa sabendo origem, historico, diagnostico, decisoes, objecoes e proximo passo sem depender apenas da memoria curta da conversa atual.

## Tabela de roteamento aprovada

| Conteudo | Destino |
| --- | --- |
| Fato duravel sobre pessoa, lead, imovel, empreendimento ou organizacao | `_entities/` |
| Evento operacional datado, envio, falha, resposta, auditoria ou follow-up | `_journal/reno/` |
| Procedimento, playbook, politica operacional ou modo de trabalho | `_runbooks/` |
| Decisao que muda comportamento futuro | `_decisions/` |
| Schema, mapa, politica do vault ou ledger de migracao | `_meta/` |
| Contexto compartilhado da Fama ou credito imobiliario | `_shared/context/` |

## Quando criar ou atualizar

Criar ou atualizar registros sempre que houver cliente existente do Reno e qualquer uma destas situacoes:

1. primeiro contato;
2. reenvio;
3. falha de envio;
4. supressao operacional relevante;
5. primeira resposta;
6. qualificacao ou diagnostico;
7. objecao ou preferencia importante;
8. proximo passo definido;
9. visita presencial agendada;
10. handoff;
11. mudanca de status no CRM;
12. informacao util para retomada futura.

## Frontmatter minimo

Entidade:

```yaml
schema_version: 1
type: entity
status: active
created: YYYY-MM-DD
updated: YYYY-MM-DD
source: imported
author_agent: reno
mentions_entity: ["[[reno]]"]
tags: [entity, lead, atendimento]
```

Journal:

```yaml
schema_version: 1
type: interaction
status: active
created: YYYY-MM-DD
updated: YYYY-MM-DD
source: imported
author_agent: reno
participants: ["[[lead]]", "[[reno]]"]
mentions_entity: ["[[lead]]", "[[reno]]"]
tags: [interaction, atendimento, whatsapp]
```

## Conteudo minimo da entidade

- identificacao do cliente e IDs externos quando disponiveis;
- origem do lead;
- status comercial atual observado no CRM;
- interesse atual;
- diagnostico de contexto, necessidade, decisao e viabilidade quando houver;
- objecoes ativas;
- historico resumido;
- links para journals relevantes.

## Conteudo minimo do journal

- data do evento;
- acao tomada;
- resultado;
- proximo passo registrado;
- evidencias ou origem quando necessario;
- entidades envolvidas.

## Fluxo unico

1. Validar o cliente no CRM.
2. Confirmar escopo Reno quando aplicavel (`broker_id=35`).
3. Localizar entidade canonica em `_entities/` por nome, alias e IDs externos.
4. Criar entidade se nao existir e o lead for identificavel.
5. Atualizar entidade com fatos duraveis, sem duplicar historico bruto.
6. Criar journal datado em `_journal/reno/` para a acao ou decisao operacional.
7. Registrar no CRM a decisao operacional e o resumo relevante.
8. Se WhatsApp/status/nota CRM ja foram concluidos e o vault falhar, nao reenviar WhatsApp; registrar falha no CRM para reconciliacao.

## Regra de migracao

Se aparecer documento de cliente em caminho antigo ou alternativo, migrar para o modelo duplo:

1. consolidar fatos duraveis na entidade canonica;
2. preservar evento operacional em `_journal/reno/`;
3. manter evidencia curta quando houver risco de perda de nuance;
4. evitar criar entidade duplicada quando IDs, nome e contexto indicarem a mesma pessoa;
5. marcar ambiguidade quando a deduplicacao nao for segura.

## Nota operacional

O CRM/FamaChat continua sendo a fonte de verdade operacional. A reconciliacao do vault deve reconstruir contexto a partir das notas do CRM quando necessario, mas o resultado final deve seguir a tabela de roteamento aprovada.
