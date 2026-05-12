---
created: '2026-05-13'
owner: renato
source: human-requested
status: draft
tags:
  - reno
  - vault
  - mcp-obsidian
  - plano
  - pos-migracao
  - governanca
type: context
updated: '2026-05-13'
---
# Plano de implementação — Reno vault pós-migração

> **Para Hermes/Reno:** executar este plano via ferramentas MCP do Obsidian. Não editar o vault diretamente pelo filesystem. Cada fase deve terminar com read-back, busca de validação e `git_status` via MCP.

**Pedido:** Renato solicitou transformar os lotes recomendados na auditoria em fases de implementação.

**Objetivo:** canonizar o vault `fama-brain` após a integração do Agent Reno e das skills às novas configurações do vault/MCP, mantendo o CRM/FamaChat como fonte operacional de verdade e o Obsidian como segunda memória curada.

**Arquitetura operacional:** aplicar mudanças pequenas, verificáveis e reversíveis via MCP. Separar governança mínima, qualidade de memória e higiene fina. Preservar histórico de migração, mas impedir que caminhos legados sejam interpretados como destino ativo.

**Escopo:** documentação e metadados do vault. Não inclui atendimento de leads, mudanças no CRM/FamaChat, alteração de cron jobs ou mudança de runtime do MCP.

**Guardrails:**

- Não recriar `_agents/`.
- Não apagar histórico de migração sem aprovação explícita.
- Não salvar payload bruto, logs técnicos completos, raciocínio interno, tokens, senhas, API keys ou connection strings.
- Se qualquer segredo aparecer em revisão, substituir por `[REDACTED]`.
- Usar read-back após cada escrita.
- Registrar decisões novas somente com aprovação explícita de Renato.
- Tratar `_meta/` como área sensível: alterar schema, inventário, migração ou avaliação somente dentro da fase aprovada.

---

## Fase 0 — Preparação e linha de base

**Objetivo:** garantir que o vault está em estado seguro antes de escrever.

**Arquivos:** nenhum arquivo deve ser alterado nesta fase.

### Tarefa 0.1 — Confirmar status limpo do vault

**Ação:** executar `mcp_mcp_obsidian_git_status`.

**Critério de aceite:**

- `modified: []`
- `untracked: []`
- `ahead: 0`
- `behind: 0`

**Se falhar:** parar e reportar a Renato antes de escrever.

### Tarefa 0.2 — Revalidar documentos canônicos

**Ler via MCP:**

- `README.md`
- `_shared/context/AGENTS.md`
- `_decisions/2026-05-12-reno-vault-memoria-autonoma.md`
- `_runbooks/reno-vault-operacao.md`
- `_runbooks/reno-second-brain-governance.md`
- `_runbooks/reno-registro-vault.md`
- `_meta/schema.md`

**Critério de aceite:** o implementador consegue confirmar o destino ativo atual:

- eventos: `_journal/reno/`
- fatos duráveis: `_entities/`
- runbooks: `_runbooks/`
- decisões: `_decisions/`
- contexto compartilhado: `_shared/context/`
- navegação: `_hubs/`
- meta/schema/auditoria: `_meta/`
- projetos: `_projects/`

### Tarefa 0.3 — Preparar busca de drift

**Ações MCP:**

- buscar `_agents/reno` em `_runbooks`, `_shared/context`, `_hubs`, `_meta`, `_decisions`, `_entities`, `docs` e `_journal/reno`;
- classificar cada ocorrência como:
  - destino ativo indevido;
  - referência histórica aceitável;
  - proveniência de migração;
  - documento operacional obsoleto.

**Critério de aceite:** nenhuma mudança começa sem essa classificação mínima.

---

## Fase 1 — Governança mínima pós-migração

**Objetivo:** fazer o vault descobrir e obedecer a decisão canônica nova, sem mexer ainda na qualidade de retrieval.

### Tarefa 1.1 — Atualizar `_decisions/index.md`

**Modificar:** `_decisions/index.md`

