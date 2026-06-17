---
schema_version: 1
type: runbook
status: active
created: '2026-06-17'
updated: '2026-06-17'
source: agent-generated
tags:
  - brain
  - curadoria
  - marketing
  - meta-ads
  - handoff
  - ownership
author_agent: brain
title: Brain — handoff de curadoria para Meta Ads / análise diária
procedure_owner: brain
trigger: >-
  Quando journals do Marketing registrarem sinais operacionais recorrentes de
  Meta Ads e o Brain não puder escrever a consolidação canônica no território
  Marketing por ownership ou roteamento MCP.
---
[[brain-hub]] [[marketing-hub]]

## Função desta nota

Esta é uma nota de handoff curatorial do Brain para as análises recorrentes de Meta Ads da Fama. Ela existe porque os journals recentes do Marketing trazem um sinal operacional importante e estavam sem wikilinks/backlinks, mas a escrita canônica em território de Marketing (`_shared/context/marketing/**` ou `_projects/marketing/**`) foi bloqueada por ownership/roteamento MCP nesta sessão.

## Classificação

- Tipo: runbook/handoff de curadoria interagente.
- Tema: Marketing / Meta Ads / análise diária / performance.
- Estado: ativo como índice temporário de curadoria; não substitui projeto, decisão ou runbook operacional do Marketing.
- Prioridade: média-alta para continuidade, porque o alerta recorrente pode ser perdido se ficar apenas em eventos datados sem conexão.

## Fontes curadas nesta rodada

- [[_journal/marketing/2026-06-17-meta-ads-consolidado-d-1-2026-06-16]] — consolidado D-1 de 2026-06-16.
- [[_journal/marketing/2026-06-17-meta-ads-parcial-18h-2026-06-17]] — parcial de 2026-06-17 às 18h.

## Estado curado em 2026-06-18

As duas análises apontam o mesmo sinal operacional: as campanhas relevantes de Meta Ads estavam sem entrega no dia 2026-06-17 porque o nível de campanha aparecia pausado, enquanto os conjuntos ainda apareciam ativos.

Leitura curada:

- não tratar o dia zerado como problema primário de criativo, público ou CPL;
- primeiro separar se a pausa foi intencional ou acidental;
- se houver retomada, usar os vencedores do recorte anterior apenas como referência de calibração, não como decisão automática;
- manter a métrica de lead de formulário como primária quando o evento genérico `lead` estiver inflado por outras origens.

## Aprendizados reutilizáveis

- **Entrega antes de otimização:** quando os insights do dia voltarem zerados, verificar status efetivo de campanha antes de calibrar criativo, público ou orçamento.
- **Separação de eventos:** journals datados continuam em `_journal/marketing/`; esta nota guarda síntese transversal e links sob território Brain até o Marketing criar um contexto/projeto canônico.
- **Métrica primária:** para campanhas de formulário, priorizar lead de formulário/instant form em vez de evento genérico `lead` quando houver divergência.
- **Leitura por bloco:** ABERTO, LLA e BASE devem ser comparados considerando entrega real e não só gasto nominal.

## Procedimento de retomada curatorial

1. Se o Marketing criar uma nota canônica em `_projects/marketing/` ou `_shared/context/marketing/`, tratar este handoff como supersedável e linkar a nota do Marketing.
2. Se surgirem novos journals de Meta Ads com o mesmo padrão de campanha pausada/sem entrega, registrar apenas síntese incremental; não duplicar esta nota.
3. Não inferir decisão de ativar, pausar, realocar orçamento ou alterar anúncios a partir desta curadoria. Essa decisão pertence à operação/Marketing/Renato.
4. Quando possível, regularizar o roteamento MCP de `type: project` para projetos territoriais de agente, pois o schema documenta `_projects/{agent_id}/`, mas o wrapper bloqueou a escrita nesta sessão.

## Pendências / incertezas

- Confirmar em rotina de Marketing ou operação se a pausa das campanhas foi intencional.
- Ownership bloqueou escrita de shared context em `_shared/context/marketing/**`; a tentativa foi preservada neste handoff em vez de usar workaround fora do MCP.
- O validador MCP também bloqueou tentativas de criar `type: project` em `_projects/marketing/` e `_projects/active/`, apesar da documentação do schema mencionar projetos territoriais; isso deve ser tratado como pendência de roteamento/helper, não como razão para filesystem fallback.
