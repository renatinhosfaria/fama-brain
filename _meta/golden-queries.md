---
created: '2026-05-13'
owner: renato
schema_version: 1
source: agent-generated
author_agent: renato
provenance: mcp-obsidian-audit
status: active
tags:
  - meta
  - evaluation
  - golden-queries
  - reno
  - retrieval
type: concept
updated: '2026-06-02'
---
# Golden queries do vault multiagent

## Objetivo

Este conjunto de perguntas valida se o vault recupera as fontes certas para governança, operação e memória curada em um modelo multiagent, cobrindo Reno, Marketing e futuros agentes. Muitas queries continuam Reno-específicas por preservarem a base operacional existente.

Cada query deve ser respondida preferencialmente a partir de decisões, runbooks, READMEs locais, hubs e entidades canônicas. Specs/plans históricos só devem ser usados quando a pergunta for explicitamente sobre histórico de implementação.

## Critério de aprovação

Uma resposta passa quando:

- cita ou usa a fonte canônica esperada;
- não usa `_agents/` como destino ativo;
- distingue CRM/FamaChat de vault;
- preserva guardrails de segredo, payload bruto e read-back;
- não trata documento histórico como regra atual quando há decisão/runbook mais recente.

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
    - **Fonte esperada:** [[_meta/README]], [[_meta/index]], [[schema]].
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
    - **Fonte esperada:** [[2026-05-12-reno-vault-memoria-autonoma]], [[schema]].
    - **Resposta esperada:** Não; substituir por `[REDACTED]` se aparecer.

18. **Pergunta:** O que fazer após escrever no vault?
    - **Fonte esperada:** [[reno-vault-operacao]], [[schema]].
    - **Resposta esperada:** read-back via MCP e validar path/frontmatter/conteúdo.

19. **Pergunta:** O que fazer se o MCP bloquear por ownership?
    - **Fonte esperada:** [[_shared/context/AGENTS]], [[reno-vault-operacao]].
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
   - **Fonte esperada:** [[README]], [[schema]], [[_shared/context/AGENTS]].
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
