---
type: moc
owner: renato
created: 2026-04-14
updated: 2026-04-17
tags: [moc, fama-brain]
---
# fama-brain

Vault Obsidian que serve como **contexto e memória de longo prazo** do ecossistema de agentes da Fama Negócios Imobiliários (plataformas **Paperclip** e **OpenClaw**).

**Topologia:** `C:\fama-brain` (Obsidian local) → GitHub (`renatinhosfaria/fama-brain`) → VPS MCP-host (vmi1988871 / `144.126.134.23`, `/root/fama-brain`). Uma única VPS hospeda o vault runtime; todos os agentes (Paperclip, OpenClaw, Claude Code) escrevem via HTTPS no servidor **mcp-obsidian** (`mcp-obsidian.famachat.com.br`), nunca tocando o filesystem diretamente. Cada arquivo tem um único dono de escrita, agora enforced pelo MCP no momento da escrita (erro `OWNERSHIP_VIOLATION`). Detalhes em [[_infra/mcp-obsidian]].

## Mundos

- [[_shared/context/FAMA]] — tudo sobre a empresa
- [[_shared/context/AGENTS]] — mapa do ecossistema de agentes
- [[_agents/README|_agents/]] — memória individual de cada agente
- [[_shared/goals/2026-04/index|Metas — abril 2026]]
- [[_shared/results/2026-04/index|Resultados — abril 2026]]
- [[_projects/]] - tudo sobre os projetos de app em produção e desenvolvimento

## Estrutura do vault

    fama-brain/
    ├── README.md                        # este arquivo (MOC raiz)
    │
    ├── _shared/                         # docs compartilhados (lidos por todos os agentes)
    │   ├── context/
    │   │   ├── FAMA.md                  # índice da empresa
    │   │   ├── AGENTS.md                # mapa Paperclip + OpenClaw
    │   │   └── fama/
    │   │       ├── historia.md
    │   │       ├── missao-visao-valores.md
    │   │       ├── mercado.md
    │   │       ├── produtos.md
    │   │       ├── stack.md
    │   │       └── pessoas.md
    │   │
    │   ├── goals/
    │   │   └── 2026-04/
    │   │       ├── index.md             # agregação (CEO)
    │   │       ├── ceo.md  cfo.md  cmo.md  cro.md  cto.md
    │   │
    │   └── results/
    │       └── 2026-04/
    │           ├── index.md             # agregação (CEO)
    │           ├── ceo.md  cfo.md  cmo.md  cro.md  cto.md
    │
    ├── _agents/                         # zona exclusiva de cada agente
    │   ├── README.md                    # índice Paperclip vs OpenClaw
    │   │
    │   ├── ceo/  cfo/  cmo/  cro/  cto/                        # Paperclip (diretoria)
    │   ├── ceo-exec/  cfo-exec/  famaagent/
    │   ├── follow-up/  reno/  sparring/                        # OpenClaw (operacional)
    │   │
    │   └── <cada-agente>/
    │       ├── README.md                # auto-doc (agente escreve na 1ª interação)
    │       ├── profile.md               # quem é, estilo, preferências
    │       ├── decisions.md             # decisões-chave (append-only, mais recente no topo)
    │       └── journal/
    │           └── YYYY-MM-DD-titulo-curto.md
    │
    ├── _projects/                       # produtos internos (docs por produto, WIP)
    │   ├── famachat/
    │   └── portalcef/
    │
    └── _infra/                          # scripts e docs de infraestrutura do próprio vault
        ├── README.md
        └── brain-sync.sh

## Convenções

- Frontmatter YAML curto em todos os arquivos (`type`, `owner`, `created`, `updated`, `tags`).
- Links internos sempre como `[[wikilink]]`.
- Tags planas (sem hierarquia).
- Nomes de arquivo em kebab-case, sem acentos.
- Journal de agente: `YYYY-MM-DD-titulo-curto.md`.
- **Cada arquivo tem um único dono de escrita** (ver [[_shared/context/AGENTS]] e matriz completa em [[_agents/README]]).

### Tipos (`type:`) padronizados

| `type:` | Usado em |
|---|---|
| `moc` | Índices de navegação (este README, `_agents/README.md`) |
| `context` | `_shared/context/FAMA.md` e `fama/*.md` |
| `agents-map` | `_shared/context/AGENTS.md` |
| `goal` / `goals-index` | Metas mensais por diretor / agregação |
| `result` / `results-index` | Resultados mensais por diretor / agregação |
| `agent-readme` | `_agents/<nome>/README.md` |
| `agent-profile` | `_agents/<nome>/profile.md` |
| `agent-decisions` | `_agents/<nome>/decisions.md` |
| `journal` | `_agents/<nome>/journal/*.md` |
| `project-readme` | `_projects/<produto>/README.md` |
| `shared-context` | `_shared/context/<topic>/<agent>/*.md` (escrito via `upsert_shared_context` do mcp-obsidian) |
| `entity-profile` | `_agents/<agent>/<entity_type>/*.md` — ex.: `reno/lead/`, `famaagent/broker/` |
| `financial-snapshot` | `_shared/financials/<YYYY-MM>/<agent>.md` (escrito via `upsert_financial_snapshot`) |

## Ownership (quem escreve o quê)

| Arquivo / pasta | Dono |
|---|---|
| `README.md`, `_shared/context/FAMA.md`, `fama/*.md`, `_shared/context/AGENTS.md`, `_agents/README.md` | **Renato** |
| `_shared/goals/YYYY-MM/<diretor>.md`, `_shared/results/YYYY-MM/<diretor>.md` | **o próprio diretor Paperclip** |
| `_shared/goals/YYYY-MM/index.md`, `_shared/results/YYYY-MM/index.md` | **CEO** (agregação) |
| `_agents/<nome>/*` | **o próprio agente** |
| `_infra/*` | **Renato** |

## Infraestrutura

- [[_infra/mcp-obsidian|mcp-obsidian]] — gateway de escrita do vault (endpoint, contrato de tools, ownership enforcement, coordenação git).
- [[_infra/README|_infra/README]] — topologia Local Windows / GitHub / VPS MCP-host, manutenção de cada lado, regras de CRLF, instalação do `brain-sync.sh` na VPS.
