---
type: journal
owner: reno
created: '2026-04-28'
updated: '2026-04-28'
tags:
  - reno
  - auditoria
  - obsidian
  - atendimentos
  - migracao
---
# Correção — diretório lead descontinuado e atendimentos como fonte única

## Resumo executivo
Em 2026-04-28 foi concluída a correção operacional do vault do Reno para impedir confusão entre registros de clientes em `_agents/reno/lead/` e `_agents/reno/atendimentos/`.

Resultado final verificado:
- `_agents/reno/atendimentos/` contém 104 itens.
- 70 documentos em `atendimentos/` possuem a tag `migrado-de-lead`.
- Busca em `_agents/reno/lead` por conteúdo do Reno retornou 0 matches.
- Tentativa idempotente de deletar `_agents/reno/lead` retornou `Path not found`, confirmando que o diretório legado não está mais disponível.

## Diretório correto
Todo atendimento/cliente do Reno deve usar exclusivamente:

`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

Esse documento é o contexto futuro oficial do cliente para próximos atendimentos.

## Diretório descontinuado
`_agents/reno/lead/` foi descontinuado, migrado e removido.

Não deve ser recriado nem usado como apoio, rascunho ou destino alternativo.

## Documentação reforçada
Foram atualizados/reforçados os seguintes pontos:

- `_agents/reno/README.md`
  - adicionada regra obrigatória de documentos de clientes em `atendimentos/`;
  - declarado que `lead/` foi descontinuado e não deve ser recriado.

- `_agents/reno/context/second-brain-governance.md`
  - adicionada governança de documento único de cliente;
  - definida a hierarquia CRM → documento em `atendimentos/` → memória/contexto;
  - listados diretórios proibidos para cliente.

- `_agents/reno/context/operacao-crm-webhook.md`
  - reforçado que cliente existente do Reno deve criar/atualizar o documento em `atendimentos/` antes/depois da ação operacional;
  - adicionado `lead/` como falha crítica a evitar.

- `_agents/reno/procedimentos/registro-vault-reno.md`
  - transformado em procedimento explícito de RegistroVaultReno;
  - definido caminho determinístico, gatilhos de escrita, conteúdo mínimo, frontmatter aceito e regra de migração.

- Skill operacional `fama-reno-webhook-first-contact`
  - atualizada para remover orientação antiga que permitia `_agents/reno/lead/` como apoio;
  - reforçado que `lead/` foi removido e não deve ser recriado.

## Evidências de verificação
- `mcp_mcp_obsidian_search_by_tag(tag='migrado-de-lead', owner='reno')`: 70 notas encontradas, todas em `_agents/reno/atendimentos/`.
- `mcp_mcp_obsidian_list_folder(path='_agents/reno/atendimentos')`: 104 itens.
- `mcp_mcp_obsidian_search_content(path='_agents/reno/lead', query='reno')`: 0 matches.
- `mcp_mcp_obsidian_delete_path(path='_agents/reno/lead')`: retorno posterior `Path not found`, confirmando remoção.

## Decisão operacional
A partir desta correção, qualquer documento de cliente encontrado fora de `_agents/reno/atendimentos/` deve ser migrado para o caminho correto e removido da origem incorreta.

O Reno deve consultar esse documento antes de continuar atendimento e atualizá-lo após toda interação relevante.
