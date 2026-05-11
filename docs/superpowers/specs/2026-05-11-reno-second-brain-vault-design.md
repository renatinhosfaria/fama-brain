---
type: design
owner: renato
created: 2026-05-11
updated: 2026-05-11
tags: [design, vault, second-brain, architecture]
---
# Design: FAMA-BRAIN como segundo cérebro do Reno

## Status

Design aprovado em brainstorming. A spec escrita aguarda revisão humana antes de virar plano de implementação.

## Objetivo

Reestruturar o `fama-brain` para ser, nesta fase, o segundo cérebro operacional do Reno. O vault deixa de ser modelado como uma casa separada para cada agente e passa a ser uma memória global organizada por tipo de conhecimento.

Multiagente continua como possibilidade futura, mas não comanda a arquitetura desta fase.

## Não objetivos

- Não implementar mudanças no MCP nesta primeira etapa.
- Não criar um agente curador intermediário.
- Não preservar `_agents/` como namespace permanente.
- Não transformar frontmatter YAML em banco de dados paralelo.

## Arquitetura alvo

A estrutura alvo do vault é:

```text
README.md
_meta/
_entities/
_journal/
  reno/
_decisions/
_runbooks/
_projects/
_shared/
_hubs/
```

Papéis das áreas:

- `README.md`: mapa principal do vault, com explicação curta, links canônicos e regras de navegação.
- `_meta/`: governança do próprio vault, incluindo schema, inventário, políticas e mapas técnicos.
- `_entities/`: pessoas, leads, clientes, corretores, imóveis, construtoras, empreendimentos e organizações.
- `_journal/reno/`: eventos operacionais do Reno, como atendimentos, auditorias, rotinas, logs e observações datadas.
- `_decisions/`: decisões duráveis que devem sobreviver ao atendimento ou ao dia operacional.
- `_runbooks/`: procedimentos, playbooks e modo de operação do Reno.
- `_projects/`, `_shared/`, `_hubs/`: áreas globais auxiliares, mantidas quando tiverem função clara no mapa raiz.

A mudança central é remover `_agents/` como namespace permanente. O Reno passa a escrever e consultar o vault como uma memória organizada por assunto.

## Modelo de atendimentos e entidades

Atendimentos do Reno usam modelo duplo:

```text
_entities/
  marcia-maria.md
  garden-sul.md
  union-vista.md

_journal/
  reno/
    2026-05-11-atendimento-marcia-maria.md
    2026-05-11-auditoria-repescagem.md
```

Regra de fronteira:

- `_entities/` guarda quem ou o que é aquilo.
- `_journal/reno/` guarda o que aconteceu em uma data ou operação.

Uma nota de lead em `_entities/` deve ser o perfil consolidado: nome, tipo, status atual, preferências, restrições, imóveis relacionados, histórico resumido e links para eventos relevantes. Ela não deve virar um despejo cronológico infinito.

Uma nota em `_journal/reno/` registra o evento operacional: atendimento do dia, auditoria, repescagem, follow-up, visita, rotina silenciosa, erro operacional ou decisão pontual. Cada nota deve ter data, links para entidades envolvidas, resumo do evento, ação tomada, resultado e próximo passo quando existir.

Na migração, os arquivos atuais de `_agents/reno/atendimentos/` serão lidos caso a caso. O conteúdo durável vai para `_entities/`; o histórico ou evento operacional vai para `_journal/reno/`. Quando houver risco de perder sentido, o texto original pode ser preservado em seção curta de evidência ou referência, mas o formato final deve ser limpo.

## Schema, frontmatter e links

O vault deve usar o schema v1 ideal nesta migração, mesmo que o MCP precise se adaptar depois.

Modelo base:

```yaml
---
type: entity
owner: renato
created: 2026-05-11
updated: 2026-05-11
tags: [lead, atendimento]
---
```

Campos obrigatórios na maioria das notas:

- `type`: categoria da nota, como `entity`, `journal`, `decision`, `runbook`, `moc` ou `meta`.
- `owner`: dono lógico da escrita, como `renato` ou `reno`.
- `created`: data de criação da nota.
- `updated`: data da última atualização relevante.
- `tags`: 3 a 5 tags planas, em kebab-case, sem hierarquia.

