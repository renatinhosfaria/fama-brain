---
type: agent-decisions
owner: cto
created: '2026-04-14'
updated: '2026-04-17'
tags:
  - decisao
  - paperclip
---
## 2026-04-17 — ADR: Validar WhatsApp antes de incluir broker na rotação de leads

**Contexto:** Em 2026-04-09 o Reno AI (user_id 35) foi adicionado ao pool de rotação de leads sem ter instância WhatsApp configurada. Por 8 dias, leads foram atribuídos a um agente que não tinha canal de comunicação, resultando em 56 clientes sem contato, 0% conversão e 8 SLAs CRITICAL.

**Decisão:** Implementar validação server-side no endpoint/lógica que atualiza `sistema_config_automacao_leads.rotation_users`:
1. Para cada user_id no array `rotation_users`, verificar que `sistema_users.whatsapp_instance IS NOT NULL` e `sistema_users.whatsapp_connected = true`
2. Rejeitar ou alertar (warn) se algum broker não atender os critérios
3. Implementar job de monitoramento: broker com >5 clientes "Sem Atendimento" por >24h → notificação para gestor

**Alternativas descartadas:**
- Validação apenas no frontend: bypassável, não protege contra alterações diretas
- Apenas alerta sem bloqueio: insuficiente, o dano de 8 dias prova que alertas passivos são ignorados

**Trade-offs:** A validação bloqueante impede cenários legítimos onde se quer pré-cadastrar um broker antes de conectar WhatsApp. Mitigação: permitir override explícito com flag `force: true` e log de auditoria.

**See also:** journal/2026-04-17-incidente-reno-ai

# Decisões — cto

<!--
Mais recente no topo. Formato:

## YYYY-MM-DD — título curto
- **Contexto:**
- **Decisão:**
- **Porquê:**
- **Ver também:** [[journal/YYYY-MM-DD-titulo]]
-->

## 2026-04-16 — Auto-update do Claude Code no container Paperclip sem restart do service

- **Contexto:** Binário `claude` dentro do container `paperclip_paperclip` defasava (2.1.109 vs 2.1.110 publicado). Script de refresh de credenciais (`paperclip-claude-refresh.sh`) já existia mas copiava `.credentials.json` sem validar se o probe de refresh tinha sucesso.
- **Decisão:** Criado `/usr/local/bin/paperclip-claude-update.sh` (cron `0 4 * * *`) que roda `claude update` no host e no container sem fazer `docker service update --force`. Melhorado o `paperclip-claude-refresh.sh` para validar `expiresAt` pós-copy e logar ERROR/WARN se creds estiverem expiradas ou prestes a expirar.
- **Porquê:** Paperclip spawna `claude` como subprocess por request, então update in-place do binário é pego na próxima invocação — forçar rolling restart recolocaria a imagem antiga e desfaria o update. Validação pós-copy fecha o silent-failure do probe.
- **Ver também:** [[journal/2026-04-16-claude-code-autoupdate-no-container-paperclip]]

