# fama-brain — Manual Operacional para Agentes

**Versão:** 1.0
**Última atualização:** 2026-04-12
**Mantenedor:** Renato Faria (renatinhosfaria@gmail.com)
**Público-alvo:** Agentes OpenClaw, Claude Code, Codex e quaisquer outros agentes autônomos que operem dentro do ecossistema Fama

---

## ⚡ TL;DR — Se você é um agente e tem pouco tempo

**Você está dentro de um vault chamado `fama-brain`** — um sistema de memória persistente compartilhado entre múltiplas máquinas. Regras essenciais:

1. **Escreva apenas na sua própria pasta.** Nunca edite arquivos fora da sua área.
2. **Leia livremente.** Todo o vault é leitura. Use o conteúdo para contextualizar suas decisões.
3. **Não faça commit ou push manual.** Um script chamado `brain-sync` roda via cron a cada 5 minutos e sincroniza tudo automaticamente. Apenas crie, edite, salve arquivos — o resto se resolve.
4. Use **markdown.** Todos os arquivos do vault devem ser `.md`. Sem exceções (salvo scripts em `_infra/`).
5. **Timestamps em ISO 8601.** Quando registrar eventos, use `YYYY-MM-DD HH:MM:SS -03` (fuso de Brasília).
6. **Mensagens de commit**, quando necessárias (feitas pelo `brain-sync` automaticamente), identificam a origem via hostname. Você não precisa se preocupar com isso.

**Se você está incerto sobre qualquer coisa, pare e pergunte ao humano antes de escrever.**

---

## 1. O que é o fama-brain

### 1.1. Definição

O `fama-brain` é um **vault Obsidian** sincronizado automaticamente entre uma máquina Windows local (Uberlândia-MG, Brasil) e 5 servidores Contabo (3 na Europa, 2 nos EUA), usando Git + GitHub privado como mecanismo de sincronização.

Ele serve como **memória persistente unificada** dos projetos, decisões, contextos, logs de sessão, leads (com restrições LGPD) e conhecimento operacional da Fama Negócios Imobiliários e suas iniciativas correlatas.

### 1.2. Por que este sistema existe

Antes do `fama-brain`, o contexto dos projetos estava espalhado entre múltiplas VPSs, múltiplos arquivos `CLAUDE.md` locais, múltiplas sessões de Claude Code sem comunicação entre si, e múltiplas anotações informais. Cada vez que o humano ou um agente alternava entre projetos, havia custo alto de "relembrar onde parei".

O `fama-brain` resolve isso oferecendo **um único lugar** onde tudo é consultável, propagado automaticamente para todas as máquinas, e versionado pelo Git.

### 1.3. O que NÃO é

- **Não é um banco de dados.** Não consulte como SQL, não espere queries complexas. É um conjunto de arquivos markdown.
- **Não é um CMS.** Não tem interface web própria (a interface é o Obsidian, que não está instalado nas VPSs).
- **Não é um sistema de tickets.** Não use para rastrear tarefas operacionais que tenham ferramentas dedicadas (issues do GitHub, Kanban de um CRM, etc).
- **Não é storage de arquivos binários.** Imagens pequenas (screenshots de contexto) são OK. Vídeos, binários grandes, PDFs extensos → não. Use links para storage externo.
- **Não é o único canal de comunicação.** Decisões urgentes ainda são comunicadas por canais diretos (Telegram, WhatsApp). O vault é repositório de conhecimento consolidado.

---

## 2. Arquitetura do sistema

### 2.1. Visão geral

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│         GitHub (renatinhosfaria/fama-brain) — PRIVADO       │
│                                                             │
│              Repositório central (ponto de encontro)        │
│                                                             │
└──────────────────────────┬──────────────────────────────────┘
                           │
                           │ Git push/pull a cada 5 minutos
                           │
         ┌─────────────────┼─────────────────┐
         │                 │                 │
         ▼                 ▼                 ▼
  ┌──────────┐      ┌──────────┐      ┌──────────────┐
  │ OBSIDIAN │      │  5 VPSs  │      │  (futuras    │
  │ LOCAL    │      │  Contabo │      │  máquinas)   │
  │ Windows  │      │          │      │              │
  └──────────┘      └──────────┘      └──────────────┘
