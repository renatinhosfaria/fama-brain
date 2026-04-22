---
type: context
owner: renato
created: '2026-04-21'
updated: '2026-04-21'
tags: [infra, openclaw, paperclip, ssh, acesso]
---
# Acesso SSH dos Agents Paperclip à VPS OpenClaw

Padrão canônico pra qualquer agent Paperclip (CEO, CRO, RH, e futuros) acessar a VPS OpenClaw pra auditar, ler ou modificar os bundles dos agents OpenClaw (Reno, FamaAgent, Follow-up, ceo-exec).

## Decisão arquitetural (21/Abr/2026)

**Padrão adotado: B — Chave compartilhada `paperclip-agents`.**

Renato decidiu adotar uma **chave SSH única compartilhada** entre todos os agents Paperclip, em vez de chaves individuais por agent (Padrão A) ou HTTPS API (Padrão C). Trade-off aceito conscientemente: simplicidade de onboarding de novos agents vs. ausência de audit trail por agent.

**Contraparte de segurança:** o acesso é como `root` na VPS OpenClaw — red line operacional "nunca executar `openclaw gateway restart`" depende de disciplina dos agents (documentada em cada SOUL.md), não de restrição técnica.

## Setup

### Chave compartilhada

- **Tipo:** Ed25519
- **Criada em:** 21/Abr/2026
- **Comentário:** `paperclip-agents@fama-shared-2026-04-21`
- **Fingerprint:** `SHA256:nEu4JQxOS85AGXiznJFC2ETA5iyBWccF9/S85tcvPBA`

### Localização da chave (dentro do container Paperclip)

```
/paperclip/instances/default/shared-keys/     # chmod 0750, root:node
├── paperclip-agents        # chmod 0640, root:node (lido via grupo pelos agents)
└── paperclip-agents.pub    # chmod 0644, root:root (pubkey pública)
```

**Permissões aplicadas em 21/Abr/2026 pelo CEO Paperclip:**
- Agents rodam como usuário `node` (uid 1000) dentro do container
- Chave privada ownership `root:node` com mode `0640` permite leitura via grupo para o usuário `node`, sem precisar de escalonamento de privilégio
- Diretório pai `0750 root:node` esconde conteúdo de "others"
- Zero escalonamento de privilégio — root permanece como único writer

**⚠️ Nota operacional:** SSH client em modo estrito (default) **rejeita esta chave quando executada como root** porque considera `0640` permissivo demais. Isso é intencional e esperado — agents rodam como `node`, não root. Se precisar validar manualmente via `docker exec`, use `docker exec -u node ...`.

### Endpoint SSH

- **Host:** `144.91.69.166` (VPS OpenClaw)
- **Porta:** 22 (padrão)
- **Usuário:** `root`
- **Workspaces acessíveis:** `/root/.openclaw/workspace-reno/`, `/root/.openclaw/workspace-famaagent/`, `/root/.openclaw/workspace-followup/`, `/root/.openclaw/workspace-ceo-exec/`

## Como um agent Paperclip usa

### Caso 1 — Leitura de bundle (auditoria)

```bash
ssh -i /paperclip/instances/default/shared-keys/paperclip-agents \
    root@144.91.69.166 \
    "cat /root/.openclaw/workspace-reno/AGENTS.md"
```

### Caso 2 — Download completo dos bundles (snapshot)

```bash
mkdir -p /tmp/openclaw-snapshot && \
scp -i /paperclip/instances/default/shared-keys/paperclip-agents \
    -r root@144.91.69.166:/root/.openclaw/workspace-* \
    /tmp/openclaw-snapshot/
```

### Caso 3 — Escrita (aplicar revisão de bundle — raro, precisa autorização)

```bash
# Primeiro gera o arquivo localmente, depois envia
scp -i /paperclip/instances/default/shared-keys/paperclip-agents \
    /caminho/local/novo-AGENTS.md \
    root@144.91.69.166:/root/.openclaw/workspace-reno/AGENTS.md
```

**⚠️ Escrita em bundle em produção** exige aprovação explícita do Renato. Nenhum agent escreve sem autorização documentada (issue ou mensagem Telegram).

## Restrições operacionais (red lines)

Mesmo sendo `root` tecnicamente, os agents Paperclip **nunca** fazem o seguinte via esta conexão:

- ❌ `openclaw gateway restart` (ou `stop`/`start`/variações via systemctl) — **Red line global.** Se restart for necessário, pede ao Renato.
- ❌ `rm -rf` ou comandos destrutivos sem aprovação explícita
- ❌ Alteração de config de `openclaw` (gateway, mcp-remote, etc.) sem autorização
- ❌ Acesso a diretórios fora de `/root/.openclaw/` a menos que seja diagnóstico autorizado
- ❌ Alteração de `authorized_keys` da própria VPS (pra evitar escalada via chave)

Essas restrições estão documentadas em cada SOUL.md e AGENTS.md dos agents Paperclip/OpenClaw. **Técnica não impede — disciplina impede.**

## Onboarding de novo agent Paperclip

Quando um novo agent Paperclip for adicionado ao ecossistema:

1. Agent lê este documento (lido automaticamente como parte do bootstrap via `read_note` se o SOUL.md instruir)
2. Agent sabe que a chave está em `/paperclip/instances/default/shared-keys/paperclip-agents`
3. **Nenhuma ação adicional necessária** — chave já está autorizada na VPS

Isso é o principal motivo do Padrão B ter sido escolhido: onboarding zero-touch.

## Revogação / rotação

Se a chave for comprometida ou se Renato decidir rotacionar:

1. Gerar novo keypair dentro do container Paperclip (mesmo comando que foi usado na criação — 21/Abr/2026)
2. Atualizar `authorized_keys` em `openclaw-vps:/root/.ssh/authorized_keys`:
   - Remover linha antiga (comentário identificador `paperclip-agents@fama-shared-<data-antiga>`)
   - Adicionar nova pubkey
3. Atualizar este documento com novo comentário + fingerprint
4. Todos os agents Paperclip passam a usar o novo keypair automaticamente (caminho do arquivo não muda)

**Rotação programada:** não há calendário fixo. Renato decide.

## Migração futura para Padrão A ou C

Se o ecossistema crescer (mais agents, necessidade de audit trail, compliance):

- **Padrão A** (per-agent keys com restrições) — cada agent Paperclip ganha keypair próprio; authorized_keys mapeia por comentário. Fornece audit trail. Estimativa: ~2h de refactor.
- **Padrão C** (HTTPS API via Traefik) — expõe `/root/.openclaw/workspace-*/` como endpoint read-only HTTPS com bearer token por agent (similar aos MCPs). Elimina SSH. Estimativa: ~2-3h de setup.

Este documento deve ser atualizado quando houver mudança.

## Histórico

- **21/Abr/2026** — Padrão B adotado, keypair `paperclip-agents` criado, documento canônico registrado no vault. Autorizado pelo Renato em resposta ao bloqueio da FAMAAAAA-157 (agent RH não conseguia auditar bundles OpenClaw).
