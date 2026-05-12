---
created: '2026-05-12'
owner: renato
tags:
  - design-spec
  - reno
  - vault
  - second-brain
  - skills
type: context
updated: '2026-05-12'
---
# Design: Memoria autonoma do Reno no vault Fama Brain

## Status

Design aprovado por Renato Faria em 2026-05-12. Implementacao ainda nao iniciada. Este documento formaliza a Opcao C: Reno pode atualizar entidades, runbooks, hubs e contexto, com governanca, evidencia, validacao MCP e auditoria.

## Contexto

O `fama-brain` e a segunda memoria operacional do Reno e a memoria de longo prazo da Fama Negocios Imobiliarios. A reformulacao recente mudou o vault para uma arquitetura Reno-first por tipo de conhecimento, abandonando o namespace legado `_agents/` como area ativa.

A estrutura ativa validada via MCP inclui:

- `_entities/` para fatos duraveis e perfis consolidados;
- `_journal/reno/` para eventos, atendimentos, interacoes e auditorias;
- `_runbooks/` para procedimentos operacionais;
- `_decisions/` para decisoes aprovadas;
- `_shared/context/` para contexto institucional e conhecimento reutilizavel;
- `_hubs/` para navegacao e mapas de conhecimento;
- `_meta/` para schema, migracao, inventario e governanca tecnica;
- `docs/superpowers/specs/` para specs de design aprovadas.

O CRM/FamaChat continua sendo a fonte de verdade operacional. O vault complementa o CRM como memoria contextual, curada e recuperavel.

## Objetivos

- Configurar o vault como segunda memoria autonoma do Reno.
- Permitir que Reno atualize entidades, runbooks, hubs e contexto sem depender de aprovacao para cada correcao simples.
- Manter CRM/FamaChat como autoridade para estado operacional.
- Evitar que o vault vire copia bruta do CRM ou lixeira de logs.
- Dar rastreabilidade para toda mudanca relevante.
- Atualizar as skills Reno/Fama afetadas para refletir a nova topologia do vault.
- Impedir regressao para o namespace legado `_agents/`.

## Fora de escopo

- Alterar o MCP `obsidian`.
- Mudar schema central do vault sem aprovacao explicita.
- Mudar ownership ou estrutura top-level sem aprovacao explicita.
- Substituir CRM/FamaChat pelo vault.
- Migrar em massa todos os documentos do vault nesta etapa.
- Recriar `_agents/` como area ativa.
- Executar atendimento ou envio WhatsApp durante esta fase de design.

## Decisoes aprovadas

1. A opcao escolhida e a **Opcao C — Autonoma**.
2. Reno pode atualizar `_entities/`, `_runbooks/`, `_hubs/`, `_shared/context/` e `_journal/reno/` conforme o tipo de conhecimento.
3. `_decisions/` exige aprovacao humana para registrar decisao canonica.
4. `_meta/` permite auditoria e documentacao, mas mudanca estrutural exige aprovacao.
5. Toda escrita relevante deve ter fonte rastreavel.
6. Toda escrita relevante deve ter read-back via MCP.
7. Skills Reno/Fama afetadas devem ser auditadas e atualizadas para a nova regra.
8. Nenhuma escrita nova deve usar `_agents/`.

## Principio central

Reno pode manter o vault como memoria operacional viva, mas a autonomia e governada por tipo de conhecimento, evidencia, impacto e validacao.

A regra principal e:

> CRM decide o estado operacional. Vault preserva contexto curado, memoria historica, conhecimento institucional, procedimentos e navegacao.

## Arquitetura por camadas

### CRM/FamaChat

Autoridade para:

- status do cliente;
- `broker_id`;
- telefone e dados de contato;
- appointments;
- visitas;
- vendas;
- notas operacionais;
- `meta_data.reno_followup`;
- efeitos reais de atendimento.

### `_journal/reno/`

Memoria episodica. Registra:

- primeiro contato;
- resposta;
- diagnostico;
- objecao;
- falha operacional;
- agendamento;
- handoff;
- auditoria;
- atualizacao relevante feita em outras notas do vault.

### `_entities/`

Memoria semantica. Consolida fatos duraveis sobre:

- clientes e leads;
- empreendimentos;
- bairros e regioes;
- construtoras;
- corretores e parceiros;
- produtos ou conceitos comerciais estaveis.

### `_runbooks/`

Memoria procedural. Guarda:

- procedimentos recorrentes;
- playbooks de atendimento;
- criterios operacionais;
- rotinas de auditoria;
- ajustes de processo aprovados ou evidenciados.

### `_decisions/`

Memoria decisoria. Guarda decisoes aprovadas. Reno pode propor decisao, mas nao pode inventar aprovacao.

### `_shared/context/`

Memoria institucional. Guarda conhecimento reutilizavel sobre:

- Fama;
- credito imobiliario;
- produtos;
- metodologia;
- linguagem comercial;
- contexto util para mais de um atendimento ou agente.

### `_hubs/`

Memoria de navegacao. Organiza links, mapas e pontos de entrada. Hubs apontam para fontes de verdade, mas nao duplicam conteudo.

### `_meta/`

Governanca tecnica. Guarda schema, inventarios, migracoes e avaliacoes. Alteracoes estruturais exigem aprovacao explicita.

## Matriz de autonomia

### Autonomia alta

Reno pode escrever livremente em:

- `_journal/reno/` para eventos, atendimentos, interacoes e auditorias;
- `_hubs/` para links, indices e navegacao, desde que nao transforme hub em fonte de verdade.

### Autonomia alta com evidencia

Reno pode criar ou atualizar em:

- `_entities/` quando houver fato confirmado, preferencia declarada ou correcao objetiva;
- `_shared/context/` quando o conhecimento for institucional, reutilizavel e nao individual de um cliente.

### Autonomia media/alta com rastro

Reno pode atualizar `_runbooks/` quando:

- corrigir instrucao obsoleta;
- registrar procedimento recorrente;
- melhorar fluxo ja existente;
- remover drift contra arquitetura aprovada;
- deixar changelog ou journal explicando a mudanca.

### Autonomia baixa

Reno pode escrever em `_decisions/` apenas quando:

- Renato aprovou explicitamente;
- existe evidencia clara de decisao humana;
- a nota for rascunho/proposta e nao decisao aprovada.

### Autonomia restrita

Reno pode atuar em `_meta/` para:

- registrar auditoria;
- documentar problema de schema;
- atualizar inventario objetivo;
- documentar migracao ja aprovada.

Reno nao deve alterar schema, ownership ou estrutura top-level sem aprovacao explicita.

## Fluxo de leitura antes de atender ou decidir

Reno deve ler as fontes nesta ordem:

1. **CRM/FamaChat**: validar cliente, `broker_id`, status, telefone, historico real, appointments, visitas, vendas e `meta_data`.
2. **`_entities/`**: recuperar perfil consolidado, preferencias, entidades relacionadas e fatos duraveis.
3. **`_journal/reno/`**: recuperar interacoes recentes, tentativas anteriores, respostas, objecoes, auditorias e proximo passo.
4. **`_runbooks/`**: aplicar procedimento correto para o caso.
5. **`_decisions/`**: checar decisoes aprovadas que alterem comportamento.
6. **`_shared/context/`**: usar contexto institucional e comercial reutilizavel.
7. **`_hubs/`**: navegar e descobrir notas relacionadas.

## Fluxo de escrita depois de um evento

Depois de um evento, Reno deve escrever em camadas:

1. Atualizar CRM primeiro quando houver efeito operacional.
2. Registrar evento em `_journal/reno/`.
3. Atualizar `_entities/` somente se houver fato duravel.
4. Atualizar `_runbooks/` se houve aprendizado procedural reutilizavel.
5. Atualizar `_shared/context/` se houve aprendizado institucional.
6. Atualizar `_hubs/` se houver novo caminho util de navegacao.
7. Registrar em `_decisions/` apenas quando houver aprovacao.
8. Validar escrita com read-back.