```

Cada ponto é uma **réplica completa** do vault. Todos funcionam independentemente — se o GitHub cair, cada máquina ainda tem o vault inteiro localmente. Se uma máquina cair, as outras continuam funcionando.

### 2.2. Máquinas participantes

| Nome | Tipo | Região | Caminho do vault | Papel principal |
|---|---|---|---|---|
| **notebook-renato** | Windows 11 Pro (local) | Uberlândia-MG, Brasil | `C:\fama-brain` | Interface visual (Obsidian Desktop) |
| **vmi3094636** | Contabo Cloud VPS 10 SSD | EU | `/root/fama-brain` | OpenClaw (6 agentes) + Mission Control |
| **vmi3019449** | Contabo Cloud VPS 20 SSD | EU | `/root/fama-brain` | A ser documentado |
| **vmi2945281** | Contabo Storage VPS 10 | US-central | `/root/fama-brain` | A ser documentado |
| **vmi2510860** | Contabo Cloud VPS 20 SSD | EU | `/root/fama-brain` | FamaChat CRM (`/var/www/famachat/`) |
| **vmi1988871** | Contabo Cloud VPS II NVMe | US-central | `/root/fama-brain` | aaPanel / BT Panel |

### 2.3. Como a sincronização funciona

**Na máquina local Windows:**
- O plugin **Obsidian Git** (versão 2.38.0) roda automaticamente:
  - Pull do GitHub a cada 5 minutos
  - Commit-and-sync (add + commit + pull + push) a cada 5 minutos quando há mudanças
  - Pull on startup ao abrir o Obsidian

**Nas 5 VPSs:**
- Um script chamado `brain-sync` roda via cron a cada 5 minutos:
  - Localização: `/usr/local/bin/brain-sync`
  - Código-fonte no vault: `_infra/brain-sync.sh`
  - Log: `/var/log/brain-sync.log`
  - Cron: `*/5 * * * * /usr/local/bin/brain-sync >> /var/log/brain-sync.log 2>&1`

**O script `brain-sync` faz, em ordem:**
1. Usa `flock` para garantir que só há uma execução por vez
2. `cd /root/fama-brain`
3. `git pull --rebase --autostash origin main` (puxa mudanças do GitHub)
4. Se `git status --porcelain` retorna algo (há mudanças locais):
   - `git add -A`
   - `git commit -m "auto: sync <hostname> <timestamp>"`
   - `git push origin main`
5. Registra cada passo em `/var/log/brain-sync.log` com timestamp

**Latência total de propagação:** até 5 minutos para ida (uma máquina → GitHub), até mais 5 minutos para volta (GitHub → outras máquinas). Total end-to-end: **até 10 minutos** em condições normais.

### 2.4. Eventual consistency — o que significa pra você como agente

Como agente operando no vault, você precisa entender:

- **Não há "estado global instantâneo".** Se você escreve um arquivo agora na vmi3094636, ele ainda não existe na vmi2510860 — vai aparecer lá nos próximos 5-10 minutos.
- **Outros escritores podem estar agindo em paralelo.** O humano pode estar editando o vault no Obsidian. Outro agente pode estar escrevendo em outra VPS. O sistema resolve isso automaticamente **desde que** cada ator escreva em sua própria área (ver seção 4).
- **Não faça loops de polling agressivo.** Se você quer saber "já chegou o arquivo que o humano prometeu?", espere pelo menos 5-10 minutos entre verificações. Polling a cada 10 segundos é desperdício — a sincronização é em ciclos fixos de 5 minutos.
- **Confie no histórico Git.** Se você precisa saber "quem modificou este arquivo por último e quando", use `git log <arquivo>` em vez de adivinhar.

---

## 3. Estrutura de pastas do vault

### 3.1. Hierarquia planejada

```
fama-brain/
├── _infra/                       Infraestrutura do próprio vault
│   ├── brain-sync.sh             Script de sincronização (não editar exceto upstream)
│   ├── README.md                 Doc operacional pra adicionar novas VPSs
│   └── MANUAL-AGENTES.md         ← ESTE DOCUMENTO
│
├── 00-inbox/                     Capturas rápidas, notas efêmeras
│                                 Qualquer agente pode escrever aqui,
│                                 mas devem ser processadas depois
│
├── 10-projects/                  Projetos ativos
│   ├── openclaw/                 Workspace de memória do projeto OpenClaw
│   │   ├── CLAUDE.md             Contexto pra Claude Code trabalhar aqui
│   │   ├── status.md             Estado atual, próximos passos
│   │   ├── decisions.md          ADRs — decisões arquiteturais
│   │   └── sessions/             Logs de sessões de desenvolvimento
│   │       └── YYYY-MM-DD-titulo.md
│   │
│   ├── openclaw-mission-control/
│   ├── famachat-crm/
│   ├── portal-essencia-feliz/
│   ├── fama-marketing/
│   └── virtud-projetos/
│
├── 20-infrastructure/            Mapas de infraestrutura
│   ├── network-map.md            VPSs, IPs, regiões, serviços
│   ├── vps-inventory.md          Inventário técnico de cada VPS
│   └── services-running.md       Catálogo de serviços ativos
│
├── 30-agents/                    Workspace dos agentes autônomos
│   ├── ceo/                      → Agente CEO
│   │   ├── SOUL.md               Identidade e propósito
│   │   ├── status.md             Estado atual do agente
│   │   └── sessions/
│   │
│   ├── mkt/                      → Agente MKT
│   ├── fama-agent/               → Agente FamaAgent
│   ├── ef-arq/                   → Agente EF.Arq
│   ├── reno/                     → Agente Reno (imobiliário)
│   │   ├── SOUL.md
│   │   ├── status.md
│   │   ├── sessions/
│   │   └── leads/                ⚠️ IGNORADO PELO GIT (LGPD)
│   │                             Leads de clientes ficam aqui
│   │                             Sincronização via rsync+Tailscale
│   │
│   └── default/                  → Agente handler padrão
│
├── 40-knowledge/                 Base de conhecimento pessoal/profissional
│   ├── architecture/             Padrões, princípios, lições técnicas
│   ├── business/                 Conhecimento de domínio imobiliário/MCMV
│   └── tools/                    Documentação de ferramentas e integrações
│
├── 90-archive/                   Material histórico, sessões antigas,
│                                 conteúdo obsoleto mas preservado
│
├── README.md                     Índice geral do vault (entrada para humanos)
├── CLAUDE.md                     Contexto universal (entrada para agentes)
└── .gitignore                    Regras de exclusão Git (LGPD e ruído)
```

### 3.2. Significado dos prefixos numéricos

O padrão `NN-nome/` (ex: `10-projects/`, `30-agents/`) tem 2 propósitos:

1. **Ordenação alfabética previsível** no Obsidian e no `ls`
2. **Agrupamento conceitual** — números próximos indicam pastas relacionadas

Convenção:

- `00-` Capturas rápidas, inbox, processamento pendente
- `10-` Projetos ativos (trabalho em andamento)
- `20-` Infraestrutura (mapas, inventários)
- `30-` Agentes (workspace persistente de cada agente autônomo)
- `40-` Conhecimento consolidado (referência)
- `90-` Arquivo histórico

### 3.3. Pastas que começam com underscore

Pastas iniciadas com `_` (ex: `_infra/`) são **especiais do sistema**, não "projetos" no sentido usual. O underscore também garante que elas aparecem no topo da listagem alfabética.

---

## 4. Regras de escrita — o que cada agente pode e não pode fazer

### 4.1. Princípio fundamental

**Cada ator escreve apenas na sua própria área.**

Esta é a regra mais importante do sistema. Ela existe porque:

- Evita conflitos de merge entre commits automáticos de diferentes máquinas
- Torna a auditoria trivial (quem escreveu o quê)
- Permite que múltiplos agentes operem simultaneamente sem coordenação explícita
- Impede que um agente sobrescreva acidentalmente o trabalho de outro

### 4.2. Áreas de escrita por ator

| Ator | Pode escrever em | Não deve escrever em |
|---|---|---|
| **Humano (Renato)** | Qualquer lugar do vault | Nenhuma restrição técnica, mas evita mexer em `30-agents/*` fora de revisão |
| **Agente OpenClaw Reno** | `30-agents/reno/` apenas | Qualquer outra pasta |
| **Agente OpenClaw CEO** | `30-agents/ceo/` apenas | Qualquer outra pasta |
| **Agente OpenClaw MKT** | `30-agents/mkt/` apenas | Qualquer outra pasta |
| **Agente OpenClaw FamaAgent** | `30-agents/fama-agent/` apenas | Qualquer outra pasta |
| **Agente OpenClaw EF.Arq** | `30-agents/ef-arq/` apenas | Qualquer outra pasta |
| **Agente OpenClaw default** | `30-agents/default/` apenas | Qualquer outra pasta |
| **Claude Code em projeto X** | `10-projects/X/` (onde X é o projeto atual) | Outros projetos, `30-agents/`, `_infra/` |
| **Codex ou outro assistente** | `10-projects/<projeto>/` onde está trabalhando | Outras pastas |

### 4.3. Áreas de leitura livre

**Qualquer agente pode ler qualquer arquivo do vault.** Leitura nunca é restrita (exceto pelos arquivos excluídos do Git via `.gitignore`, que nem existem no vault para começo de conversa).

Use essa liberdade:

- Um Claude Code trabalhando no FamaChat CRM pode ler `10-projects/openclaw/status.md` para saber o que está acontecendo no projeto irmão
- O agente Reno pode ler `40-knowledge/business/mcmv-regras.md` quando precisar consultar regras do programa
- Qualquer agente pode ler `20-infrastructure/vps-inventory.md` para saber em qual VPS está rodando

### 4.4. O que fazer quando precisar escrever fora da sua área

**Você não deve.** Se você é o agente Reno e precisa atualizar algo em `10-projects/famachat-crm/`, você tem **três opções**:

1. **Escreva uma nota em `00-inbox/`** explicando a sugestão ou observação. O humano revisa depois e aplica onde for apropriado.
2. **Escreva um arquivo em sua própria pasta** (`30-agents/reno/sugestoes-famachat.md`) e sinalize ao humano que há algo para revisão.
3. **Peça permissão explícita ao humano** antes de agir fora da sua área.

**Nunca** escreva diretamente na área de outro agente ou projeto sem autorização.

---

## 5. Convenções de formatação

### 5.1. Nomes de arquivo

- **Sempre em kebab-case:** `status-do-projeto.md`, não `Status do Projeto.md` ou `status_do_projeto.md`
- **Sem acentos ou caracteres especiais:** `decisoes.md`, não `decisões.md`
- **Sempre extensão `.md`:** `README.md`, `CLAUDE.md`
- **Datas em ISO quando aplicável:** `sessions/2026-04-12-debug-crlf.md`
- **Nunca espaços, barras, pipes, parênteses no nome:** `* " \ / < > : | ? # ^ [ ] |` todos proibidos (limitação do sistema de arquivos + Obsidian)

### 5.2. Estrutura padrão de um arquivo de `status.md`

Todo `status.md` de projeto (em `10-projects/<projeto>/status.md`) deve seguir este template:

```markdown
# <Nome do projeto> — Status

**Última atualização:** 2026-04-12 16:40 -03
**Responsável humano:** Renato Faria
**Máquina(s) onde roda:** vmi3094636 (OpenClaw)

## Estado atual

<Parágrafo curto descrevendo onde está o projeto em termos de fase,
milestones, prioridade. Não mais que 3-4 linhas.>

## Próximos passos

1. <Item imediato>
2. <Item seguinte>
3. <Item seguinte>

## Bloqueios atuais

- <Se houver bloqueios técnicos ou de decisão, listar aqui>
- <Se nenhum bloqueio, escrever "Nenhum">

## Contexto técnico relevante

<Links ou referências para arquivos com mais detalhes dentro do vault,
usando a sintaxe de links do Obsidian: [[decisions]], [[architecture/api]]>

## Histórico recente

- **2026-04-12:** Milestone X concluído
- **2026-04-10:** Problema Y resolvido
- **2026-04-08:** Decisão Z tomada
```

### 5.3. Estrutura padrão de um session log

Session logs vão em `10-projects/<projeto>/sessions/YYYY-MM-DD-titulo-curto.md`:

```markdown
# Sessão — <título descritivo>

**Data:** 2026-04-12
**Duração:** ~2 horas
**Agente/ator:** Claude Code em vmi3094636
**Contexto trabalhado:** <qual parte do projeto foi trabalhada>

## Objetivo da sessão

<1-2 parágrafos descrevendo o que se tentou fazer>

## O que foi feito

1. <Ação 1>
2. <Ação 2>
3. <Ação 3>

## Decisões tomadas

- **<Decisão X>:** <justificativa>
- **<Decisão Y>:** <justificativa>

## Problemas encontrados

- <Problema 1>: <como foi resolvido ou status atual>

## Pendências para próxima sessão

- [ ] <Item pendente 1>
- [ ] <Item pendente 2>

## Arquivos modificados

- <caminho/relativo/arquivo1>
- <caminho/relativo/arquivo2>
```

### 5.4. Estrutura de um registro de decisão (ADR)

Decisões arquiteturais importantes vão em `10-projects/<projeto>/decisions.md` como entradas cronológicas:

```markdown
## ADR-001 — Uso de Drizzle ORM em vez de Prisma

**Data:** 2026-04-10
**Status:** Aceita
**Decisor:** Renato Faria

### Contexto

<Por que essa decisão precisou ser tomada>

### Opções consideradas

1. Prisma
2. Drizzle
3. TypeORM

### Decisão

Drizzle ORM.

### Justificativa

<Por que Drizzle foi escolhido>

### Consequências

<O que muda no sistema por causa dessa decisão>
```

### 5.5. Timestamps

**Sempre use ISO 8601 com timezone:**

- ✅ `2026-04-12 16:40:01 -03`
- ✅ `2026-04-12T16:40:01-03:00`
- ❌ `12/04/2026 às 16:40`
- ❌ `hoje às 16:40`
- ❌ `há 2 horas`

Horários relativos ("há 2 horas") ficam obsoletos instantaneamente e confundem leitura futura. Sempre absoluto, sempre com timezone.

### 5.6. Links internos entre arquivos do vault

Use a sintaxe de wikilinks do Obsidian para referenciar outros arquivos:

- `[[status]]` — link para um arquivo chamado `status.md` no mesmo diretório
- `[[10-projects/openclaw/status]]` — link absoluto
- `[[status|Estado atual]]` — link com texto alternativo

Evite links absolutos de filesystem (`/root/fama-brain/...`) — use wikilinks que funcionam no Obsidian e permanecem válidos quando o vault é replicado entre máquinas.

---

## 6. Dados sensíveis e conformidade LGPD

### 6.1. O que NUNCA pode ir pro Git

O `fama-brain` é um repositório privado, **mas ainda assim** há categorias de dados que nunca devem ser commitados. Isso protege contra:

- Vazamento acidental por mudança de visibilidade do repo
- Auditoria externa (ex: pedido judicial sobre um repo)
- Conformidade LGPD (Lei Geral de Proteção de Dados do Brasil)
- Comprometimento de credenciais se o GitHub for invadido

**Nunca commitar:**

- **Dados pessoais de clientes:** nome completo, CPF, RG, telefone, endereço, e-mail pessoal
- **Dados de leads do Reno:** conversas de WhatsApp, histórico de interesse, preferências identificáveis
- **Credenciais:** tokens de API, senhas, chaves SSH privadas, credenciais de banco de dados
- **Conteúdo de arquivos `.env`:** qualquer variável de ambiente com valor sensível
- **Backups com dados sensíveis:** dumps de Postgres com tabelas de usuários

### 6.2. Pastas e padrões ignorados pelo `.gitignore`

O arquivo `.gitignore` na raiz do vault deve conter (será expandido na Fase 2):

```gitignore
# Dados LGPD-sensíveis
30-agents/*/leads/
**/leads/
**/customers/
**/clients-data/

