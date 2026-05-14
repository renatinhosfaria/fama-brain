---
type: context
owner: renato
created: '2026-05-12'
updated: '2026-05-12'
tags:
  - design-spec
  - reno
  - vault
---
# Design: Manuais de operacao do vault para o Reno

## Status

Design aprovado em conversa com Renato Faria em 2026-05-12. Implementacao ainda nao iniciada. Este documento define o escopo e deve ser revisado antes do plano de implementacao.

## Contexto

O `fama-brain` e o segundo cerebro operacional do Reno e a memoria de longo prazo da Fama Negocios Imobiliarios. A fase atual e Reno-first: o vault e organizado por tipo de conhecimento, nao por namespace permanente de agente. O namespace legado `_agents/` nao deve ser recriado nesta fase.

O Reno precisa de instrucoes claras para buscar informacao, decidir se deve criar ou atualizar documentos e registrar eventos, fatos, decisoes e procedimentos no lugar certo.

## Objetivos

- Criar uma camada de orientacao operacional para o Reno dentro do vault.
- Manter a raiz do vault como portal de entrada.
- Criar `README.md` curto em pastas principais, com regras normativas locais.
- Criar um runbook central em `_runbooks/reno-vault-operacao.md` com o fluxo completo de busca, escrita, atualizacao e excecoes.
- Reduzir duplicidade, escrita em pasta errada e promocao de suposicoes para verdade duravel.

## Fora de escopo

- Reabrir a arquitetura multiagente.
- Recriar `_agents/`.
- Alterar o MCP `obsidian`.
- Migrar o schema v1 em massa.
- Criar automacoes, scripts ou validadores nesta primeira versao.

## Decisoes aprovadas

1. O manual sera escrito apenas para o Reno agora.
2. O estilo sera normativo com explicacao curta.
3. Cada `README.md` local tera 5 a 10 regras acionaveis.
4. O `README.md` da raiz sera o portal do vault, nao um manual longo.
5. O runbook central sera `_runbooks/reno-vault-operacao.md`.

## Documentos alvo

| Caminho | Papel |
|---|---|
| `README.md` | Portal de entrada, mapa geral, regras universais e links para manuais. |
| `_entities/README.md` | Regras para memoria semantica: pessoas, imoveis, organizacoes e projetos. |
| `_journal/README.md` | Regras gerais para memoria episodica e eventos datados. |
| `_journal/reno/README.md` | Regras especificas para eventos operacionais do Reno. |
| `_runbooks/README.md` | Regras para procedimentos e manuais operacionais. |
| `_runbooks/reno-vault-operacao.md` | Manual completo de operacao do vault pelo Reno. |
| `_decisions/README.md` | Regras para decisoes duraveis, aprovacao, supersessao e historico. |
| `_hubs/README.md` | Regras para mapas de navegacao e sinteses sem duplicar conteudo. |
| `_projects/README.md` | Regras para trabalho em andamento e projetos ativos ou arquivados. |
| `_meta/README.md` | Regras para schema, inventario, governanca e avaliacao. |
| `_shared/README.md` | Regras para contexto compartilhado de alto nivel. |
| `_shared/context/README.md` | Regras para contexto institucional, conceitos e referencias. |

## Estrutura dos READMEs locais

Cada `README.md` local deve seguir esta estrutura curta:

```md
# Nome da pasta

## Finalidade
Uma frase dizendo para que a pasta existe.

## Quando buscar aqui
3-5 casos objetivos.

## Quando escrever aqui
3-5 casos objetivos.

## Regras para o Reno
5-10 regras normativas com "Deve", "Nao deve", "Antes de" ou "Se".
Cada regra pode ter uma frase curta de motivo quando isso reduzir ambiguidade.

## Ver tambem
Links para o runbook central e notas relacionadas.
```

## Estrutura do runbook central

O arquivo `_runbooks/reno-vault-operacao.md` deve seguir esta estrutura:

```md
# Runbook: Operacao do vault pelo Reno

## Objetivo
## Regra principal
## Ordem padrao de busca
## Como decidir entre criar, atualizar ou nao escrever
## Regras por tipo de memoria
## Fluxos operacionais
## Excecoes que exigem confirmacao
## Checklist antes de escrever
## Checklist depois de escrever
```

## Fluxo operacional do Reno

1. Entender a intencao: responder, buscar contexto, registrar evento, atualizar fato duravel, criar decisao, consultar procedimento ou mexer em projeto.
2. Buscar antes de criar: comecar pelo `README.md` da raiz quando a topologia estiver incerta; usar hubs e runbooks para orientacao; buscar a pasta de conteudo correta antes de escrever.
3. Atualizar antes de duplicar: se ja existir nota canonica, atualizar ou referenciar essa nota. Criar nota nova apenas para nova entidade, novo evento, nova decisao ou novo procedimento.
4. Separar fato, evento, decisao e procedimento: evento em `_journal/reno/`; fato duravel em `_entities/`; decisao aprovada em `_decisions/`; modo de operar em `_runbooks/`.
5. Tratar incerteza como incerteza: informacao inferida, conflito entre notas ou fonte fraca nao deve virar verdade duravel sem marcacao ou confirmacao.
6. Parar em excecoes: conflito de ownership, duplicidade critica, decisao estrategica, schema novo ou dado sensivel exigem confirmacao do Renato antes de escrita substantiva.

## Regras universais para a raiz

O `README.md` da raiz deve conter regras universais curtas:

- Deve servir como ponto de entrada do Reno no vault.
- Deve apontar para o runbook central.
- Deve listar a funcao de cada pasta principal.
- Deve reforcar que o vault e Reno-first nesta fase.
- Deve orientar a ordem padrao de busca.
- Deve declarar a regra de ouro: buscar antes de criar, atualizar antes de duplicar.

## Tratamento de erros e excecoes

O runbook central deve dizer que o Reno para e pede confirmacao quando:

- houver conflito entre duas notas sobre o mesmo fato;
- a escrita envolver informacao sensivel ou estrategica;
- a escrita parecer alterar uma decisao aprovada;
- a escrita exigir novo tipo de documento ou mudanca de schema;
- o MCP ou ownership bloquear a operacao;
- houver risco de criar entidade duplicada;
- a fonte da informacao nao for confiavel o suficiente.

## Criterios de verificacao

A implementacao sera considerada pronta quando:

- todos os documentos alvo existirem;
- cada README local tiver finalidade, busca, escrita, regras e links;
- o runbook central cobrir busca, escrita, atualizacao, excecoes e checklists;
- o `README.md` da raiz apontar para o runbook central e para os manuais locais;
- nao houver marcadores de pendencia ou placeholders;
- os links internos Obsidian apontarem para notas que existem;
- `git status --short` mostrar apenas as mudancas esperadas antes do commit.

## Riscos

- Duplicar regras longas em todos os READMEs e dificultar manutencao.
- Tornar o runbook longo demais para uso rapido.
- Escrever regras genericas para futuros agentes e perder o foco Reno-first.
- Criar regra normativa que contradiga `_shared/context/AGENTS.md` ou `_meta/schema.md`.

## Mitigacoes

- Manter READMEs locais curtos e acionaveis.
- Concentrar raciocinio completo no runbook central.
- Linkar para `_shared/context/AGENTS.md` quando a regra envolver ownership.
- Linkar para `_meta/schema.md` quando a regra envolver schema ou tipos de memoria.
- Escrever sempre em portugues do Brasil e com datas absolutas.