**Mudanças:**

- incluir `[[2026-05-12-reno-vault-memoria-autonoma]]` na lista de decisões Reno;
- marcar como decisão canônica atual sobre autonomia do Reno no vault;
- se houver seção cronológica, posicionar após `[[2026-05-11-reno-second-brain-vault]]`;
- não reescrever decisões antigas.

**Verificação:**

- read-back de `_decisions/index.md`;
- buscar `reno-vault-memoria-autonoma` no vault;
- confirmar que a decisão nova tem pelo menos um backlink a partir do índice.

### Tarefa 1.2 — Atualizar `_hubs/reno-hub.md`

**Modificar:** `_hubs/reno-hub.md`

**Mudanças:**

- incluir wikilink para `[[2026-05-12-reno-vault-memoria-autonoma]]`;
- reforçar links para:
  - `[[reno-vault-operacao]]`
  - `[[reno-second-brain-governance]]`
  - `[[reno-registro-vault]]`
  - `[[reno-profile]]`
- declarar que `_agents/` é namespace legado/inativo e não destino operacional;
- atualizar `updated`.

**Verificação:**

- read-back do hub;
- confirmar wikilinks presentes;
- buscar `_agents/reno` no hub e esperar zero ocorrência.

### Tarefa 1.3 — Atualizar `_shared/context/AGENTS.md`

**Modificar:** `_shared/context/AGENTS.md`

**Mudanças:**

- manter Renato como owner primário de `_entities/**` nesta fase;
- esclarecer que, sob a decisão Opção C, Reno pode registrar fatos duráveis confirmados em `_entities/` quando houver fonte rastreável e read-back;
- preservar a regra de que decisões canônicas exigem aprovação explícita de Renato;
- preservar a regra de que `_agents/` não deve ser recriado.

**Verificação:**

- read-back de `_shared/context/AGENTS.md`;
- buscar `_agents/reno` no arquivo e esperar zero ocorrência;
- confirmar presença de `Opção C` ou link para `[[2026-05-12-reno-vault-memoria-autonoma]]`.

### Tarefa 1.4 — Atualizar `_meta/index.md`

**Modificar:** `_meta/index.md`

**Mudanças:**

- atualizar `updated`;
- apontar para o inventário pós-migração da Tarefa 1.5;
- apontar para o manifesto de migração Reno;
- manter pendências `embedding-state` e `golden-queries` como itens da Fase 2, se ainda não existirem;
- remover linguagem que trate FAM-16 como trabalho atual se já virou histórico.

**Verificação:**

- read-back de `_meta/index.md`;
- confirmar links para inventário pós-migração e manifesto.

### Tarefa 1.5 — Criar inventário pós-migração

**Criar:** `_meta/inventory-2026-05-13-reno-post-migration.md`

**Conteúdo mínimo:**

- resumo executivo do estado pós-migração;
- data da auditoria;
- status do git no início;
- estrutura ativa do vault;
- confirmação de que `_agents/` não é destino ativo;
- documentos canônicos Reno;
- lista de drifts classificados;
- pendências para Fase 2 e Fase 3;
- regra: referências históricas a `_agents/reno` podem permanecer quando forem proveniência/migração, mas não em instrução operacional ativa.

**Verificação:**

- read-back do inventário;
- confirmar links para `[[2026-05-12-reno-vault-memoria-autonoma]]`, `[[reno-vault-operacao]]` e `[[schema]]` se aplicável.

### Tarefa 1.6 — QA da Fase 1

**Ações:**

- executar `mcp_mcp_obsidian_git_status`;
- buscar `_agents/reno` em `_runbooks`, `_shared/context` e `_hubs`;
- buscar `reno-vault-memoria-autonoma` no vault.

**Critério de aceite:**

- `_runbooks`, `_shared/context` e `_hubs` não devem conter destino ativo `_agents/reno`;
- decisão de 2026-05-12 deve estar discoverable por índice e hub;
- qualquer status git modificado deve corresponder apenas aos arquivos da Fase 1.