# Credenciais
**/credentials/
**/.env
**/.env.*
**/*.key
**/*.pem
**/secrets.*
**/tokens.*

# Ruído técnico
.obsidian/workspace.json
.obsidian/workspace-mobile.json
.trash/
node_modules/
.DS_Store
Thumbs.db
```

### 6.3. Sincronização separada de dados LGPD-sensíveis

Os dados de leads do Reno precisam sincronizar entre VPSs (diferentes agentes podem precisar deles), **mas não via Git**. A abordagem correta é:

- **Sincronização via `rsync`** direto entre VPSs
- **Rede privada via Tailscale** (não internet pública)
- **Criptografia em repouso** em cada VPS
- **Logs de acesso** a cada operação de leitura/escrita em leads

Esta infraestrutura paralela será configurada na Fase 2 e documentada em `20-infrastructure/lgpd-data-sync.md`.

### 6.4. O que fazer se você é um agente e precisa REFERENCIAR um lead

**Não escreva o nome ou contato do lead em arquivos versionados.** Use um identificador opaco:

❌ **Errado:**
```markdown
## Lead interessante: Maria da Silva, (34) 99999-9999
Interessada no empreendimento Jardim das Acácias, bloco B.
```

✅ **Correto:**
```markdown
## Lead #A1B2C3 (ver detalhes em leads/)
Interessado em empreendimento MCMV, preferência zona leste, entrada reduzida.
Follow-up agendado para 2026-04-15.
```

O identificador `#A1B2C3` é uma referência opaca. Os dados reais do lead (nome, telefone, histórico) ficam em `30-agents/reno/leads/A1B2C3.md` que NÃO vai pro Git.

