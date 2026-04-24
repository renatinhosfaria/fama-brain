---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - workflow
  - mcp-obsidian
  - integracao
  - operacao
topic: reno
title: Reno — mapeamento do workflow para ferramentas do mcp-obsidian
---
# Objetivo
Traduzir o workflow do Reno em chamadas concretas do `mcp-obsidian`: quais ferramentas usar, em que fase usar, qual objetivo de cada chamada e quando não chamar nada.

# Princípio de integração
O `mcp-obsidian` não é chamado por padrão em toda etapa. Ele é chamado seletivamente quando a fase gera:
- contexto curado de retomada;
- memória por entidade;
- aprendizado reutilizável;
- decisão durável.

# Mapa geral de ferramentas
## Consultas
- `read_agent_context(agent="reno")`
- `read_lead_history(as_agent="reno", lead_name=...)`
- `read_broker_history(as_agent="reno", broker_name=...)`
- `read_note(path=...)`
- `search_content(...)`
- `get_training_target_delta(...)` quando fizer sentido evolutivo futuro

## Escritas de lead
- `upsert_lead_timeline(...)`
- `append_lead_interaction(...)`

## Escritas de broker
- `upsert_broker_profile(...)`
- `append_broker_interaction(...)`

## Escritas do próprio Reno
- `create_journal_entry(agent="reno", ...)`
- `append_decision(agent="reno", ...)`
- `update_agent_profile(agent="reno", ...)` apenas em mudanças estruturais raras

## Conhecimento compartilhado
- `upsert_shared_context(...)`
- `upsert_entity_profile(...)`

# Fase por fase
## Fase 0 — Evento de entrada
### Ação padrão
Não chamar `mcp-obsidian` automaticamente.

### Motivo
Webhook sozinho não justifica leitura ou escrita no segundo cérebro.

### Exceção
Se a orquestração já tiver identificador forte de lead conhecido e houver alto valor em recuperar contexto antes da triagem, pode consultar `read_lead_history(...)`.

## Fase 1 — Validação de elegibilidade
### Objetivo
Decidir ignorar, suprimir ou avançar.

### Chamada padrão
Normalmente nenhuma chamada ao `mcp-obsidian` é necessária nesta fase.

### Quando consultar
Se houver suspeita de:
- histórico anterior importante do lead;
- duplicidade não evidente no CRM;
- contexto anterior de pausa/recusa que mude a decisão.

### Ferramenta
- `read_lead_history(as_agent="reno", lead_name=...)`

### Quando escrever
Quase nunca.

### Exceções de escrita
- `create_journal_entry(...)` se surgir um aprendizado operacional novo sobre elegibilidade.
- `append_decision(...)` se um novo critério estável de triagem for consolidado.

## Fase 2 — Pré-contexto antes do primeiro toque
### Objetivo
Recuperar contexto útil antes de abrir conversa.

### Ferramentas recomendadas
1. `read_lead_history(...)` — se o lead já existe no segundo cérebro.
2. `read_broker_history(...)` — se o handoff prévio ou padrão do broker puder influenciar o tom.
3. `read_note(...)` ou `search_content(...)` — para contexto compartilhado Fama/crédito específico.

### Sequência ideal
- primeiro CRM;
- depois `read_lead_history` se houver histórico;
- depois contexto compartilhado apenas se necessário.

### Quando não usar
- lead totalmente novo sem contexto anterior;
- assunto trivial sem dependência de conhecimento institucional extra.

## Fase 3 — Primeiro toque
### Ação padrão
Não escrever no `mcp-obsidian` só porque enviou mensagem.

### Exceção rara
Se o envio ou a tentativa revelar um padrão técnico/comercial novo e reutilizável.

### Ferramenta nesses casos
- `create_journal_entry(...)`

## Fase 4 — Diagnóstico inicial
### Objetivo
Capturar o primeiro contexto realmente útil do lead.

### Quando escrever
Quando surgirem dados com impacto em retomada ou condução:
- motivação de compra;
- trava financeira;
- objeção ativa;
- próximo passo;
- mudança de estágio.

### Ferramenta principal
- `upsert_lead_timeline(...)`

### Campos típicos
- `lead_name`
- `resumo`
- `interesse_atual`
- `objecoes_ativas`
- `proximo_passo`
- `status_comercial`
- `origem`
- `tags`

### Quando anexar interação
Se uma interação específica trouxe um marco relevante.

### Ferramenta complementar
- `append_lead_interaction(...)`

## Fase 5 — Manejo de objeções
### Objetivo
Guardar objeções que realmente mudam a condução.

### Ferramentas
- `append_lead_interaction(...)` quando a objeção apareceu em um contato específico.
- `upsert_lead_timeline(...)` quando a objeção passa a compor o estado atual do lead.

### Quando criar journal
Se aparecer uma objeção nova recorrente ainda sem playbook.

### Ferramenta
- `create_journal_entry(...)`

### Quando promover a decisão
Se após repetição/validação houver novo critério estável de resposta.

### Ferramenta
- `append_decision(...)`

