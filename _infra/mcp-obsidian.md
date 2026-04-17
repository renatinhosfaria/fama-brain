# mcp-obsidian — Gateway de escrita do vault

Referência canônica da integração entre o vault `fama-brain` e o **servidor MCP `mcp-obsidian`** que o gerencia em produção. Este documento é a fonte de verdade para **qualquer agente que precise escrever no vault**.

## Topologia atual

    ┌───────────────────────────┐
    │ Máquina local (Windows)   │
    │ C:\fama-brain (Obsidian)  │
    └────────────┬──────────────┘
                 │ push/pull (Git for Windows + plugin Obsidian Git)
                 ▼
    ┌───────────────────────────────────────────┐
    │ GitHub — renatinhosfaria/fama-brain       │
    │ branch main (fonte de verdade remota)     │
    └────────────┬──────────────────────────────┘
                 │ pull/push a cada 5 min (brain-sync.sh)
                 ▼
    ┌───────────────────────────────────────────────┐
    │ VPS vmi1988871 — 144.126.134.23               │
    │ /root/fama-brain  (clone runtime)             │
    │                                               │
    │ Container Docker Swarm: mcp-obsidian          │
    │  - porta 3201 (interna)                       │
    │  - Traefik: mcp-obsidian.famachat.com.br      │
    │  - monta /root/fama-brain em /vault           │
    │  - compartilha /tmp/brain-sync.lock com cron  │
    └────────────┬──────────────────────────────────┘
                 │ HTTPS + Bearer token
                 ▼
    ┌───────────────────────────────────────────┐
    │ Agentes (Paperclip, OpenClaw, Claude Code)│
    │ — clientes MCP, nunca tocam o filesystem  │
    └───────────────────────────────────────────┘

**Uma única VPS hospeda o vault runtime.** Agentes em qualquer máquina acessam via HTTPS; não precisam de clone local nem de acesso SSH à VPS.

## Endpoint

- **URL pública:** `https://mcp-obsidian.famachat.com.br/mcp`
- **Healthcheck:** `https://mcp-obsidian.famachat.com.br/health` (sem auth)
- **Protocolo:** JSON-RPC 2.0 sobre HTTP POST (Streamable HTTP transport do MCP SDK)
- **Auth:** header `Authorization: Bearer <API_KEY>` obrigatório em `/mcp`
- **Rate limit:** 300 requisições por minuto por cliente

Teste rápido:

    curl -sH "Authorization: Bearer $API_KEY" -X POST \
      https://mcp-obsidian.famachat.com.br/mcp \
      -H 'Content-Type: application/json' \
      -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}' | jq '.result.tools | length'
    # esperado: 34

## Contrato de ferramentas

34 tools + 2 resources, cobrindo CRUD, workflows de agente (journal, decisions, profile, goals, results), pattern Lead (reno), pattern Broker (famaagent), shared-context cross-agent, financial snapshots (cfo/ceo-exec), executive views de broker (ceo-exec) e git commit/push.