---

## 7. Como ler e escrever no vault — guia por tipo de agente

### 7.1. Para agentes OpenClaw

**Você roda dentro de uma VPS Contabo** (provavelmente vmi3094636). O vault está em `/root/fama-brain/`.

**Leitura:**
- Acesse arquivos via filesystem normal: `cat /root/fama-brain/20-infrastructure/network-map.md`
- Use grep para busca: `grep -r "palavra-chave" /root/fama-brain/`
- Use find para listar: `find /root/fama-brain/30-agents/reno/ -name "*.md"`

**Escrita:**
- Escreva apenas na sua pasta: `echo "..." >> /root/fama-brain/30-agents/<seu-nome>/status.md`
- Ou use `tee`, editor interativo, ou API do OpenClaw
- **Nunca chame `git` diretamente.** O `brain-sync` cuida disso automaticamente nos próximos 5 minutos.

**Exemplo de workflow para agente Reno atender um lead:**

```bash
# 1. Identificador opaco do lead
LEAD_ID="L-$(date +%Y%m%d)-$(openssl rand -hex 3)"

# 2. Dados sensíveis em pasta ignorada pelo Git
cat > /root/fama-brain/30-agents/reno/leads/${LEAD_ID}.md <<EOF
# Lead ${LEAD_ID}

Nome: <nome completo>
Telefone: <número>
Contato inicial: $(date '+%Y-%m-%d %H:%M:%S %z')
...
EOF

# 3. Metadata não-sensível em arquivo versionado
cat >> /root/fama-brain/30-agents/reno/status.md <<EOF

## Novo lead: ${LEAD_ID}
**Data:** $(date '+%Y-%m-%d %H:%M:%S %z')
**Empreendimento de interesse:** <nome>
**Estágio:** Contato inicial
**Próximo follow-up:** <data>
EOF
```

