---
schema_version: 1
type: runbook
status: active
created: '2026-06-17'
updated: '2026-06-18'
source: agent-generated
tags:
  - brain
  - curadoria
  - marketing
  - meta-ads
  - handoff
  - ownership
author_agent: brain
owner: brain
title: Brain — handoff de curadoria para Meta Ads / análise diária
procedure_owner: brain
trigger: >-
  Quando journals do Marketing registrarem sinais operacionais recorrentes de
  Meta Ads e o Brain não puder escrever a consolidação canônica no território
  Marketing por ownership ou roteamento MCP.
mentions_entity:
  - brain
  - marketing-hub
  - Meta Ads
  - FamaChat
related:
  - '[[brain-hub]]'
  - '[[marketing-hub]]'
  - '[[_journal/marketing/2026-06-17-meta-ads-consolidado-d-1-2026-06-16]]'
  - '[[_journal/marketing/2026-06-17-meta-ads-parcial-18h-2026-06-17]]'
  - '[[_journal/marketing/2026-06-18-meta-ads-consolidado-d-1-2026-06-17]]'
---
[[brain-hub]] [[marketing-hub]] [[_journal/marketing/2026-06-18-meta-ads-consolidado-d-1-2026-06-17]]

## Função desta nota

Esta é uma nota de handoff curatorial do Brain para as análises recorrentes de Meta Ads da Fama. Ela existe porque os journals do Marketing trazem sinais operacionais importantes e, em rodadas anteriores, a escrita canônica em território de Marketing (`_shared/context/marketing/**` ou `_projects/marketing/**`) foi bloqueada por ownership/roteamento MCP.

Esta nota **não substitui** decisão operacional do Marketing/Renato nem executa alterações em campanhas. Ela preserva síntese transversal e links sob território Brain até existir uma nota canônica Marketing-owned.

## Classificação

- Tipo: runbook/handoff de curadoria interagente.
- Tema: Marketing / Meta Ads / análise diária / performance.
- Estado: ativo como índice temporário de curadoria; não substitui projeto, decisão ou runbook operacional do Marketing.
- Prioridade: média-alta para continuidade, porque alertas recorrentes podem se perder se ficarem apenas em eventos datados sem conexão.

## Fontes curadas

- [[_journal/marketing/2026-06-17-meta-ads-consolidado-d-1-2026-06-16]] — consolidado D-1 de 2026-06-16.
- [[_journal/marketing/2026-06-17-meta-ads-parcial-18h-2026-06-17]] — parcial de 2026-06-17 às 18h.
- [[_journal/marketing/2026-06-18-meta-ads-consolidado-d-1-2026-06-17]] — consolidado D-1 de 2026-06-17, adicionado nesta rodada.

## Estado curado até 2026-06-18

As análises recentes apontam continuidade do mesmo sinal operacional: o resultado zerado em 2026-06-17 não deve ser lido primeiro como problema de criativo, público, CPL ou orçamento. A leitura primária é operacional: as campanhas relevantes estavam pausadas/sem entrega no período analisado.

Leitura curada:

- primeiro separar se a pausa foi intencional ou acidental;
- não otimizar criativo, público ou orçamento antes de confirmar a intenção da pausa;
- se houver retomada autorizada, usar os vencedores do recorte anterior apenas como referência de calibração, não como decisão automática;
- manter a métrica de lead de formulário como primária quando o evento genérico `lead` estiver inflado por outras origens;
- tratar ABERTO como bloco com melhor sinal histórico recente, mas sem converter curadoria em ação automática de mídia.

## Aprendizados reutilizáveis

- **Entrega antes de otimização:** quando os insights do dia voltarem zerados, verificar status efetivo de campanha antes de calibrar criativo, público ou orçamento.
- **Separação de eventos:** journals datados continuam em `_journal/marketing/`; esta nota guarda síntese transversal e links sob território Brain até o Marketing criar um contexto/projeto canônico.
- **Métrica primária:** para campanhas de formulário, priorizar lead de formulário/instant form em vez de evento genérico `lead` quando houver divergência.
- **Leitura por bloco:** ABERTO, LLA e BASE devem ser comparados considerando entrega real e não só gasto nominal.
- **Curadoria não executa mídia:** registrar sinais e conexões não equivale a ativar, pausar, editar orçamento ou recomendar execução sem validação humana/operacional.

## Procedimento de retomada curatorial

1. Se o Marketing criar uma nota canônica em `_projects/marketing/` ou `_shared/context/marketing/`, tratar este handoff como supersedável e linkar a nota do Marketing.
2. Se surgirem novos journals de Meta Ads com o mesmo padrão de campanha pausada/sem entrega, registrar apenas síntese incremental; não duplicar esta nota.
3. Não inferir decisão de ativar, pausar, realocar orçamento ou alterar anúncios a partir desta curadoria. Essa decisão pertence à operação/Marketing/Renato.
4. Quando possível, regularizar o roteamento MCP de `type: project` para projetos territoriais de agente, pois o schema documenta `_projects/{agent_id}/`, mas rodadas anteriores registraram bloqueio de escrita.
5. Em novas curadorias, buscar por `consolidado-d1`, `meta-ads`, `campanhas pausadas`, `lead primário` e `ABERTO/LLA/BASE` para conectar journals incrementais a este handoff.

## Pendências / incertezas

- Confirmar em rotina de Marketing ou operação se a pausa das campanhas foi intencional.
- Ownership já bloqueou escrita de shared context em `_shared/context/marketing/**`; este handoff preserva a síntese sem usar workaround fora do MCP.
- O validador MCP já bloqueou tentativas de criar `type: project` em `_projects/marketing/` e `_projects/active/`, apesar da documentação do schema mencionar projetos territoriais; isso deve ser tratado como pendência de roteamento/helper, não como razão para filesystem fallback.
- Esta curadoria não verificou histórico de status no Meta Ads; ela consolidou o que foi reportado pelos journals Marketing já existentes.
