# _infra — Infraestrutura do fama-brain

Esta pasta contém scripts e configurações de infraestrutura que suportam o funcionamento do vault `fama-brain`. Aqui vivem ferramentas que **o próprio vault usa pra se manter**.

## Arquivos atuais

### `brain-sync.sh`

Script bash responsável por manter uma cópia local do `fama-brain` sincronizada com o repositório remoto no GitHub. É chamado automaticamente por um agendamento cron a cada 5 minutos em cada VPS configurada.

**O que faz:**

1. Entra no diretório do vault (`/root/fama-brain`)
2. Faz `git pull --rebase --autostash origin main` para puxar mudanças remotas
3. Se houver mudanças locais não commitadas (criadas por agentes, Claude Code, ou edições manuais), faz commit com mensagem automática identificando o hostname
4. Faz `git push origin main` para enviar as mudanças pro GitHub
5. Usa `flock` pra evitar execuções simultâneas

**Logs:** `/var/log/brain-sync.log`

## Como instalar o `brain-sync` numa nova VPS

Procedimento pra adicionar uma nova VPS ao ecossistema `fama-brain`:

### 1. Pré-requisitos

A VPS precisa ter:

- `git` instalado
- `gh` (GitHub CLI) instalado e autenticado (`gh auth status`)
- `cron` ativo (`systemctl is-active cron`)
- Conexão com `github.com` funcionando

### 2. Clonar o vault

	cd /root
	git clone https://github.com/renatinhosfaria/fama-brain.git

### 3. Configurar identidade Git

	git config --global user.name "Renato Faria"
	git config --global user.email "[email protected]"
	git config --global core.autocrlf input
	git config --global init.defaultBranch main

### 4. Instalar o script

	sudo cp /root/fama-brain/_infra/brain-sync.sh /usr/local/bin/brain-sync
	sudo chmod 755 /usr/local/bin/brain-sync

### 5. Criar o arquivo de log

	sudo touch /var/log/brain-sync.log
	sudo chmod 644 /var/log/brain-sync.log

### 6. Testar o script manualmente

	/usr/local/bin/brain-sync

Deve mostrar `Already up to date` e terminar sem erros.

### 7. Adicionar ao crontab do root

	(crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/brain-sync >> /var/log/brain-sync.log 2>&1") | crontab -

### 8. Validar execução automática

Aguardar o próximo múltiplo de 5 minutos e verificar:

	tail -20 /var/log/brain-sync.log

## Regras do vault local (Windows)

**Git for Windows apenas.** O vault em `C:\fama-brain` deve ser manipulado exclusivamente pelo Git for Windows (PowerShell ou plugin Obsidian Git). Nunca rodar comandos Git pelo WSL apontando pra `/mnt/c/fama-brain` — os dois Gits interpretam os arquivos de forma diferente e geram falsas modificações.

**Configuração essencial do Git for Windows:**

	git config --global core.autocrlf input
	git config --global user.name "Renato Faria"
	git config --global user.email "[email protected]"

## Histórico

- **12 de abril de 2026** — Script inicial criado durante a configuração da vmi3094636 (OpenClaw), primeira VPS do ecossistema. Conflito de CRLF descoberto e resolvido durante o setup, levando à correção do `core.autocrlf` no Git for Windows e à regra de não usar Git do WSL no vault local.