## Fase 6 — Condução para avanço
### Objetivo
Registrar a lógica do próximo passo quando isso melhorar retomada futura.

### Quando usar `upsert_lead_timeline`
- visita sugerida;
- visita agendada;
- diagnóstico de viabilidade escolhido como próximo passo;
- pausa negociada com condição explícita;
- sem viabilidade identificada com clareza.

### Quando usar `append_lead_interaction`
- a interação de avanço foi relevante e merece rastro sintético.

### Quando não usar nada
- microavanço sem valor futuro além do CRM.

## Fase 7 — Handoff para corretor
### Objetivo
Adaptar e registrar handoff com contexto útil.

### Antes do handoff
Consultar broker profile se existir.

### Ferramenta de consulta
- `read_broker_history(as_agent="reno", broker_name=...)`

### Se o corretor não tiver profile útil ainda
Nenhum problema — seguir sem `mcp-obsidian`.

### Quando escrever sobre o broker
Se o contato com o corretor revelou:
- preferência operacional relevante;
- gargalo recorrente;
- risco ou pendência que afeta próximos handoffs.

### Ferramentas de escrita
- `upsert_broker_profile(...)`
- `append_broker_interaction(...)`

### Quando atualizar lead também
Se o handoff mudar o estado do caso.

### Ferramenta
- `upsert_lead_timeline(...)`

## Fase 8 — Pausa, silêncio ou recusa
### Objetivo
Guardar apenas silêncio interpretável ou recusa útil.

### Ferramenta principal
- `upsert_lead_timeline(...)`

### Quando anexar interação
Quando a pausa/recusa veio explicitamente em uma conversa.

### Ferramenta complementar
- `append_lead_interaction(...)`

### Quando não chamar nada
- silêncio puro sem contexto;
- ausência de resposta sem implicação clara.

## Fase 9 — Aprendizado operacional
### Objetivo
Fazer o Reno melhorar com o tempo.

### Ferramenta padrão
- `create_journal_entry(agent="reno", ...)`

### Quando usar
- experimento de copy;
- timing;
- integração;
- objeção emergente;
- ajuste de fluxo.

### Quando promover
#### Para decisão
- `append_decision(agent="reno", ...)`
quando o critério estiver maduro.

#### Para contexto compartilhado
- `upsert_shared_context(...)`
quando o conteúdo servir para muitos casos.

#### Para entidade
- `upsert_entity_profile(...)`
quando surgir uma entidade recorrente com valor operacional claro.

# Sequências-padrão de chamadas
## Sequência A — Lead novo, sem histórico, diagnóstico útil
1. CRM valida lead.
2. Nenhum `mcp-obsidian` no início.
3. Após descobrir motivação + trava + próximo passo:
   - `upsert_lead_timeline(...)`
4. Se houve interação especialmente relevante:
   - `append_lead_interaction(...)`

## Sequência B — Lead antigo retomado
1. CRM valida lead.
2. `read_lead_history(...)`
3. Reno reabre conversa com contexto.
4. Se o estado mudou:
   - `upsert_lead_timeline(...)`
5. Se o contato gerou marco relevante:
   - `append_lead_interaction(...)`

## Sequência C — Handoff com corretor recorrente
1. CRM confirma avanço.
2. `read_broker_history(...)`
3. Reno adapta handoff.
4. Se aparecer padrão novo do broker:
   - `upsert_broker_profile(...)`
   - `append_broker_interaction(...)`

## Sequência D — Objeção nova recorrente
1. registrar no lead:
   - `append_lead_interaction(...)`
   - `upsert_lead_timeline(...)`
2. se houver padrão emergente:
   - `create_journal_entry(...)`
3. se consolidar:
   - `append_decision(...)` ou `upsert_shared_context(...)`

# Tabela mental rápida
## Ler
- histórico do lead -> `read_lead_history`
- histórico do broker -> `read_broker_history`
- contexto geral -> `read_note` / `search_content`

## Escrever sobre lead
- estado atual curado -> `upsert_lead_timeline`
- contato marcante -> `append_lead_interaction`

## Escrever sobre broker
- padrão do broker -> `upsert_broker_profile`
- contato marcante -> `append_broker_interaction`

## Escrever sobre Reno
- aprendizado -> `create_journal_entry`
- política estável -> `append_decision`

## Escrever conhecimento compartilhado
- contexto reutilizável -> `upsert_shared_context`
- entidade recorrente -> `upsert_entity_profile`

# Regras de contenção
## Não chamar `mcp-obsidian` quando
- o CRM basta;
- o evento não tem valor futuro;
- o detalhe é micro e transitório;
- não há síntese ainda.

## Não escrever duas vezes a mesma coisa em formatos diferentes sem motivo
Exemplo ruim:
- copiar uma objeção igual no CRM, timeline, interaction e journal sem ganho claro.

# Regra final
O uso correto do `mcp-obsidian` no Reno é seletivo: consultar pouco, escrever menos ainda, mas registrar com precisão os pontos que mudam a qualidade futura do atendimento.