---

## Fase 2 — Qualidade de memória, retrieval e avaliação

**Objetivo:** impedir que histórico/planos antigos poluam a memória operacional do Reno.

### Tarefa 2.1 — Atualizar `_meta/schema.md`

**Modificar:** `_meta/schema.md`

**Mudanças:**

- revisar aviso antigo sobre schema v1/MCP;
- substituir linguagem de “não enforçado” por estado atual validado;
- listar types em uso real quando apropriado;
- reforçar que escrita deve respeitar READMEs locais + read-back;
- manter compatibilidade histórica, sem apagar contexto da migração.

**Verificação:**

- read-back de `_meta/schema.md`;
- buscar termos obsoletos como `FAM-16` e confirmar que estão classificados como histórico ou removidos se não servirem mais.

### Tarefa 2.2 — Criar `_meta/embedding-state.md`

**Criar:** `_meta/embedding-state.md`

**Conteúdo mínimo:**

- se embeddings/retrieval estão ativos ou pendentes;
- escopo indexado;
- pastas excluídas da memória operacional;
- data do último rebuild, se houver;
- modelo/provedor, se conhecido e não sensível;
- lacunas conhecidas.

**Verificação:** read-back e link em `_meta/index.md`.

### Tarefa 2.3 — Criar `_meta/golden-queries.md`

**Criar:** `_meta/golden-queries.md`

**Conteúdo mínimo:**

- perguntas canônicas que testam recuperação de contexto;
- fonte esperada;
- resposta esperada resumida;
- critério de aprovação;
- separar blocos:
  - governança Reno;
  - atendimento/CRM;
  - vault/MCP;
  - entidades;
  - contexto Fama/crédito.

**Exemplos de perguntas:**

- “Onde o Reno deve registrar uma interação operacional curada?”
- “O Reno pode recriar `_agents/`?”
- “Qual decisão aprova a memória autônoma do Reno?”
- “Quando um fato sai do journal e vira entidade?”
- “O CRM ou o vault é fonte operacional de verdade?”

**Verificação:** read-back e link em `_meta/index.md`.

### Tarefa 2.4 — Criar política de retrieval/indexação

**Criar preferencialmente:** `_meta/retrieval-policy.md`

**Conteúdo mínimo:**

- fontes operacionais preferenciais;
- fontes históricas permitidas apenas como auditoria;
- tratamento de `docs/superpowers/**`;
- tratamento de manifestos de migração;
- regra para referências `_agents/reno` como proveniência;
- prioridade de fontes:
  1. decisões aprovadas;
  2. runbooks atuais;
  3. READMEs locais;
  4. entities/context curados;
  5. journal recente;
  6. docs históricos/projetos somente quando explicitamente necessário.

**Verificação:** read-back e link em `_meta/index.md`.

### Tarefa 2.5 — QA da Fase 2

**Ações:**

- read-back de `_meta/index.md`, `_meta/schema.md`, `_meta/embedding-state.md`, `_meta/golden-queries.md`, `_meta/retrieval-policy.md`;
- buscar `embedding-state`, `golden-queries` e `retrieval-policy` no vault;
- executar `git_status` via MCP.

**Critério de aceite:**

- `_meta/index.md` deve funcionar como portal atual;
- schema não deve induzir operação pelo modelo antigo;
- política de retrieval deve reduzir o risco de usar specs/plans históricos como fonte operacional.

---

## Fase 3 — Higiene fina e consolidação histórica

**Objetivo:** corrigir inconsistências restantes sem apagar rastreabilidade.

### Tarefa 3.1 — Atualizar `_entities/index.md`

**Modificar:** `_entities/index.md`

**Mudanças:**

- corrigir o estado de `whatsapp-lua` para refletir descarte por decisão de Renato, se confirmado pela migração;
- separar pendências reais de pendências já resolvidas;
- listar ou apontar para auditoria das entidades sem `entity_type`.

**Verificação:** read-back e busca por `whatsapp-lua`.