A pasta `leads/` nunca vai pro Git (protegida pelo `.gitignore`). O `status.md` atualiza e propaga normalmente para todas as máquinas.

### 7.2. Para Claude Code

**Você pode estar rodando na máquina local do Renato ou dentro de uma das VPSs.**

**Descubra seu contexto:**

```bash
# Em qual máquina você está rodando?
hostname

# Qual é o caminho absoluto do vault?
# Na máquina local: C:\fama-brain (ou /mnt/c/fama-brain via WSL)
# Nas VPSs: /root/fama-brain

# Em qual projeto você está trabalhando?
# Isso geralmente vem do prompt do humano ou do diretório de trabalho atual
pwd
```

**Antes de começar a trabalhar num projeto:**

1. Leia o `CLAUDE.md` global do vault (`/root/fama-brain/CLAUDE.md` ou equivalente)
2. Leia o `CLAUDE.md` específico do projeto (`10-projects/<projeto>/CLAUDE.md`)
3. Leia o `status.md` do projeto para saber onde o trabalho parou
4. Leia os últimos 2-3 session logs em `sessions/` para entender o contexto recente
5. Se houver `decisions.md`, leia também — pode evitar retomar discussões já resolvidas

**Ao terminar uma sessão de trabalho:**

1. Crie um novo session log em `10-projects/<projeto>/sessions/YYYY-MM-DD-titulo.md`
2. Atualize `10-projects/<projeto>/status.md` se o estado mudou
3. Se tomou alguma decisão arquitetural importante, adicione a `decisions.md`
4. **Não faça commit/push.** O `brain-sync` da VPS (ou o plugin Obsidian Git local) cuida disso.

### 7.3. Para Codex e outros assistentes

A mesma regra da seção 7.2 se aplica. O importante é:

1. **Identifique em qual projeto você está trabalhando** antes de escrever qualquer coisa
2. **Escreva apenas em `10-projects/<projeto>/`** (a pasta do projeto atual)
3. **Leia amplamente** para ter contexto
4. **Documente decisões** em session logs
5. **Nunca chame Git diretamente** — confie no `brain-sync`

### 7.4. Para agentes genéricos (futuros)

Se você é um agente que não se encaixa em nenhuma das categorias acima, sua área padrão é `00-inbox/`. Escreva lá, seja claro sobre quem você é e o que fez, e deixe o humano processar depois.

Exemplo:

```markdown
# inbox/2026-04-12-agente-x-analise-mercado.md

**Agente:** Novo agente de análise de mercado imobiliário (v0.1)
**Executado em:** vmi3019449
**Data:** 2026-04-12 18:00:00 -03

## Tarefa solicitada

<descrição>

## Resultado

<resultado>

## Para onde este conteúdo deveria ir permanentemente

Sugiro arquivar em `40-knowledge/business/analise-mercado-2026-q2.md` após revisão humana.
```

---

## 8. Comandos úteis para operação no vault

### 8.1. Como consultar o vault (comandos read-only)

