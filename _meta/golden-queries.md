---
author_agent: brain
created: '2026-05-13'
owner: renato
provenance: mcp-obsidian-audit
schema_version: 1
source: agent-generated
status: active
tags:
  - meta
  - evaluation
  - golden-queries
  - reno
  - retrieval
  - brain
  - multiagent
type: concept
updated: '2026-06-03'
---
# Golden queries do vault multiagent

## Objetivo

Este conjunto de perguntas valida se o vault recupera as fontes certas para governança, operação e memória curada em um modelo multiagent, cobrindo Reno, Marketing, Brain e futuros agentes. Muitas queries continuam Reno-específicas por preservarem a base operacional existente.

Cada query deve ser respondida preferencialmente a partir de decisões, runbooks, READMEs locais, hubs, políticas e entidades canônicas. Specs/plans históricos só devem ser usados quando a pergunta for explicitamente sobre histórico de implementação.

## Critério de aprovação

Uma resposta passa quando:

- cita ou usa a fonte canônica esperada;
- não usa `_agents/` como destino ativo;
- distingue CRM/FamaChat de vault;
- preserva guardrails de segredo, payload bruto e read-back;
- prioriza decisões, runbooks, READMEs locais, hubs e políticas quando a pergunta for normativa;
- não trata documento histórico ou journal recente como regra atual quando há decisão/runbook/política mais recente.

## Queries de governança Reno

1. **Pergunta:** Qual decisão aprova a memória autônoma do Reno no vault?
   - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]].
   - **Resposta esperada:** Opção C, autonomia com guardrails.

2. **Pergunta:** O Reno pode recriar `_agents/`?
   - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]], [[_shared/context/AGENTS]], [[reno-hub]].
   - **Resposta esperada:** Não; `_agents/` é legado/inativo.

3. **Pergunta:** O que exige aprovação explícita do Renato?
   - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]], [[reno-vault-operacao]], [[schema]].
   - **Resposta esperada:** decisões canônicas, schema, ownership, mudanças estruturais e alterações sensíveis.

