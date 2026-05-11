---
schema_version: 1
type: journal
status: active
created: 2026-04-27
updated: 2026-04-27
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: medium
mentions_entity: ["[[reno]]"]
related: ["[[reno-hub]]"]
tags: [journal, auditoria, operacional]
---
# Plano de correção — registro do Reno no vault

## Estado atual

Esta nota preserva evidencia historica de caminhos legados em `_agents/reno/`. Os destinos canonicos atuais sao `_entities/` para entidades consolidadas, `_journal/reno/` para logs operacionais datados, `_runbooks/` para procedimentos duraveis e `_decisions/` para decisoes atomicas.

Vínculos: [[reno]], [[reno-operacao-crm-webhook]], [[reno-second-brain-governance]].
Data: 2026-04-27.

## Problema

O Reno escreve no vault, mas não de forma totalmente consistente. Parte dos registros vai para `_agents/reno/atendimentos/`, parte para `_agents/reno/lead/`, e alguns casos tiveram falha explícita de escrita no Obsidian registrada no CRM.

## Causas provaveis na regra antiga (superado)

1. O prompt da rota exige documento único em `_agents/reno/atendimentos/`, mas usa frontmatter `type: reno-atendimento`, que pode não ser aceito pelo schema atual do mcp-obsidian. Para evitar falha de validação, usar `type: journal` ou outro tipo aceito.
2. Algumas rotinas/batches usam `upsert_lead_timeline` / `append_lead_interaction`, criando registros em `_agents/reno/lead/`, enquanto a convenção operacional principal exige `_agents/reno/atendimentos/{client_id}-{slug}.md`.
3. A persistência no vault ainda depende demais do modelo seguir instrução e escolher ferramenta correta; não há camada determinística única garantindo a escrita depois de cada envio/supressão/avanço.
4. Não existe ainda reconciliação automática para casos em que CRM foi atualizado, mas Obsidian falhou.

As causas acima registram o diagnostico da epoca. Na arquitetura atual, novos registros de atendimento devem usar `_entities/` e `_journal/reno/`; procedimentos duraveis ficam em `_runbooks/`; decisoes ficam em `_decisions/`.

## Correcao recomendada na epoca (superada)

1. Corrigir o prompt da rota `famachat-created`:
   - trocar frontmatter `type: reno-atendimento` por `type: journal`;
   - registrar que, pela regra antiga, o documento principal era `_agents/reno/atendimentos/{client_id}-{slug}.md`;
   - registrar que, pela regra antiga, `_agents/reno/lead/` era apenas apoio, nunca substituto do atendimento;
   - registrar também supressões relevantes em `atendimentos/`, quando o cliente foi processado pelo Reno.

   Estado atual: novos registros de atendimento devem usar `_entities/` e `_journal/reno/`; procedimentos duraveis ficam em `_runbooks/`; decisoes ficam em `_decisions/`.

2. Criar helper/padrão único de escrita:
   - `ensure_reno_atendimento_doc(client_id, lead_name, status, source, resumo, evento)`;
   - se existir, append;
   - se não existir, write_note;
   - frontmatter compatível com schema atual.

3. Aplicar esse helper em todos os fluxos Reno:
   - webhook `cliente.created`;
   - recuperação de backlog;
   - respostas inbound no WhatsApp;
   - agendamento/cancelamento/remarcação;
   - supressões relevantes.

4. Adicionar verificação pós-ação:
   - depois de escrever no CRM e no vault, ler metadata ou buscar o arquivo esperado;
   - se falhar, adicionar nota curta no CRM marcando pendência de reconciliação, sem reenviar WhatsApp.

5. Rodar reconciliação retroativa:
   - listar clientes Reno com nota CRM recente do Reno;
   - pela regra antiga, verificar existencia de `_agents/reno/atendimentos/{client_id}-*.md`;
   - pela regra antiga, criar/atualizar os documentos faltantes a partir das notas do CRM;
   - priorizar casos com envio, resposta, agendamento ou falha explícita de Obsidian.

   Estado atual: novos registros de atendimento devem usar `_entities/` e `_journal/reno/`; procedimentos duraveis ficam em `_runbooks/`; decisoes ficam em `_decisions/`.

6. Adicionar auditoria recorrente:
   - relatório diário ou sob demanda com contagem CRM vs vault;
   - IDs com CRM atualizado e sem documento em `atendimentos/`;
   - IDs com falha Obsidian registrada no CRM;
   - IDs com arquivo em `lead/` mas sem documento principal em `atendimentos/`.

## Ordem de execucao sugerida na epoca (superada)

1. Corrigir prompt/schema para parar novas falhas.
2. Corrigir scripts/jobs que escrevem em `lead/` sem atualizar `atendimentos/`.
3. Reconciliar backlog recente.
4. Ativar auditoria periódica.

Esta ordem registra a recomendacao original e nao deve ser usada como procedimento vigente. Na arquitetura atual, novos registros de atendimento devem usar `_entities/` e `_journal/reno/`; procedimentos duraveis ficam em `_runbooks/`; decisoes ficam em `_decisions/`.

## Evidencia original

Origem migrada: `_agents/reno/auditorias/2026-04-27-plano-correcao-registro-vault.md`.
