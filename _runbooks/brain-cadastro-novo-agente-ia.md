---
schema_version: 1
type: runbook
status: active
created: '2026-06-04'
updated: '2026-06-04'
source: human-curated
tags:
  - brain
  - vault
  - agentes
  - governanca
  - proveniencia
  - mcp-obsidian
author_agent: brain
title: 'Runbook: cadastro de novo agente de IA/LLM no vault'
procedure_owner: brain
trigger: >-
  identificação de nota criada por agente de IA/LLM desconhecido ou solicitação
  de onboarding de novo agente
---
# Runbook: cadastro de novo agente de IA/LLM no vault

## Objetivo

Definir o procedimento para quando o Brain identificar uma nota criada por um agente de IA, LLM, CLI ou automação ainda não cadastrado no `vault-obsidian`.

A regra principal é: **agente desconhecido não ganha confiança canônica automaticamente**. Primeiro deve ser identificado, avaliado, registrado com proveniência e, se for útil/recorrente, cadastrado no mapa de agentes e receber território explícito.

## Triggers

Use este procedimento quando ocorrer qualquer um dos sinais abaixo:

- nota nova com `author_agent`, `created_by`, `agent`, `owner` ou assinatura desconhecida;
- nota criada por ferramenta/LLM ainda não listado em [[_shared/context/AGENTS]];
- conteúdo recorrente vindo de um mesmo agente externo;
- automação nova escrevendo no vault;
- solicitação explícita de Renato para cadastrar novo agente;
- conflito de ownership causado por uma nota criada fora dos territórios conhecidos.

## Fontes relacionadas

- [[_shared/context/AGENTS]] — registro canônico de agentes, ownership e guardrails.
- [[schema]] — convenção v1 por tipo de memória.
- [[brain-vault-curadoria]] — runbook geral de curadoria do Brain.
- [[brain-hub]] — hub operacional do Brain.
- [[retrieval-policy]] — política de recuperação e confiança.
- [[pii-redaction-policy]] — política de PII e dados sensíveis.

## Procedimento obrigatório

### 1. Detectar e isolar a nota como entrada de proveniência incerta

1. Ler a nota via `mcp_obsidian_read_note`.
2. Identificar sinais de origem:
   - `author_agent`;
   - `created_by`;
   - `agent`;
   - `owner`;
   - `source`;
   - assinatura textual;
   - ferramenta/CLI mencionada;
   - padrão de path ou template.
3. Se a origem não estiver clara, marcar mentalmente e no log como **proveniência incerta**.
4. Não promover a nota para decisão, fato canônico ou runbook sem validação.

### 2. Checar se o agente já existe

1. Ler [[_shared/context/AGENTS]].
2. Buscar literalmente pelo possível `agent_id`, nome da ferramenta, assinatura ou owner.
3. Buscar semanticamente por descrições equivalentes.
4. Se já existir agente cadastrado, aplicar o território e os guardrails existentes.
5. Se não existir, continuar este procedimento.

### 3. Avaliar se é caso de cadastro

Cadastrar novo agente quando pelo menos uma condição for verdadeira:

- o agente/LLM vai escrever de forma recorrente no vault;
- já existem múltiplas notas atribuíveis à mesma origem;
- o agente tem missão, canal, ferramenta ou escopo operacional próprio;
- há risco de conflito de ownership se ele não for cadastrado;
- Renato solicitou o cadastro explicitamente;
- a automação precisa de território previsível para logs, runbooks, decisões ou projetos.

Não cadastrar ainda quando:

- foi uma nota única e sem recorrência provável;
- a origem é ruído/importação descartável;
- não há confiança mínima sobre identidade;
- o conteúdo deve apenas ser curado como entrada bruta;
- o suposto agente é só um modelo usado por outro agente já cadastrado.

Nesses casos, registrar como **origem externa não cadastrada** no log de curadoria.

### 4. Definir `agent_id` e identidade mínima

Se o cadastro fizer sentido, definir:

- `agent_id` estável em minúsculas, sem espaço, preferencialmente `kebab-case` ou slug curto;
- nome humano do agente/ferramenta;
- missão;
- canal/origem técnica;
- escopo de atuação;
- nível de autonomia;
- território primário;
- território controlado;
- ações que exigem confirmação de Renato;
- política de PII e confiança;
- fonte inicial que motivou o cadastro.

Se houver dúvida sobre o nome, usar um `agent_id` conservador e registrar a pendência.

### 5. Registrar no mapa canônico de agentes

