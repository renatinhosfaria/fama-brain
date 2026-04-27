---
created: '2026-04-27'
owner: reno
tags:
  - reno
  - obsidian
  - vault
  - correcao
  - rastreabilidade
type: journal
updated: '2026-04-27'
---
# Plano de correção — registro do Reno no vault

Data: 2026-04-27.

## Problema

O Reno escreve no vault, mas não de forma totalmente consistente. Parte dos registros vai para `_agents/reno/atendimentos/`, parte para `_agents/reno/lead/`, e alguns casos tiveram falha explícita de escrita no Obsidian registrada no CRM.

## Causas prováveis

1. O prompt da rota exige documento único em `_agents/reno/atendimentos/`, mas usa frontmatter `type: reno-atendimento`, que pode não ser aceito pelo schema atual do mcp-obsidian. Para evitar falha de validação, usar `type: journal` ou outro tipo aceito.
2. Algumas rotinas/batches usam `upsert_lead_timeline` / `append_lead_interaction`, criando registros em `_agents/reno/lead/`, enquanto a convenção operacional principal exige `_agents/reno/atendimentos/{client_id}-{slug}.md`.
3. A persistência no vault ainda depende demais do modelo seguir instrução e escolher ferramenta correta; não há camada determinística única garantindo a escrita depois de cada envio/supressão/avanço.
4. Não existe ainda reconciliação automática para casos em que CRM foi atualizado, mas Obsidian falhou.

## Correção recomendada

1. Corrigir o prompt da rota `famachat-created`:
   - trocar frontmatter `type: reno-atendimento` por `type: journal`;
   - deixar explícito que o documento principal é sempre `_agents/reno/atendimentos/{client_id}-{slug}.md`;
   - usar `_agents/reno/lead/` apenas como apoio, nunca como substituto do atendimento;
   - registrar também supressões relevantes em `atendimentos/`, quando o cliente foi processado pelo Reno.

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
   - verificar existência de `_agents/reno/atendimentos/{client_id}-*.md`;
   - criar/atualizar os documentos faltantes a partir das notas do CRM;
   - priorizar casos com envio, resposta, agendamento ou falha explícita de Obsidian.

6. Adicionar auditoria recorrente:
   - relatório diário ou sob demanda com contagem CRM vs vault;
   - IDs com CRM atualizado e sem documento em `atendimentos/`;
   - IDs com falha Obsidian registrada no CRM;
   - IDs com arquivo em `lead/` mas sem documento principal em `atendimentos/`.

## Ordem de execução sugerida

1. Corrigir prompt/schema para parar novas falhas.
2. Corrigir scripts/jobs que escrevem em `lead/` sem atualizar `atendimentos/`.
3. Reconciliar backlog recente.
4. Ativar auditoria periódica.