4. **Pergunta:** Quem e dono primario de _entities/**?
   - **Fonte esperada:** [[_shared/context/AGENTS]].
   - **Resposta esperada:** Renato; Reno pode atualizar fatos duráveis confirmados sob Opção C e ownership correto.

5. **Pergunta:** Qual é a fonte operacional de verdade?
   - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]], [[reno-vault-operacao]].
   - **Resposta esperada:** CRM/FamaChat.

## Queries de escrita no vault

6. **Pergunta:** Onde registrar uma interação operacional curada do Reno?
   - **Fonte esperada:** [[reno-vault-operacao]], [[reno-registro-vault]], [[_journal/reno/README]].
   - **Resposta esperada:** `_journal/reno/`.

7. **Pergunta:** Onde consolidar fato durável sobre cliente ou empreendimento?
   - **Fonte esperada:** [[reno-vault-operacao]], [[_entities/README]].
   - **Resposta esperada:** `_entities/`.

8. **Pergunta:** Onde registrar procedimento reutilizável do Reno?
   - **Fonte esperada:** [[reno-vault-operacao]], [[_runbooks/README]].
   - **Resposta esperada:** `_runbooks/`, preferencialmente `reno-{tema}.md`.

9. **Pergunta:** Onde registrar decisão canônica aprovada?
   - **Fonte esperada:** [[_decisions/index]], [[_decisions/README]].
   - **Resposta esperada:** `_decisions/`, uma nota por decisão.

10. **Pergunta:** Onde registrar schema, inventário e política de retrieval?
    - **Fonte esperada:** [[_meta/README]], [[_meta/index]], [[schema]], [[retrieval-policy]].
    - **Resposta esperada:** `_meta/`.

## Queries de retrieval e histórico

11. **Pergunta:** Como tratar `docs/superpowers/**`?
    - **Fonte esperada:** [[retrieval-policy]], [[embedding-state]].
    - **Resposta esperada:** histórico/auditoria; não fonte operacional padrão.

12. **Pergunta:** Como tratar `Origem migrada: _agents/reno/...`?
    - **Fonte esperada:** [[inventory-2026-05-13-reno-post-migration]], [[retrieval-policy]].
    - **Resposta esperada:** proveniência histórica, não destino ativo.

13. **Pergunta:** O inventário de 2026-04-30 é fonte atual?
    - **Fonte esperada:** [[_meta/index]], [[inventory-2026-05-13-reno-post-migration]].
    - **Resposta esperada:** é snapshot pré-migração; usar inventário pós-migração para estado atual.

14. **Pergunta:** Qual hub central do Reno?
    - **Fonte esperada:** [[reno-hub]].
    - **Resposta esperada:** `_hubs/reno-hub.md` / [[reno-hub]].

15. **Pergunta:** Qual runbook principal para operar o vault?
    - **Fonte esperada:** [[reno-vault-operacao]].
    - **Resposta esperada:** [[reno-vault-operacao]].

## Queries de segurança e qualidade

16. **Pergunta:** Pode salvar payload bruto de webhook no vault?
    - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]], [[reno-vault-operacao]].
    - **Resposta esperada:** Não.

17. **Pergunta:** Pode salvar token, senha ou connection string?
    - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]], [[schema]], [[pii-redaction-policy]].
    - **Resposta esperada:** Não; substituir por `[REDACTED]` ou marcador específico se aparecer.

18. **Pergunta:** O que fazer após escrever no vault?
    - **Fonte esperada:** [[reno-vault-operacao]], [[brain-vault-curadoria]], [[schema]].
    - **Resposta esperada:** read-back via MCP e validar path/frontmatter/conteúdo.

19. **Pergunta:** O que fazer se o MCP bloquear por ownership?
    - **Fonte esperada:** [[_shared/context/AGENTS]], [[reno-vault-operacao]], [[brain-vault-curadoria]].
    - **Resposta esperada:** usar agente autorizado quando houver autorização clara ou parar e escalar.

20. **Pergunta:** Uma decisão antiga pode ser reescrita materialmente?
    - **Fonte esperada:** [[_decisions/index]], [[schema]].
    - **Resposta esperada:** Não; criar decisão nova/superseding ou atualizar relação quando autorizado.

## Queries comerciais/contextuais

21. **Pergunta:** Qual é o papel do Reno na Fama?
    - **Fonte esperada:** [[reno-profile]], [[reno-hub]].
    - **Resposta esperada:** consultor digital para primeiro atendimento e avanço comercial.

22. **Pergunta:** Qual diferencial central da Fama?
    - **Fonte esperada:** contexto Fama/crédito em `_shared/context/`.
    - **Resposta esperada:** crédito imobiliário, financiamento e viabilidade real de compra.

23. **Pergunta:** Onde buscar contexto de crédito imobiliário?
    - **Fonte esperada:** `_shared/context/credito-imobiliario/` e [[reno-credito-imobiliario]].
    - **Resposta esperada:** contexto compartilhado de crédito e lente operacional do Reno.

24. **Pergunta:** Onde buscar informações de um projeto como FamaChat?
    - **Fonte esperada:** `_projects/README`, `_projects/famachat/README`.
    - **Resposta esperada:** `_projects/`.

25. **Pergunta:** Quando uma informação deve sair do journal e virar entidade?
    - **Fonte esperada:** [[reno-vault-operacao]], [[reno-registro-vault]], [[_entities/README]].
    - **Resposta esperada:** quando for fato durável confirmado, útil para retomada futura e com fonte rastreável.

## Queries multiagent por territorio

26. **Pergunta:** Onde o agente de Marketing deve registrar um evento datado de campanha?
   - **Fonte esperada:** [[marketing-vault-operacao]], [[_journal/marketing/README]], [[marketing-hub]].
   - **Resposta esperada:** `_journal/marketing/`.

27. **Pergunta:** Onde o agente de Marketing deve registrar uma campanha ou experimento ativo?
   - **Fonte esperada:** [[marketing-vault-operacao]], [[_projects/marketing/README]].
   - **Resposta esperada:** `_projects/marketing/`.

28. **Pergunta:** Marketing pode editar `_journal/reno/`?
   - **Fonte esperada:** [[_shared/context/AGENTS]], [[marketing-vault-operacao]], [[marketing-hub]].
   - **Resposta esperada:** Nao; pode consultar e linkar, mas deve registrar propria leitura no territorio de Marketing.

29. **Pergunta:** Onde fica o hub canonico do Marketing?
   - **Fonte esperada:** [[marketing-hub]], [[_hubs/index]].
   - **Resposta esperada:** `_hubs/marketing-hub.md` / [[marketing-hub]].

30. **Pergunta:** Um novo agente futuro deve ganhar `_agents/{agent_id}/`?
   - **Fonte esperada:** [[README]], [[schema]], [[_shared/context/AGENTS]], [[retrieval-policy]].
   - **Resposta esperada:** Nao; deve ganhar territorio por tipo de memoria e cadastro em [[_shared/context/AGENTS]].

31. **Pergunta:** Quando Marketing pode atualizar `_entities/**`?
   - **Fonte esperada:** [[_shared/context/AGENTS]], [[marketing-vault-operacao]], [[_shared/context/marketing/README]].
   - **Resposta esperada:** Apenas quando for fato duravel confirmado, com fonte rastreavel, ownership correto e read-back; Renato permanece dono primario.

32. **Pergunta:** Onde contexto duravel de marketing deve ser consolidado?
   - **Fonte esperada:** [[_shared/context/marketing/README]], [[marketing-vault-operacao]].
   - **Resposta esperada:** `_shared/context/marketing/`.

## Queries MCP multiagent e privacidade

33. **Pergunta:** O que `read_agent_context` deve retornar para o Reno?
   - **Fonte esperada:** [[reno-hub]], [[reno-vault-operacao]], `_decisions/*-reno-*.md`, `_journal/reno/`.
   - **Resposta esperada:** hub, decisoes recentes, journals/interactions recentes, runbooks do Reno e avisos sem usar `_agents/` como fonte ativa.

34. **Pergunta:** O que `read_agent_context` deve retornar para Marketing?
   - **Fonte esperada:** [[marketing-hub]], [[marketing-vault-operacao]], `_projects/marketing/`, `_journal/marketing/`, `_shared/context/marketing/`.
   - **Resposta esperada:** hub e territorio de Marketing mesmo quando houver pouco historico.

35. **Pergunta:** Reno ou Marketing podem atualizar `_entities/**`?
   - **Fonte esperada:** [[_shared/context/AGENTS]], [[schema]], [[pii-redaction-policy]].
   - **Resposta esperada:** Podem registrar fatos duraveis confirmados sob delegacao controlada, sem alterar campos protegidos nem marcar fonte como `human-curated`.

36. **Pergunta:** Como um agente deve expor telefone, JID, email ou CPF encontrado no vault?
   - **Fonte esperada:** [[pii-redaction-policy]], [[retrieval-policy]], [[pii-scan-2026-06-02]].
   - **Resposta esperada:** Deve redigir o valor, preservar contexto por entidade/ID interno e nunca devolver o dado bruto.

37. **Pergunta:** O scanner `scan_sensitive_data` pode retornar valores brutos?
   - **Fonte esperada:** [[pii-redaction-policy]], [[pii-scan-2026-06-02]].
   - **Resposta esperada:** Nao; apenas contagens e exemplos redigidos.

## Queries literais de regressão

Estas consultas devem ser executadas como escritas, sem depender de expansão lexical pelo agente. Elas existem para detectar falhas de ranking em perguntas curtas ou literais.

38. **Pergunta literal:** O Reno pode recriar `_agents/`?
   - **Fonte esperada:** [[reno-hub]], [[_shared/context/AGENTS]], [[retrieval-policy]], [[2026-05-12-reno-vault-memoria-autonoma]].
   - **Resposta esperada:** Não. `_agents/` é namespace legado/inativo; novas escritas usam territórios por tipo de memória.

39. **Pergunta literal:** Um novo agente futuro deve ganhar `_agents/{agent_id}/`?
   - **Fonte esperada:** [[_shared/context/AGENTS]], [[schema]], [[retrieval-policy]], [[brain-hub]].
   - **Resposta esperada:** Não. Novo agente deve ser cadastrado em [[_shared/context/AGENTS]] e ganhar território por tipo de memória, como `_journal/{agent_id}/`, `_projects/{agent_id}/`, `_runbooks/{agent_id}-*.md`, `_hubs/{agent_id}-hub.md` e decisões nomeadas por agente.

40. **Pergunta literal:** Onde registrar schema, inventário e política de retrieval?
   - **Fonte esperada:** [[_meta/README]], [[_meta/index]], [[schema]], [[retrieval-policy]].
   - **Resposta esperada:** Em `_meta/`, priorizando fontes canônicas de governança do vault.

41. **Pergunta literal:** Como expor telefone, WhatsApp JID, email ou CPF encontrado no vault?
   - **Fonte esperada:** [[pii-redaction-policy]], [[retrieval-policy]], [[pii-scan-2026-06-02]].
   - **Resposta esperada:** Redigir o valor bruto, usar marcador específico, preservar rastreabilidade por entidade, ID interno, data e wikilinks.

42. **Pergunta literal:** O que fazer após escrever no vault?
   - **Fonte esperada:** [[brain-vault-curadoria]], [[reno-vault-operacao]], [[marketing-vault-operacao]], [[schema]].
   - **Resposta esperada:** Fazer read-back via MCP e validar path, frontmatter, links e conteúdo.

## Queries Brain / curadoria central

43. **Pergunta:** Quem é o Brain no vault Obsidian?
   - **Fonte esperada:** [[2026-06-03-brain-como-curador-central-do-vault-obsidian]], [[brain-hub]], [[brain-vault-curadoria]], [[_shared/context/AGENTS]].
   - **Resposta esperada:** O Brain é o curador central do `vault-obsidian`/`fama-brain`, operando obrigatoriamente via `mcp-obsidian` para organizar, relacionar, enriquecer e registrar curadoria.

44. **Pergunta:** Onde o Brain deve registrar logs de curadoria?
   - **Fonte esperada:** [[brain-vault-curadoria]], [[brain-hub]], [[_shared/context/AGENTS]].
   - **Resposta esperada:** Em `_journal/brain/`, com rastreabilidade das ações, documentos alterados, motivos, lacunas e validação.

45. **Pergunta:** Quais trilhas incrementais o Brain está conduzindo?
   - **Fonte esperada:** [[brain-hub]], [[brain-vault-curadoria]], [[2026-06-03-formalizacao-inicial-do-brain-como-curador-central-do-vault]].
   - **Resposta esperada:** PII, hubs, consolidações e melhoria de retrieval.

46. **Pergunta:** O Brain pode operar fora do `mcp-obsidian` para curar o vault?
   - **Fonte esperada:** [[2026-06-03-brain-como-curador-central-do-vault-obsidian]], [[brain-vault-curadoria]], [[_shared/context/AGENTS]].
   - **Resposta esperada:** Não por padrão. A curadoria do vault deve ser feita via `mcp-obsidian`; fallback fora do MCP só se explicitamente autorizado ou se o MCP estiver indisponível e a tarefa não puder prosseguir.

47. **Pergunta:** Como o Brain deve lidar com novo documento inserido no vault?
   - **Fonte esperada:** [[brain-vault-curadoria]], [[brain-hub]], [[schema]], [[retrieval-policy]].
   - **Resposta esperada:** Classificar/arquivar, reescrever/enriquecer, relacionar com o brain existente, registrar curadoria e fazer read-back/validação quando houver escrita.

48. **Pergunta:** Como avaliar se uma intervenção de curadoria melhorou o vault?
   - **Fonte esperada:** [[brain-vault-curadoria]], [[golden-queries]], [[retrieval-policy]].
   - **Resposta esperada:** Verificar se o conteúdo ficou mais claro, navegável, conectado e recuperável por golden queries, sem violar schema, ownership, PII ou fontes de verdade.