Atualizar [[_shared/context/AGENTS]] com uma seção nova em `## Registro de agentes`.

Modelo mínimo:

```md
### `{agent_id}`

- **Nome:** {nome}
- **Missão:** {missao}
- **Hub:** [[{agent_id}-hub]] ou `pendente`, se ainda não criado.
- **Origem técnica:** {ferramenta, LLM, webhook, CLI, integração ou desconhecida}
- **Território primário:** `_journal/{agent_id}/**`, `_projects/{agent_id}/**`, `_runbooks/{agent_id}-*.md`, `_hubs/{agent_id}-hub.md`, `_decisions/*-{agent_id}-*.md`.
- **Território controlado:** `_entities/**` e `_shared/context/**` apenas com fato confirmado, fonte rastreável, ownership correto e read-back via MCP.
- **Exige confirmação do Renato:** schema, ownership, decisões estratégicas, fatos sensíveis, exposição/transformação de PII, remoção destrutiva, conflito entre fontes e alteração que afete operação comercial ou responsabilidade humana.
- **Regra operacional:** buscar antes de criar, registrar eventos em `_journal/{agent_id}/`, usar português do Brasil por padrão, preservar proveniência e fazer read-back após escrita.
```

Também atualizar o bloco de ownership map se o novo agente tiver território ativo.

### 6. Criar artefatos mínimos do agente, quando aplicável

Para agente recorrente ou autorizado por Renato, criar:

1. Hub: `_hubs/{agent_id}-hub.md`.
2. Runbook/perfil: `_runbooks/{agent_id}-profile.md` ou `_runbooks/{agent_id}-vault-operacao.md`.
3. Primeiro journal de onboarding: `_journal/{agent_id}/YYYY-MM-DD-onboarding-{agent_id}.md`.
4. Decisão somente se houver decisão explícita de governança: `_decisions/YYYY-MM-DD-{agent_id}-{slug}.md`.

Não criar `_agents/{agent_id}/`; esse namespace é legado/inativo.

### 7. Curar a nota original

Para a nota que disparou o procedimento:

- preservar o conteúdo original quando for evidência útil;
- adicionar ou corrigir metadados de proveniência se apropriado;
- relacionar com o novo agente/hub/runbook;
- mover/renomear somente se o destino estiver claro;
- se for conteúdo incerto, manter status como `draft`, `imported`, `pending-review` ou equivalente, conforme schema aplicável;
- nunca transformar inferência em fato durável.

### 8. Registrar log de curadoria

Registrar em `_journal/brain/`:

- nota de origem;
- agente identificado ou hipótese de agente;
- evidências usadas para identificação;
- decisão: cadastrado, não cadastrado ou pendente;
- `agent_id` adotado, se houver;
- documentos criados/atualizados;
- documentos relacionados;
- riscos, PII, conflitos e incertezas;
- verificação feita.

### 9. Verificar

Após qualquer escrita:

1. Fazer read-back das notas alteradas.
2. Validar links internos principais.
3. Rodar `mcp_obsidian_validate_vault` se houve mudança em [[_shared/context/AGENTS]], schema, hubs, runbooks, ownership map ou múltiplas notas.
4. Se o cadastro depender de recuperação futura, testar busca literal e semântica pelo `agent_id` e missão.

## Critérios de decisão

### Integrar imediatamente

Quando a origem é clara, recorrente, autorizada e o escopo é útil.

### Isolar como pendente

Quando há valor potencial, mas identidade, escopo ou confiança ainda são incertos.

### Apenas registrar no log

Quando foi um evento único ou importação sem necessidade de agente autônomo.

### Escalar para Renato

Quando o cadastro muda ownership, afeta operação comercial, envolve PII sensível, cria autonomia relevante ou conflita com agentes existentes.

## Guardrails

- Não recriar `_agents/`.
- Não conceder território primário sem registro em [[_shared/context/AGENTS]].
- Não aceitar nota de agente desconhecido como fonte canônica sem validação.
- Não expor PII bruta em logs ou relatórios.
- Não alterar schema/ownership material sem autorização explícita.
- Não cadastrar modelos genéricos como agentes separados quando eles são apenas motor interno de um agente já existente.

## Resultado esperado

Ao final, a nota criada por agente desconhecido deve estar em um destes estados:

1. vinculada a agente já existente;
2. curada como entrada externa não cadastrada;
3. marcada como pendente de identificação;
4. usada como gatilho para cadastro formal de novo agente com território, hub/runbook e log de onboarding.
