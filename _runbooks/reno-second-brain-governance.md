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
tags: [runbook, second-brain, governanca, vault]
related: ["[[reno-hub]]", "[[schema]]", "[[_shared/context/fama-overview]]"]
---
# Runbook: Reno Second Brain Governance

## Regra de destino

O segundo cerebro do Reno usa areas globais por tipo de conhecimento.

- `_entities/`: perfil consolidado de pessoa, lead, cliente, corretor, imovel, empreendimento, construtora ou organizacao.
- `_journal/reno/`: evento datado, atendimento, auditoria, rotina, log, plano operacional ou aprendizado.
- `_runbooks/`: procedimento, playbook, politica operacional e modo de trabalho.
- `_decisions/`: decisao duravel que altera comportamento futuro.
- `_meta/`: schema, mapas, governanca e registros de migracao.

## Regra obrigatoria para documentos de clientes

Todo conteudo envolvendo cliente ou lead atendido pelo Reno deve seguir o modelo duplo:

- fatos duraveis e perfil consolidado na entidade correspondente em `_entities/`;
- historico, acao, resultado e proximo passo em evento datado em `_journal/reno/`.

A entidade nao deve virar dump cronologico. O journal nao deve substituir a verdade consolidada da entidade.

## Papel das camadas

### Memoria persistente

Fatos pequenos, duraveis e de alto reaproveitamento: preferencias do Renato, convencoes criticas e regras estaveis.

### Vault

Contexto estruturado, historico curado, decisoes, journals, perfis e conhecimento operacional reutilizavel.

### CRM

Fonte de verdade para estado atual do lead, broker, status comercial, historico operacional e acoes executadas.

## Politica de escrita

O Reno deve criar ou atualizar registros sempre que houver acao ou decisao operacional envolvendo cliente existente do Reno: primeiro contato, envio, falha de envio, supressao relevante, resposta, diagnostico, objecao, preferencia, agendamento, mudanca de status ou proximo passo.

Nao escrever dump bruto de webhook, log tecnico completo, erro transitorio sem aprendizado, conversa inteira sem curadoria, informacao redundante sem valor futuro ou detalhe descartavel.

## Hierarquia antes de escrever

1. CRM para verdade operacional atual.
2. `_entities/` para contexto consolidado e retomada futura do cliente.
3. `_journal/reno/` para o evento operacional datado.
4. Memoria persistente apenas para convencoes pequenas e duraveis.
5. `_runbooks/` e `_shared/context/` para playbooks, politicas e inteligencia consultiva geral.

## Gatilhos de escrita em atendimento

- primeiro contato ou reenvio;
- falha definitiva de WhatsApp;
- supressao relevante de cliente dentro do escopo;
- primeira resposta do cliente;
- diagnostico de necessidade, decisao ou viabilidade;
- objecao ativa;
- preferencia de regiao, imovel ou condicao de compra;
- proximo passo definido;
- visita presencial agendada;
- handoff para corretor ou operacao humana;
- mudanca de status no CRM.

## Templates minimos

- Entidade: perfil consolidado, origem, interesse atual, diagnostico, trava principal, historico resumido e links operacionais.
- Journal: data, contexto, acao tomada, resultado, proximo passo e evidencia quando necessario.
- Decision: mudanca de criterio, racional e impacto esperado.
- Runbook: gatilho, passos, limites, fontes e verificacao.

## Manutencao

Revisao semanal enxuta:

- entidades sem ID externo quando o ID estiver disponivel;
- journals repetitivos ou maduros para decisao;
- contextos duplicados;
- notas que ninguem consultaria;
- links quebrados ou destinos obsoletos.

Poda nao e apagar memoria importante; e aumentar densidade de valor.

## Regra final

O segundo cerebro do Reno deve ficar pequeno o bastante para ser util e rico o bastante para melhorar decisao. Para clientes, utilidade significa entidade consolidada mais evento operacional rastreavel.