## Classes de conteudo

Reno deve diferenciar:

- **Fato confirmado**: veio de CRM, cliente, decisao aprovada ou fonte confiavel.
- **Preferencia declarada**: dito explicitamente pelo cliente.
- **Inferencia**: deducao que deve ser marcada como inferencia.
- **Hipotese**: suposicao fraca, preferencialmente registrada no journal como pendencia.
- **Decisao**: regra aprovada, registrada em `_decisions/` somente com aprovacao.
- **Procedimento**: passo repetivel, registrado em `_runbooks/`.
- **Contexto institucional**: conhecimento reutilizavel, registrado em `_shared/context/`.

## Evidencia obrigatoria

Toda atualizacao fora de `_journal/reno/` precisa de fonte rastreavel.

Fontes aceitas:

- CRM/FamaChat;
- nota ou timeline do CRM;
- interacao em `_journal/reno/`;
- decisao em `_decisions/`;
- instrucao explicita de Renato;
- documento institucional existente;
- evidencia operacional verificada por ferramenta.

Se Reno nao consegue explicar de onde veio uma afirmacao, nao deve consolidar como fato duravel.

## Mudancas permitidas sem aprovacao humana

Reno pode fazer autonomamente:

- criar journal de atendimento, evento ou auditoria;
- atualizar entidade com fato confirmado ou preferencia declarada;
- corrigir link quebrado ou navegacao em hub;
- adicionar link de nova entidade, runbook ou contexto ao hub;
- registrar aprendizado procedural pequeno em runbook quando nao muda politica critica;
- corrigir drift obvio, como referencia ativa a `_agents/reno/atendimentos`;
- atualizar contexto compartilhado com informacao institucional confirmada;
- registrar proposta de decisao sem marcar como aprovada.

## Mudancas que exigem aprovacao humana

Reno deve pedir aprovacao ou registrar proposta quando a mudanca:

- altera politica comercial;
- muda regra de status do CRM;
- muda regra de follow-up, cadencia, arquivamento ou reativacao;
- altera schema do vault;
- altera ownership;
- muda estrutura top-level;
- sobrescreve decisao anterior;
- apaga ou arquiva conteudo relevante;
- altera runbook critico de producao;
- muda tom ou metodo central do Reno;
- transforma hipotese em regra geral.

## Resolucao de conflitos

1. CRM vence estado operacional.
2. Decisao aprovada vence runbook antigo.
3. Runbook vigente vence comportamento improvisado.
4. Fato mais recente com evidencia vence fato antigo.
5. Journal preserva evento; entidade preserva estado consolidado.
6. Conflito importante vira auditoria em `_journal/reno/` ou `_meta/`.

## Seguranca e privacidade

Reno nao deve salvar no vault:

- tokens;
- senhas;
- API keys;
- connection strings;
- payload bruto de webhook;
- logs tecnicos completos;
- tool outputs extensos;
- raciocinio interno;
- dados sensiveis sem utilidade operacional;
- conversas inteiras sem curadoria;
- mensagens internas como se fossem cliente-facing.

Dados pessoais entram apenas quando forem uteis para atendimento, rastreabilidade ou memoria operacional.

## Validacao MCP e read-back

Toda escrita relevante deve seguir este padrao:

1. Escrever via `mcp-obsidian`.
2. Reler a nota.
3. Confirmar frontmatter valido.
4. Confirmar path canonico.
5. Confirmar ausencia de duplicidade evidente.
6. Confirmar que `_agents/` nao foi recriado.
7. Registrar journal quando a mudanca for relevante.

Se a leitura posterior falhar, a escrita nao deve ser tratada como sucesso confirmado.

## Governanca das skills Reno/Fama

A nova regra do vault deve ser aplicada nas skills afetadas, sem copiar a especificacao inteira para todas elas.

### Fonte canonica

A regra completa deve ficar em:

- `fama-reno-vault-governance`;
- `fama-reno-governance`;
- `_runbooks/reno-vault-operacao.md`;
- `_runbooks/reno-second-brain-governance.md`;
- `_meta/schema.md`;
- `_hubs/reno-hub.md`;
- decisao nova em `_decisions/`, quando implementada.

### Skills operacionais afetadas

Devem ser auditadas e atualizadas, quando necessario:

- `fama-reno-webhook-first-contact`;
- `fama-reno-whatsapp-qualification`;
- `repescagem-follow-up`;
- `resgate-follow-up`;
- `agendamento-follow-up`;
- `reno-visit-scheduling`;
- `fama-reno-follow-up-worker-audit`;
- `reno-follow-up-recovery`;
- `fama-reno-skill-authoring`;
- qualquer skill que mencione Obsidian, vault, CRM para vault, `_agents/`, `_entities/` ou `_journal/reno/`.

### Bloco curto esperado nas skills afetadas

Cada skill operacional afetada deve declarar que:

- quando tocar vault, deve seguir `fama-reno-vault-governance`;
- CRM continua como fonte operacional;
- eventos vao para `_journal/reno/`;
- fatos duraveis podem ir para `_entities/`;
- aprendizados reutilizaveis podem ir para `_runbooks/`, `_hubs/` ou `_shared/context/`;
- decisoes canonicas exigem aprovacao;
- `_meta/` e restrito para mudancas estruturais;
- nada novo deve ir para `_agents/`;
- toda escrita relevante exige read-back.

### Auditoria de drift nas skills

A implementacao deve buscar e classificar ocorrencias de:

- `_agents/reno`;
- `_agents/reno/atendimentos`;
- `atendimentos/{client_id}`;
- `entity-profile`;
- `shared-context`;
- `type: null`;
- instrucao ativa que trate vault como fonte operacional;
- instrucao ativa que limite Reno apenas a journal quando a decisao aprovada e autonomia ampla.

Classificacao:

- regra antiga ativa: corrigir;
- mencao historica ou migracao: manter apenas se estiver marcada como legado;
- regra negativa: manter;
- exemplo obsoleto: atualizar.

## Criterios de sucesso

A implementacao estara pronta quando:

- Reno recuperar contexto util antes de atender;
- cada evento relevante virar journal curado;
- fatos duraveis forem consolidados em entidades;
- aprendizados operacionais atualizarem runbooks, hubs ou contexto;
- decisoes humanas ficarem separadas de inferencias;
- nenhuma skill ativa mandar escrever em `_agents/`;
- o vault complementar o CRM sem duplica-lo;
- toda escrita relevante tiver evidencia e read-back;
- Renato conseguir auditar por que Reno mudou qualquer nota relevante.

## Riscos e mitigacoes

### Vault virar log bruto

Mitigacao: journal curado, entidade consolidada e proibicao de payload bruto.

### Reno alterar politica sem aprovacao

Mitigacao: decisoes canonicas e mudancas criticas exigem aprovacao.

### Skills antigas reintroduzirem `_agents/`

Mitigacao: auditoria por padroes antigos, patch seletivo e verificacao final.

### CRM e vault divergirem

Mitigacao: CRM vence estado operacional; divergencia vira auditoria.

### Entidades duplicadas

Mitigacao: busca por nome, ID, telefone, alias e wikilinks antes de criar.

### Escrita nao persistir

Mitigacao: read-back obrigatorio e tratamento de falha como persistencia nao confirmada.

## Plano de implementacao posterior

A proxima etapa e escrever um plano de implementacao com a skill `writing-plans`, cobrindo:

1. decisao/documentacao canonica da Opcao C no vault;
2. atualizacao de `fama-reno-vault-governance` para refletir autonomia ampla;
3. auditoria e patch das skills Reno/Fama afetadas;
4. atualizacao dos runbooks/hubs/contextos do vault quando necessario;
5. validacao por buscas de drift;
6. read-back e status Git do vault via MCP;
7. relatorio final de efeitos em skills, vault e pendencias.