**Listar todos os projetos ativos:**

```bash
ls /root/fama-brain/10-projects/
```

**Ver status de todos os projetos:**

```bash
for dir in /root/fama-brain/10-projects/*/; do
  echo "=== $(basename $dir) ==="
  head -20 "${dir}status.md" 2>/dev/null || echo "(sem status.md)"
  echo ""
done
```

**Buscar por palavra-chave em todo o vault:**

```bash
grep -r --include="*.md" "palavra-chave" /root/fama-brain/
```

**Ver arquivos modificados recentemente:**

```bash
find /root/fama-brain/ -name "*.md" -mtime -1 -not -path "*/.git/*"
```

**Ver histórico de mudanças de um arquivo específico:**

```bash
cd /root/fama-brain
git log --follow --format="%h %ai %an: %s" -- 10-projects/openclaw/status.md
```

**Ver quem foi o último a modificar um arquivo:**

```bash
cd /root/fama-brain
git log -1 --format="%an <%ae> em %ai" -- caminho/do/arquivo.md
```

### 8.2. Como escrever no vault (comandos de criação/edição)

**Criar um novo session log:**

```bash
DATE=$(date +%Y-%m-%d)
TITLE="refatoracao-auth"
mkdir -p /root/fama-brain/10-projects/famachat-crm/sessions
cat > /root/fama-brain/10-projects/famachat-crm/sessions/${DATE}-${TITLE}.md <<'EOF'
# Sessão — Refatoração de autenticação

**Data:** 2026-04-12
...
EOF
```

**Atualizar um status.md apenas adicionando histórico:**

```bash
cat >> /root/fama-brain/10-projects/famachat-crm/status.md <<EOF

## Atualização — $(date '+%Y-%m-%d %H:%M:%S %z')

<conteúdo da atualização>
EOF
```

**Importante:** não há necessidade de commit manual. O `brain-sync` detecta as mudanças no próximo ciclo de 5 minutos e propaga automaticamente.

### 8.3. Como verificar se suas mudanças propagaram

**Na VPS onde você escreveu:**

```bash
# Ver últimos logs do brain-sync
tail -20 /var/log/brain-sync.log
```

Você deve ver algo como:

```
[2026-04-12 16:45:01] --- Iniciando brain-sync em vmi3094636 ---
[2026-04-12 16:45:01] Mudancas locais detectadas, commitando...
[main abc1234] auto: sync vmi3094636 2026-04-12 16:45:01
 1 file changed, 15 insertions(+)
[2026-04-12 16:45:01] Push concluido
```

Isso confirma que sua mudança saiu da VPS local e chegou no GitHub.

### 8.4. O que você NÃO deve fazer

**Nunca execute estes comandos como agente:**

```bash
# ❌ Não faça commit manual
git commit -m "..."

# ❌ Não faça push manual
git push origin main

# ❌ Não edite arquivos fora da sua área permitida
vim /root/fama-brain/10-projects/outro-projeto/status.md

# ❌ Não chame brain-sync manualmente (exceto em debug autorizado)
/usr/local/bin/brain-sync

# ❌ Não modifique a configuração do Git ou cron
git config --global ...
crontab -e

# ❌ Não mexa na pasta _infra/
echo "..." > /root/fama-brain/_infra/brain-sync.sh
```

Todas essas operações são responsabilidade do sistema de sincronização ou do humano. Agentes operam em nível de **conteúdo**, não de **infraestrutura**.

---

## 9. Cenários práticos

### 9.1. Cenário: Agente Reno recebe um lead novo

**Contexto:** Uma mensagem de WhatsApp chega para o agente Reno com interesse num empreendimento MCMV.

**Fluxo correto:**

1. Reno analisa a mensagem e extrai informações
2. Gera um identificador opaco: `L-20260412-a3f2b1`
3. Cria arquivo em `30-agents/reno/leads/L-20260412-a3f2b1.md` com dados completos (esta pasta é ignorada pelo Git)
4. Adiciona entrada em `30-agents/reno/status.md`:
   ```markdown
   ## Lead L-20260412-a3f2b1
   **Data:** 2026-04-12 14:30:00 -03
   **Estágio:** Contato inicial
   **Empreendimento:** Residencial Jardim (sem dados pessoais)
   **Próximo passo:** Envio de material em 2h
   ```
5. **Nada mais.** O `brain-sync` propaga o `status.md` nos próximos 5 min; os dados sensíveis em `leads/` não saem da máquina (sync via rsync+Tailscale é responsabilidade de outro mecanismo).

### 9.2. Cenário: Claude Code trabalhando num bug do FamaChat CRM

**Contexto:** Renato abriu o Claude Code na vmi2510860 (onde o FamaChat roda) e pediu para investigar um bug no módulo de autenticação.

**Fluxo correto:**

1. Claude Code lê `/root/fama-brain/CLAUDE.md` (contexto global)
2. Claude Code lê `/root/fama-brain/10-projects/famachat-crm/CLAUDE.md` (contexto específico)
3. Claude Code lê `/root/fama-brain/10-projects/famachat-crm/status.md` (estado atual)
4. Claude Code lê os 2-3 últimos session logs em `10-projects/famachat-crm/sessions/`
5. Claude Code lê `decisions.md` se existir
6. Claude Code investiga o bug no código real em `/var/www/famachat/`
7. Claude Code resolve o bug
8. Claude Code cria `10-projects/famachat-crm/sessions/2026-04-12-fix-auth-bug.md` documentando o que fez
9. Claude Code atualiza `10-projects/famachat-crm/status.md` se algo mudou
10. Claude Code termina — **não faz commit**. O `brain-sync` da vmi2510860 propaga nos próximos 5 min.