Lista completa, argumentos, tipos de retorno e códigos de erro: ver [`README.md` do repo mcp-obsidian](https://github.com/renatinhosfaria/mcp-fama) e a spec em `docs/superpowers/specs/2026-04-15-mcp-obsidian-design.md`.

Categorias:

| Grupo | Tools | Observação |
|---|---|---|
| CRUD | 8 | `read_note`, `write_note`, `append_to_note`, `delete_note`, `list_folder`, `search_content`, `get_note_metadata`, `stat_vault` |
| Workflows genéricos | 18 | journal, decisions, profile, goals, results, deltas cross-agent, financial, broker-exec, shared-context, entity-profile, search_by_tag/type, backlinks |
| Lead (reno) | 3 | `upsert_lead_timeline`, `append_lead_interaction`, `read_lead_history` |
| Broker (famaagent) | 3 | `upsert_broker_profile`, `append_broker_interaction`, `read_broker_history` |
| Git | 2 | `commit_and_push`, `git_status` |

Resources: `obsidian://vault` (stats) e `obsidian://agents` (ownership map).

## Ownership: agora é enforcement, não convenção

Antes: ownership era descrito no README e combinado com boa-fé entre agentes. Violações só apareciam como conflito de merge entre VPSs.

**Agora:** cada escrita passa pelo MCP, que resolve ownership consultando os patterns em [`_shared/context/AGENTS.md`](../_shared/context/AGENTS.md) (bloco fence de código, primeira regra vence). Se `as_agent` ≠ dono do caminho, o MCP retorna `OWNERSHIP_VIOLATION` e nada é escrito.

Consequências práticas:
- Agentes precisam identificar-se via `as_agent` em toda escrita.
- Adicionar um caminho novo ao vault exige adicionar a linha de ownership em `AGENTS.md` — commitada e sincronizada para a VPS MCP-host. O MCP recarrega o mapa via `stat mtime` automaticamente.
- Caminhos sem pattern casado retornam `UNMAPPED_PATH` — não há default silencioso.

## Validações em tempo de escrita

Além de ownership, o MCP aplica:

- **Frontmatter schema** — 15 tipos válidos (ver [CLAUDE.md](../CLAUDE.md)). Tipos com campos extras (`goal` exige `period`, `entity-profile` exige `entity_type`+`entity_name`, `financial-snapshot` exige `period`, etc.) são validados por Zod. Erro: `INVALID_FRONTMATTER`.
- **Convenções de nome de arquivo** — kebab-case `.md`. Erro: `INVALID_FILENAME`.
- **Immutability** — `decisions.md` só aceita escrita via `append_decision` (prepend no topo); tentativas de `write_note`/`append_to_note` retornam `IMMUTABLE_TARGET`. Arquivos de journal não podem ser sobrescritos: `JOURNAL_IMMUTABLE`.

Códigos de erro completos: seção Troubleshooting do README do mcp-obsidian.

## Git: coordenação com `brain-sync.sh`

Dois processos escrevem no repo Git da VPS:

1. O MCP, quando o agente chama `commit_and_push`.
2. O cron `brain-sync.sh`, a cada 5 minutos, trazendo mudanças do GitHub (Windows) e commitando qualquer coisa que tenha sido deixada sem commit.

Para evitar race condition, ambos usam o mesmo lockfile **`/tmp/brain-sync.lock`** via `flock`. Docker monta o lockfile do host no container (ver `docker-compose.yml`). Quem chegar primeiro segura o lock; o outro espera ou retorna `GIT_LOCK_BUSY` após timeout curto (retry 3-10s geralmente resolve).

Commits do MCP têm prefixo `[mcp-obsidian]`. Commits automáticos do cron seguem `vault backup (<hostname>): <timestamp>`. Edições manuais pelo Renato no Windows devem usar mensagens descritivas para se diferenciar dos dois.

## Como um agente se conecta

1. **Obter o API_KEY** — guardado como secret `mcp_obsidian_api_key` no Docker Swarm da VPS MCP-host. Cópias operacionais em 1Password / env local do agente.
2. **Configurar o cliente MCP** apontando para `https://mcp-obsidian.famachat.com.br/mcp` com o Bearer token.
3. **Identificar-se** em cada tool de escrita via argumento `as_agent` — valor deve casar com um dos agentes registrados em [`AGENTS.md`](../_shared/context/AGENTS.md) (`ceo`, `cfo`, `cmo`, `cro`, `cto`, `ceo-exec`, `cfo-exec`, `famaagent`, `follow-up`, `reno`, `sparring`).

Agentes que rodam em outras VPSs (ex.: Paperclip no swarm Paperclip, agentes OpenClaw em suas VPSs) **não precisam** clonar o vault nem rodar `brain-sync.sh` — consomem tudo via HTTPS.

## Operação

- **Logs do MCP:** `/var/log/mcp-obsidian/` no host da VPS MCP-host.
- **Logs do sync:** `/var/log/brain-sync.log` (mesma VPS).
- **Reiniciar o serviço:** `docker service update --force mcp-obsidian_mcp-obsidian` (Swarm).
- **Ver versão deployed:** `docker service ps mcp-obsidian_mcp-obsidian`.
- **Source do MCP:** repositório `mcp-fama` (GitHub), path `mcp-obsidian/`, branch `main`.

## Como evoluir o contrato

Mudanças no vocabulário do vault (novos `type:`, novos tópicos canônicos, novos entity_types) exigem **dois commits coordenados**:

1. **No repo `mcp-fama`** — atualizar `src/vault/frontmatter.ts` e as tools afetadas; bumpar/deploy.
2. **No repo `fama-brain`** — atualizar [CLAUDE.md](../CLAUDE.md), [README.md](../README.md), [AGENTS.md](../_shared/context/AGENTS.md) conforme o caso.

Deploy do MCP deve preceder o commit no vault (caso contrário agentes que leem o vault atualizado quebram ao tentar escrever tipos que o MCP antigo ainda rejeita).

## Histórico

- **17 de abril de 2026** — Documento criado. Topologia migrou de "vault replicado em múltiplas VPSs com `brain-sync.sh` em cada uma" para "uma VPS runtime (vmi1988871) hospedando o MCP, agentes acessam via HTTPS". Ownership deixou de ser convenção e virou enforcement.
