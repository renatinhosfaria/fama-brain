---
type: context
owner: renato
created: 2026-04-14
updated: 2026-04-17
tags: [meta, claude-code]
---
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## O que é este repositorio

`fama-brain` **nao e uma base de codigo** - e um vault Obsidian em Markdown que funciona como memoria de longo prazo compartilhada do ecossistema de agentes da Fama Negocios Imobiliarios (plataformas **Paperclip** e **OpenClaw**). Nao ha build, testes ou aplicacao para rodar. O trabalho aqui e quase sempre ler/editar `.md` seguindo convencoes estritas.

**Topologia atual (desde 17/04/2026):** `C:\fama-brain` (Obsidian local Windows) -> GitHub `renatinhosfaria/fama-brain` -> uma unica VPS MCP-host (vmi1988871, `144.126.134.23`, `/root/fama-brain`). Na VPS, o container Docker Swarm `mcp-obsidian` monta o vault como volume e expoe as 34 tools via HTTPS em `mcp-obsidian.famachat.com.br`. **Todos os agentes (Paperclip, OpenClaw, Claude Code, etc.) escrevem exclusivamente via MCP** - nao ha mais acesso direto ao filesystem por agentes. Cron `_infra/brain-sync.sh` roda apenas na VPS MCP-host, puxando edicoes locais do Windows e empurrando commits criados pelo MCP. Mudancas de qualquer ponta viram commits automaticos - evite deixar arquivos em estado intermediario por muito tempo. Referencia canonica: `_infra/mcp-obsidian.md`.

## Arquitetura do vault

Tres eixos ortogonais definem onde um arquivo vive:

- **`_shared/`** - contexto lido por todos os agentes: `context/FAMA.md` + `context/fama/*` (empresa), `context/AGENTS.md` (mapa do ecossistema Paperclip + OpenClaw), `goals/YYYY-MM/` e `results/YYYY-MM/` (um arquivo por diretor + `index.md` agregado pelo CEO).
- **`_agents/<nome>/`** - zona exclusiva de cada agente, com estrutura fixa: `README.md` (auto-doc), `profile.md` (identidade/estilo), `decisions.md` (append-only, mais recente no topo), `journal/YYYY-MM-DD-titulo-curto.md`. Paperclip = diretoria (ceo, cro); OpenClaw = operacional (ceo-exec, famaagent, follow-up, reno).
- **`_projects/<produto>/`** - docs de produtos internos (ex: `famachat`, `portalcef`).

**Ownership e enforcement, nao mais convencao.** Cada arquivo tem um unico dono de escrita (patterns em bloco fence de `_shared/context/AGENTS.md`; tabela human-readable no `README.md` raiz). O MCP `mcp-obsidian` resolve ownership em toda escrita via `as_agent` e retorna `OWNERSHIP_VIOLATION` quando o agente tenta escrever fora do seu territorio. Edicoes manuais pelo Windows (Obsidian) seguem a mesma regra por convencao - violar gera ruido no historico git, nao conflito automatizado. Para adicionar novos caminhos, adicione a linha de ownership em `AGENTS.md` e commit (MCP recarrega via `stat mtime`).

## Convencoes de edicao

- **Frontmatter YAML obrigatorio** em todo `.md`: `type`, `owner`, `created`, `updated`, `tags`. Atualizar `updated:` ao editar (data absoluta, sem "hoje"/"ontem").
- **`type:` padronizado** - valores validos: `moc`, `context`, `agents-map`, `goal`, `goals-index`, `result`, `results-index`, `agent-readme`, `agent-profile`, `agent-decisions`, `journal`, `project-readme`, `shared-context`, `entity-profile`, `financial-snapshot`. Nao inventar novos tipos sem atualizar o README raiz e `src/vault/frontmatter.ts` em `mcp-obsidian`.
- **Links internos sempre como `[[wikilink]]`** (formato Obsidian), nunca como caminhos relativos Markdown.
- **Nomes de arquivo em kebab-case, sem acentos.** Journal segue `YYYY-MM-DD-titulo-curto.md`.
- **Tags planas**, sem hierarquia.
- **`decisions.md` e append-only** com a decisao mais recente no topo - nao reescrever historico.
- Idioma padrao: **portugues (BR)**.

## Regra critica: Git no Windows vs WSL

O vault local em `C:\fama-brain` deve ser manipulado **exclusivamente pelo Git for Windows** (PowerShell, Obsidian Git, ou este Claude Code no shell bash do Git for Windows). **Nunca** rodar comandos Git via WSL apontando para `/mnt/c/fama-brain` - os dois Gits tratam CRLF de forma diferente e geram falsas modificacoes em cascata. Ver incidente de 2026-04-12 em `_infra/README.md`.

Config obrigatoria do Git for Windows: `core.autocrlf=input`.

## Sincronizacao

`_infra/brain-sync.sh` roda apenas na **VPS MCP-host** (vmi1988871) a cada 5 min via cron: `git pull --rebase --autostash` -> commit automatico se houver mudancas locais -> `git push`. Compartilha `/tmp/brain-sync.lock` (via volume Docker) com o container `mcp-obsidian` para coordenar commits do tool `commit_and_push`. Logs em `/var/log/brain-sync.log`. Outras VPSs com agentes nao precisam de clone local nem de `brain-sync` - consomem o vault via HTTPS no MCP. Detalhes operacionais: `_infra/README.md` e `_infra/mcp-obsidian.md`.

Commits automaticos do script seguem padrao `vault backup (<hostname>): <timestamp>` - ao fazer commits manuais, use mensagens descritivas para se diferenciar deles no historico.