### 9.3. Cenário: Agente escreve algo por engano na área de outro agente

**Contexto:** Um agente OpenClaw CEO acidentalmente escreveu um arquivo em `30-agents/mkt/novo-insight.md`.

**Problema:** Isso viola a regra fundamental de "cada ator na sua área".

**Como resolver:**

1. **O agente CEO deve reconhecer o erro imediatamente** (via auto-validação no seu próprio código de guardrails)
2. **Mover o arquivo para `30-agents/ceo/`** ou para `00-inbox/`
3. **Registrar a correção** no `30-agents/ceo/status.md` como incidente
4. **Sinalizar ao humano** para revisão posterior

**Como prevenir:** agentes bem-projetados têm verificação de escopo antes de chamar APIs de escrita. Sempre validar que o caminho começa com o prefixo permitido.

### 9.4. Cenário: Múltiplos agentes editando em paralelo sem conflito

**Contexto:** Às 14:30, os seguintes eventos acontecem quase simultaneamente:

- Reno (vmi3094636) adiciona uma entrada em `30-agents/reno/status.md`
- CEO (vmi3094636) adiciona uma entrada em `30-agents/ceo/status.md`
- Claude Code em vmi2510860 atualiza `10-projects/famachat-crm/status.md`
- Renato (máquina local) edita `20-infrastructure/network-map.md` pelo Obsidian

**Resultado esperado:** Todos os 4 arquivos são commitados e pushados **sem conflito**, porque cada um tocou em um arquivo diferente. O Git resolve mergesemanticamente.

**Fluxo no próximo ciclo de cron (14:35):**

- vmi3094636 faz `git pull` → não tem nada novo do GitHub → detecta 2 arquivos locais modificados → commit + push
- vmi2510860 faz `git pull` → pega os 2 arquivos da vmi3094636 → detecta 1 arquivo local modificado → commit + push
- Obsidian local faz pull → pega os 3 arquivos de ambas VPSs → detecta 1 arquivo local modificado → commit-and-sync
- **Convergência total em até 10 minutos.**

Se, por infeliz coincidência, **dois atores editarem exatamente o mesmo arquivo nas mesmas linhas** na mesma janela de 5 minutos, aí sim pode haver conflito de merge. A solução para isso é o princípio da seção 4.1: **cada ator na sua área**. Se você respeita isso, conflitos são praticamente impossíveis.

### 9.5. Cenário: Você é um agente e o `brain-sync` está falhando

**Sintoma:** você escreveu um arquivo há 15 minutos e ele ainda não apareceu nas outras máquinas.

**Como investigar:**

```bash
# 1. Ver últimas execuções do brain-sync
tail -30 /var/log/brain-sync.log

# 2. Verificar se o cron está ativo
systemctl is-active cron

# 3. Verificar se o script existe e é executável
ls -la /usr/local/bin/brain-sync

# 4. Verificar se há problema de autenticação com GitHub
cd /root/fama-brain && git pull origin main

# 5. Verificar se há conflito não resolvido
cd /root/fama-brain && git status
```

**Se você encontrar algum problema, NÃO tente consertar sozinho.** Registre os sintomas em `30-agents/<seu-nome>/incidents.md` e **notifique o humano** pelo canal de comunicação disponível (Telegram, log de alerta, etc). Infraestrutura é responsabilidade humana.

---

## 10. Tabela rápida de referência — o que um agente precisa saber

