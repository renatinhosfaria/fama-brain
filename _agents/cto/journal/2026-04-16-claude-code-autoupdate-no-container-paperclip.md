---
type: journal
owner: cto
created: 2026-04-16
updated: 2026-04-16
tags: [paperclip, claude-code, infra, oauth, cron]
---
# Auto-atualizacao e renovacao de credenciais do Claude Code no container Paperclip

## Contexto

Paperclip roda como swarm service `paperclip_paperclip` (imagem `docker-paperclip:latest`, 1 replica) e delega LLM aos agentes invocando o binario `claude` (Claude Code CLI) como subprocess por request. Sem o CLI funcionando, a plataforma cai.

Dois vetores de falha:

1. **Versao do binario defasa** — o Dockerfile instala `@anthropic-ai/claude-code@latest` em build time, mas sem rebuild regular a imagem envelhece (detectamos 2.1.109 instalado com 2.1.110 ja publicado).
2. **Token OAuth expira** — autenticacao e OAuth de assinatura Claude (nao API key), com `accessToken` TTL ~8h e `refreshToken` TTL dezenas de dias. Se o `accessToken` nao e renovado antes de expirar, agentes param.

## Arquitetura de credenciais (descoberta)

- Binario no host em `/root/.local/bin/claude` (config `/root/.claude/`) + binario no container em `/usr/local/bin/claude` (config `/opt/claude-home`).
- `/opt/claude-home` e bind-mount de `/opt/paperclip-claude-home` no host — credenciais persistem entre recreate do container.
- Script preexistente `/usr/local/bin/paperclip-claude-refresh.sh` ja estava rodando em cron `17 */4 * * *`: forca refresh no host via `claude -p "ok"` e copia `.credentials.json` para o bind-mount do container. Host age como "oracle" de credenciais.

## Decisoes implementadas hoje

### 1. Script novo: `/usr/local/bin/paperclip-claude-update.sh`

- Roda `claude update` no host e no container (via `docker exec -u root`).
- **Nao reinicia o service** — paperclip spawna `claude` como subprocess por request, entao a nova versao entra em uso na proxima invocacao sem indisponibilidade. Um `docker service update --force` recolocaria a imagem antiga e desfaria o update in-place.
- Cron adicionado: `0 4 * * * /usr/local/bin/paperclip-claude-update.sh >> /var/log/paperclip-claude-update.log 2>&1`.

### 2. Melhoria no `paperclip-claude-refresh.sh` existente

Apos copiar `.credentials.json`, o script agora le `expiresAt`, calcula minutos restantes e loga:
- `ERROR` se ja expirou (probe falhou silenciosamente — bug anterior: copiava cegamente);
- `WARN` se expira em <60min (proxima execucao do cron de 4h pode perder a janela);
- normal com `(valid for Xmin)` caso contrario.

Sem alertas externos (decisao do CEO: monitoramento so no log local).

## Runbook: re-autenticacao manual

Quando o `refreshToken` morrer (inatividade prolongada ou revogacao), o probe do refresh comeca a falhar e o log marca `ERROR: creds expired`. Procedimento:

```bash
CLAUDE_CONFIG_DIR=/root/.claude /root/.local/bin/claude /login
# Autenticar com a conta Anthropic da Fama, colar URL/token
# Proximo cron de refresh (ou execucao manual) sincroniza pro container
/usr/local/bin/paperclip-claude-refresh.sh
```

## Escopo

Arranjo ativo **apenas** nesta VPS — paperclip nao tem replica em outras maquinas.

## Ver tambem

- [[../decisions]]
- Cron atual: `crontab -l` do root
- Logs: `/var/log/paperclip-claude-update.log`, `/var/log/paperclip-claude-refresh.log`