Campos específicos entram apenas quando ajudam. Exemplos:

- Entidade de lead: `entity_type`, `crm_id`, `status`, `related_project`.
- Journal: `event_date`, `source`, `related_entities`.

Links internos devem ser Obsidian-first, no formato `[[nome-da-nota]]`. IDs externos, como CRM, FamaChat, WhatsApp ou campanha, ficam no corpo da nota em seção própria, não como substituto do link interno.

Regra de ouro: frontmatter identifica e classifica; o corpo explica.

## Migração e deduplicação

A migração será completa, não gradual. O objetivo é sair do modelo atual com `_agents/reno/**` e chegar ao modelo limpo, global por tipo, com o mínimo possível de legado estrutural.

Ordem da migração:

```text
1. Congelar mapa alvo
2. Preparar README, _meta/schema e índices
3. Migrar perfil/contexto/runbooks do Reno
4. Migrar decisions
5. Migrar atendimentos para _entities + _journal/reno
6. Migrar auditorias e journals operacionais
7. Corrigir links internos
8. Remover _agents/
9. Rodar auditoria final do vault
```

A deduplicação de entidades será agressiva, mas não cega. Se dois arquivos provavelmente representam a mesma pessoa, empreendimento ou organização, devem ser consolidados em uma entidade canônica, preservando aliases e IDs no corpo. Se houver risco real de juntar coisas diferentes, os arquivos devem permanecer separados e a ambiguidade deve ser marcada.

Para entidades, a nota final deve preferir verdade consolidada em vez de histórico bruto. O histórico detalhado fica nos journals. Para atendimentos antigos, o texto original só deve ser preservado quando a reescrita puder perder nuance comercial, decisão operacional ou evidência relevante.

## Escrita futura do Reno

Depois da migração, o Reno poderá escrever diretamente nas áreas globais do vault, sem passar por `_agents/reno/` e sem depender de curadoria intermediária.

Regras de destino:

```text
Novo fato durável sobre pessoa/imóvel/empresa -> _entities/
Evento operacional datado -> _journal/reno/
Procedimento ou modo de operação -> _runbooks/
Decisão que muda comportamento futuro -> _decisions/
Governança do vault/schema/mapa -> _meta/
Projeto ou produto -> _projects/
```

Ferramentas especializadas continuam desejáveis quando reduzirem erro, por exemplo para append de decisão, criação de journal operacional, atualização de entidade por CRM ID ou manutenção de índice. O desenho do vault, porém, não deve depender de uma ferramenta engessando todos os caminhos desde o primeiro dia.

O MCP fica fora desta primeira implementação. Esta spec define apenas o formato alvo do vault. A adaptação de ownership, validações e ferramentas MCP entra depois.

## Critérios de aceite

- `README.md` explica a nova arquitetura e aponta para os índices certos.
- `_meta/schema.md` descreve o schema v1 ideal usado na migração.
- Nenhum link interno canônico aponta para `_agents/reno/**`.
- `_agents/` deixa de ser necessário como namespace permanente.
- Atendimentos antigos relevantes aparecem como combinação de `_entities/` e `_journal/reno/`.
- Entidades duplicadas foram consolidadas ou marcadas como ambíguas.
- Cada área global tem índice útil ou explicação curta.
- O Git fica limpo após commit da migração.

## Auditoria final

A implementação deve terminar com uma auditoria prática:

```text
1. Listar arquivos órfãos
2. Buscar links quebrados para _agents/
3. Buscar frontmatter ausente ou inválido
4. Revisar entidades com nomes parecidos
5. Revisar journals sem entidade relacionada
6. Revisar README e índices
7. Registrar decisão final em _decisions/
```

## Riscos

Risco aceito: algum histórico bruto pode ficar menos literal do que o arquivo original. A proteção é preservar trechos originais quando houver risco de perda de nuance comercial, evidência ou decisão operacional.

Riscos não aceitos:

- Perder contexto de atendimento.
- Apagar entidade sem rastreio.
- Deixar o vault com duas arquiteturas competindo.

## Próximo passo

Após aprovação desta spec, criar um plano de implementação detalhado antes de tocar na migração real.