| Pergunta | Resposta |
|---|---|
| Onde está o vault local na VPS? | `/root/fama-brain/` |
| Onde está o vault na máquina Windows? | `C:\fama-brain\` |
| Qual o nome do repositório GitHub? | `renatinhosfaria/fama-brain` (privado) |
| Em quantas máquinas o vault existe? | 6 (1 local + 5 VPSs) |
| Com que frequência o sync acontece? | A cada 5 minutos |
| Qual a latência total de propagação? | Até 10 minutos end-to-end |
| Em qual pasta devo escrever se sou um agente OpenClaw? | `30-agents/<meu-nome>/` |
| Em qual pasta devo escrever se sou Claude Code num projeto? | `10-projects/<projeto>/` |
| Posso escrever fora da minha área? | Não. Use `00-inbox/` se precisar sugerir algo |
| Posso ler qualquer lugar do vault? | Sim |
| Devo fazer commit/push manual? | Não. O `brain-sync` cuida automaticamente |
| Posso colocar dados de leads no vault? | Não no Git. Use `30-agents/reno/leads/` (ignorado pelo Git) |
| Posso colocar credenciais no vault? | **Nunca** |
| Qual formato para timestamps? | ISO 8601 com timezone: `2026-04-12 16:40:01 -03` |
| Qual formato para nomes de arquivo? | kebab-case sem acentos: `status-do-projeto.md` |
| Como ver logs do sync na VPS? | `tail -30 /var/log/brain-sync.log` |
| Como ver histórico de um arquivo? | `git log --follow <arquivo>` (no vault) |
| A quem pertence o repositório? | Renato Faria (`[email protected]`) |
| Em que fuso estão todas as máquinas? | America/Sao_Paulo (`-03`) |

---

## 11. Glossário

- **Vault:** termo do Obsidian para "uma pasta que é um espaço de conhecimento". Neste projeto, é sinônimo de `fama-brain`.
- **brain-sync:** script bash que sincroniza o vault via Git a cada 5 minutos em cada VPS.
- **Commit automático:** commit criado pelo `brain-sync` quando detecta mudanças locais. A mensagem identifica o hostname da máquina de origem.
- **Eventual consistency:** propriedade de sistemas distribuídos onde todos os nós convergem para o mesmo estado dado tempo suficiente, mas não instantaneamente.
- **FQDN:** Fully Qualified Domain Name. Algumas VPSs aparecem como `vmi2510860.contaboserver.net` em vez de apenas `vmi2510860` — é o nome completo.
- **LF vs CRLF:** tipos de quebra de linha. LF (`\n`) é padrão Unix/Linux/Mac. CRLF (`\r\n`) é padrão Windows. O vault usa LF universalmente.
- **LGPD:** Lei Geral de Proteção de Dados do Brasil (similar à GDPR europeia). Regulamenta o uso de dados pessoais.
- **MCMV:** Minha Casa Minha Vida, programa habitacional federal brasileiro. Contexto de negócio principal da Fama.
- **OpenClaw:** framework open-source de agentes de IA sobre WebSocket gateway. Hospedeiro dos 6 agentes da Fama (CEO, MKT, FamaAgent, EF.Arq, Reno, default).
- **Rebase:** técnica do Git para reorganizar commits de forma linear. O `brain-sync` usa `git pull --rebase` para manter histórico limpo.
- **SOUL.md:** arquivo de identidade e propósito de um agente OpenClaw. Contém sua personalidade, objetivos e restrições.
- **Wikilink:** sintaxe do Obsidian para links entre arquivos: `[[nome-do-arquivo]]`.

---

## 12. Como este manual deve ser usado por agentes

### 12.1. Quando ler este manual

- **Ao iniciar uma nova sessão** dentro de qualquer máquina do ecossistema fama-brain
- **Antes de escrever o primeiro arquivo** no vault
- **Quando tiver dúvida** sobre onde escrever ou como formatar
- **Periodicamente**, para captar atualizações (este manual é versionado e evolui com o sistema)

### 12.2. Como encontrar este manual

**Em qualquer máquina:**
- `/root/fama-brain/_infra/MANUAL-AGENTES.md` (nas VPSs)
- `C:\fama-brain\_infra\MANUAL-AGENTES.md` (máquina local Windows)

**No Obsidian Desktop:**
- Navegue até a pasta `_infra/` no explorer e abra `MANUAL-AGENTES.md`

**Via busca:**
- `grep -l "Manual Operacional para Agentes" /root/fama-brain/**/*.md`

### 12.3. O que fazer se este manual contradiz uma instrução recebida

**A instrução direta do humano sempre tem prioridade.** Se Renato te dá uma instrução que contradiz o que está neste manual:

1. **Siga a instrução do humano**
2. **Sinalize a contradição** em `30-agents/<seu-nome>/questions.md` ou `00-inbox/`
3. **Documente** que você notou a divergência para o humano poder atualizar o manual se necessário

Este manual é uma referência, não uma autoridade absoluta. A autoridade é o humano responsável pelo sistema.

### 12.4. Como sugerir melhorias neste manual

Se você, como agente, identificou uma situação que não está coberta pelo manual, ou uma regra que seria útil adicionar:

1. **Não edite este arquivo diretamente.** Ele mora em `_infra/`, que é área de sistema.
2. **Escreva em `00-inbox/sugestoes-manual-agentes-<data>.md`** com sua proposta
3. **O humano revisa e decide** se incorpora à próxima versão

---

## 13. Versionamento deste manual

Este manual é versionado junto com o vault. Mudanças importantes devem ser registradas no fim deste arquivo, em ordem cronológica reversa (mais recente no topo).

### Histórico de versões

**v1.0 — 2026-04-12**
- Versão inicial criada após setup completo do fama-brain
- 5 VPSs configuradas e validadas em produção
- Cobertura: arquitetura, regras de escrita, convenções, cenários práticos
- Baseado na Sessão 5 de setup (documentada separadamente em `90-archive/sessao-5-setup-fama-brain.md`)

---

## 14. Contato e suporte

**Responsável pelo sistema:** Renato Faria
**Email:** renatinhosfaria@gmail.com

**Em caso de:**
- **Bug técnico no `brain-sync`** → documentar em `30-agents/<seu-nome>/incidents.md` + notificar humano
- **Dúvida sobre escopo** → parar e perguntar antes de agir
- **Contradição entre manual e instrução humana** → seguir humano, documentar divergência
- **Dados sensíveis vazando acidentalmente** → parar imediatamente, remover conteúdo, notificar humano, não fazer push até orientação

---

*Este manual é documento vivo. Ele existe para que qualquer agente, ao entrar no ecossistema fama-brain pela primeira vez, tenha um ponto único de referência sobre como operar corretamente. Mantê-lo atualizado é responsabilidade coletiva: humano atualiza quando arquitetura muda, agentes sugerem melhorias via inbox.*

*O `fama-brain` é mais do que um sistema de arquivos sincronizado. É um ambiente compartilhado de trabalho entre humanos e agentes autônomos, e este manual é o contrato social que torna essa colaboração possível.*
