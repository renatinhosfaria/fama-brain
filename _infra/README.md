# _infra — Infraestrutura do fama-brain

Scripts e documentação da infraestrutura que mantém o vault `fama-brain` em operação. Este diretório é do Renato (ownership pattern `_infra/** => renato`).

## Topologia atual

    Local (Windows, Obsidian)  ──▶  GitHub (fonte de verdade remota)  ──▶  VPS MCP-host

- **Local:** `C:\fama-brain` editado via Obsidian + plugin Obsidian Git (Git for Windows).
- **GitHub:** `https://github.com/renatinhosfaria/fama-brain`, branch `main`.
- **VPS MCP-host:** vmi1988871 (`144.126.134.23`), clone em `/root/fama-brain`, container Docker Swarm `mcp-obsidian` monta o vault como volume. Todos os agentes escrevem por aqui via HTTPS — ver [`mcp-obsidian.md`](mcp-obsidian.md).

**Uma única VPS hospeda o vault runtime.** Outras VPSs que executam agentes não precisam clonar o vault nem rodar `brain-sync`; conectam ao MCP por HTTPS.

## Arquivos deste diretório

- [`mcp-obsidian.md`](mcp-obsidian.md) — **referência canônica da integração MCP** (topologia, endpoint, contrato de tools, ownership enforcement, coordenação git).
- [`brain-sync.sh`](brain-sync.sh) — script de sincronização git rodando em cron na VPS MCP-host.
- `README.md` — este arquivo.

---

## Manutenção do clone local (Windows)

O vault local em `C:\fama-brain` é a **zona de escrita manual** do Renato (edição direta em Obsidian, reorganização, correção de typos, etc.). Sincroniza com o GitHub via plugin Obsidian Git ou Git for Windows no terminal.

### Regras

- **Git for Windows apenas.** Nunca rodar Git via WSL em `/mnt/c/fama-brain` — os dois Gits interpretam CRLF de forma diferente e geram falsas modificações em cascata (ver incidente de 12/04/2026 no histórico).
- **Configuração essencial:**

        git config --global core.autocrlf input
        git config --global user.name "Renato Faria"
        git config --global user.email "[email protected]"

- Editar diretamente via Obsidian é OK; o plugin Obsidian Git faz commit + push em intervalo configurado.
- **Não editar via MCP pelo Windows** — o MCP só expõe o vault da VPS MCP-host. Edições locais vão por Git normal.

---

## Manutenção da VPS MCP-host (vmi1988871)

A VPS MCP-host roda dois processos complementares:

1. **Container `mcp-obsidian`** — gateway de escrita para todos os agentes. Detalhes em [`mcp-obsidian.md`](mcp-obsidian.md).
2. **Cron `brain-sync.sh`** — a cada 5 min: puxa do GitHub (trazendo edições locais do Windows) e empurra qualquer commit que o MCP tenha criado.

### `brain-sync.sh`

**O que faz:**

1. Entra em `/root/fama-brain`.
2. `git pull --rebase --autostash origin main`.
3. Se houver mudanças locais não commitadas, commita com mensagem `vault backup (<hostname>): <timestamp>`.
4. `git push origin main`.
5. Usa `flock` em `/tmp/brain-sync.lock` — única instância roda por vez, evitando que duas execuções do cron sobreponham um pull/commit/push em andamento.

**Logs:** `/var/log/brain-sync.log`.

### Instalação (apenas em VPS MCP-host)

Este procedimento **só é rodado em uma VPS** — a que hospeda o container MCP. Outras VPSs de agentes não precisam dele.

#### 1. Pré-requisitos

- `git` instalado
- `gh` (GitHub CLI) autenticado (`gh auth status`)
- `cron` ativo (`systemctl is-active cron`)
- Conexão com `github.com`
- Docker Swarm com o container `mcp-obsidian` deployado

#### 2. Clonar o vault

    cd /root
    git clone https://github.com/renatinhosfaria/fama-brain.git

#### 3. Configurar identidade Git

    git config --global user.name "Renato Faria"
    git config --global user.email "[email protected]"
    git config --global core.autocrlf input
    git config --global init.defaultBranch main

#### 4. Instalar o script

    sudo cp /root/fama-brain/_infra/brain-sync.sh /usr/local/bin/brain-sync
    sudo chmod 755 /usr/local/bin/brain-sync

#### 5. Criar o arquivo de log

    sudo touch /var/log/brain-sync.log
    sudo chmod 644 /var/log/brain-sync.log

#### 6. Testar o script manualmente

    /usr/local/bin/brain-sync

Deve mostrar `Already up to date` e terminar sem erros.

#### 7. Adicionar ao crontab do root

    (crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/brain-sync >> /var/log/brain-sync.log 2>&1") | crontab -

#### 8. Validar execução automática

Aguardar o próximo múltiplo de 5 minutos e verificar:

    tail -20 /var/log/brain-sync.log

---

## Histórico

- **17 de abril de 2026** — Topologia consolidada em 1 VPS runtime (vmi1988871). Agentes pararam de clonar o vault e passaram a escrever exclusivamente via MCP (`mcp-obsidian.famachat.com.br`). Ownership virou enforcement. Documento reescrito separando manutenção local Windows de manutenção da VPS MCP-host; criada referência canônica [`mcp-obsidian.md`](mcp-obsidian.md).
- **12 de abril de 2026** — `brain-sync.sh` criado durante a configuração da vmi3094636 (OpenClaw), primeira VPS do ecossistema. Conflito de CRLF descoberto e resolvido durante o setup, levando à correção do `core.autocrlf` no Git for Windows e à regra de não usar Git do WSL no vault local.
