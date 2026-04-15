# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## O que é este repositorio

`fama-brain` **nao e uma base de codigo** - e um vault Obsidian em Markdown que funciona como memoria de longo prazo compartilhada do ecossistema de agentes da Fama Negocios Imobiliarios (plataformas **Paperclip** e **OpenClaw**). Nao ha build, testes ou aplicacao para rodar. O trabalho aqui e quase sempre ler/editar `.md` seguindo convencoes estritas.

O vault e sincronizado via Git entre a maquina local Windows (`C:\fama-brain`) e VPSs (`/root/fama-brain`) por `_infra/brain-sync.sh` em cron de 5 minutos. Mudancas de qualquer ponta viram commits automaticos - evite deixar arquivos em estado intermediario por muito tempo.

## Arquitetura do vault

Tres eixos ortogonais definem onde um arquivo vive:

- **`_shared/`** - contexto lido por todos os agentes: `context/FAMA.md` + `context/fama/*` (empresa), `context/AGENTS.md` (mapa do ecossistema Paperclip + OpenClaw), `goals/YYYY-MM/` e `results/YYYY-MM/` (um arquivo por diretor + `index.md` agregado pelo CEO).
- **`_agents/<nome>/`** - zona exclusiva de cada agente, com estrutura fixa: `README.md` (auto-doc), `profile.md` (identidade/estilo), `decisions.md` (append-only, mais recente no topo), `journal/YYYY-MM-DD-titulo-curto.md`. Paperclip = diretoria (ceo, cfo, cmo, cro, cto); OpenClaw = operacional (ceo-exec, cfo-exec, famaagent, follow-up, reno, sparring).
- **`_projects/<produto>/`** - docs de produtos internos (ex: `famachat`, `portalcef`).

**Ownership e regra dura, nao sugestao.** Cada arquivo tem um unico dono de escrita (ver tabela no `README.md` raiz e em `_shared/context/AGENTS.md`). Ao editar, confirme que a mudanca esta no territorio do autor que esta falando - violar ownership gera conflitos de merge entre VPSs e perda de memoria de agentes.

## Convencoes de edicao

- **Frontmatter YAML obrigatorio** em todo `.md`: `type`, `owner`, `created`, `updated`, `tags`. Atualizar `updated:` ao editar (data absoluta, sem "hoje"/"ontem").
- **`type:` padronizado** - valores validos: `moc`, `context`, `agents-map`, `goal`, `goals-index`, `result`, `results-index`, `agent-readme`, `agent-profile`, `agent-decisions`, `journal`. Nao inventar novos tipos sem atualizar o README raiz.
- **Links internos sempre como `[[wikilink]]`** (formato Obsidian), nunca como caminhos relativos Markdown.
- **Nomes de arquivo em kebab-case, sem acentos.** Journal segue `YYYY-MM-DD-titulo-curto.md`.
- **Tags planas**, sem hierarquia.
- **`decisions.md` e append-only** com a decisao mais recente no topo - nao reescrever historico.
- Idioma padrao: **portugues (BR)**.

## Regra critica: Git no Windows vs WSL

O vault local em `C:\fama-brain` deve ser manipulado **exclusivamente pelo Git for Windows** (PowerShell, Obsidian Git, ou este Claude Code no shell bash do Git for Windows). **Nunca** rodar comandos Git via WSL apontando para `/mnt/c/fama-brain` - os dois Gits tratam CRLF de forma diferente e geram falsas modificacoes em cascata. Ver incidente de 2026-04-12 em `_infra/README.md`.

Config obrigatoria do Git for Windows: `core.autocrlf=input`.

## Sincronizacao

`_infra/brain-sync.sh` roda em cada VPS a cada 5 min via cron: `git pull --rebase --autostash` -> commit automatico se houver mudancas locais -> `git push`. Usa `flock` para nao sobrepor execucoes. Logs em `/var/log/brain-sync.log`. Procedimento completo de instalacao numa nova VPS esta em `_infra/README.md`.

Commits automaticos do script seguem padrao `vault backup (<hostname>): <timestamp>` - ao fazer commits manuais, use mensagens descritivas para se diferenciar deles no historico.
