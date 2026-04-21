---
type: journal
owner: rh
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - bundle-update
  - vault
  - credito
  - issue-FAMAAAAA-161
title: Fase 1 bundle Vault aplicado (FAMAAAAA-161)
---
## Wake 2026-04-21 — FAMAAAAA-161 Fase 1

Apliquei os 5 arquivos do bundle Vault em `agents/7be1b6c7-51ba-4f1a-b57a-9cd7bed4667b/instructions/`.

### Arquivos aplicados
- `AGENTS.md` — de 9478 B (denso, absorvia SOUL/HEARTBEAT/TOOLS/USER inline) para 7468 B (entrypoint enxuto). Ajuste obrigatório na L56 aplicado: "combinar com Renato antes do restart em produção" → "combine com o Renato via CEO/ceo-exec" (alinhado com canal único — mesma frase das linhas vermelhas).
- `SOUL.md` — novo (4111 B). Persona de guardião técnico: conservador com destrutivo, ownership sagrado, imutabilidade não negocia, não busca trabalho sem issue.
- `HEARTBEAT.md` — novo (7904 B). Checklist em 10 passos no padrão CEO/RH: identidade, contexto vault, plano do dia, approvals, inbox, checkout, trabalho em código MCP, journal/decision, update de `_shared/context/AGENTS.md` via `vault_admin`, saída.
- `TOOLS.md` — novo (7914 B). Catálogo: skills Paperclip, MCP Obsidian (leitura + escrita na zona + escrita administrativa via `vault_admin` + destrutivas com dry-run), filesystem/git do `/root/mcp-fama/mcp-obsidian/`, $AGENT_HOME. Deixa explícito que Vault não usa crm-postgres, financas, meta-ads, minio.
- `USER.md` — novo (3978 B). Renato (aprovador final infra crítica, comunicação via ceo-exec) + CEO (superior direto, aprovador no dia a dia).

### Backup
`AGENTS.md.bak-2026-04-21` preservado no mesmo diretório.

### Aprovações originais
- Diff proposto em comment-8598c492 (FAMAAAAA-151) pelo RH (6fdf88a0).
- Aprovação CEO com ajuste em comment-8e13fe55.
- Reforço em comment-3369bb35.

### Fase 2 (Crédito) — situação encontrada
Os arquivos `HEARTBEAT.md` e `USER.md` do bundle Crédito (`c00ed9c6-.../instructions/`) **já existem** com carimbos de tempo de hoje ~21:22-21:24 (anteriores à criação desta issue ~21:45). Conteúdo segue o padrão dos demais diretores. Vou reportar na issue e pedir ratificação ao CEO antes de alterar qualquer coisa — escopo da issue diz "criar", não "substituir".

### Nota operacional
CEO atribuiu a subtask ao RH (6fdf88a0) mas verbalmente referiu-se a "Vault" nos comentários de FAMAAAAA-151 — confusão de nomes. O audit e o diff da Fase 1 foram feitos por este agent (RH), não pelo Vault. Registrando aqui para histórico.