### Tarefa 3.2 — Auditar entidades sem `entity_type`

**Arquivos:** notas em `_entities/**` que não possuem `entity_type` explícito.

**Ação:**

- listar as entidades afetadas;
- classificar cada uma como pessoa, empresa, projeto, sistema, conceito ou outro;
- atualizar apenas casos óbvios;
- pedir confirmação de Renato para casos ambíguos.

**Verificação:** nova busca por notas sem `entity_type` ou relatório da auditoria.

### Tarefa 3.3 — Revisar decisões antigas com path legado

**Arquivos candidatos:**

- `_decisions/2026-04-26-reno-persistencia-operacional-atendimento.md`
- `_decisions/2026-05-02-reno-repescagem-arquivamento-automatico-step-5.md`
- outras decisões antigas encontradas na busca `_agents/reno`.

**Ação recomendada:**

- não reescrever materialmente a decisão histórica;
- adicionar, somente se autorizado, uma seção de estado atual apontando para a decisão superseding;
- quando houver conflito real, propor nova decisão ou `superseded_by`.

**Verificação:** read-back e busca por `superseded_by`, quando aplicado.

### Tarefa 3.4 — Classificar docs históricos

**Arquivos:** `docs/superpowers/specs/**` e `docs/superpowers/plans/**` relacionados à migração Reno/vault.

**Ação:**

- não deletar por padrão;
- marcar como histórico em índice/política de retrieval;
- se algum documento ainda parecer operacional ativo e mandar usar `_agents/reno`, atualizar para apontar aos runbooks atuais ou marcar como obsoleto.

**Verificação:** busca por `_agents/reno` em `docs` deve retornar apenas ocorrências históricas/proveniência, não instruções operacionais ativas.

### Tarefa 3.5 — QA final da Fase 3

**Ações:**

- executar `git_status` via MCP;
- buscar `_agents/reno` por área e classificar resultados remanescentes;
- verificar links principais do hub;
- verificar `_decisions/index.md`;
- verificar `_meta/index.md`;
- confirmar que nenhum segredo foi preservado.

**Critério de aceite:**

- todo uso remanescente de `_agents/reno` está explicitamente histórico, proveniência ou migração;
- não existe destino ativo para `_agents/`;
- decisão Opção C está linkada por índice/hub/runbooks;
- `_meta` possui estado atual, schema, inventário e política de retrieval.

---

## Critérios globais de aceite

A implementação estará concluída quando:

- a decisão `[[2026-05-12-reno-vault-memoria-autonoma]]` for discoverable por índice, hub e runbooks;
- `_agents/` continuar inexistente/inativo;
- `_runbooks`, `_shared/context` e `_hubs` não tiverem instrução ativa apontando para `_agents/reno`;
- `_meta` tiver inventário pós-migração, estado de embeddings/retrieval e golden queries;
- `_entities/index.md` não carregar pendências já resolvidas como se estivessem abertas;
- referências históricas a `_agents/reno` estiverem preservadas apenas quando úteis para auditoria;
- `git_status` final estiver limpo ou, se o MCP não commitar, o diff pendente estiver limitado aos arquivos planejados e reportado a Renato.

## Ordem recomendada de execução

1. Executar Fase 0.
2. Executar Fase 1 inteira e pedir validação de Renato se houver mudança sensível em `_shared/context/AGENTS.md`.
3. Executar Fase 2 inteira.
4. Executar Fase 3 parcialmente, parando em qualquer entidade/decisão ambígua.
5. Entregar relatório final com arquivos alterados, buscas de validação e status git.

## Stop rules

Parar imediatamente e reportar a Renato se:

- o vault não estiver limpo antes da fase;
- qualquer segredo aparecer;
- o MCP recusar escrita por ownership;
- uma decisão antiga precisar de alteração material;
- uma entidade ambígua exigir deduplicação/fusão;
- busca indicar que `_agents/reno` ainda aparece como instrução ativa em runbook, hub ou contexto compartilhado.
