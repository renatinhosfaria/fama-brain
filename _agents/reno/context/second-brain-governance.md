---
type: context
owner: reno
created: '2026-04-24'
updated: '2026-04-28'
tags:
  - reno
  - obsidian
  - second-brain
  - governanca
  - taxonomia
title: Reno — governança do segundo cérebro
---
# Reno — governança do segundo cérebro

## Regra de caminho
Tudo que for conteúdo do Reno deve ser salvo exclusivamente em `_agents/reno/`.
Não criar notas, journals, decisões, perfis, contextos ou registros operacionais pertencentes ao Reno fora desse caminho.

## Regra obrigatória para documentos de clientes
Todo conteúdo envolvendo cliente/lead atendido pelo Reno deve ir para um documento único em:

`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

Esse é o documento oficial de contexto futuro do atendimento. Ele deve reunir histórico curado, origem, diagnóstico, decisões operacionais, status CRM, objeções, preferências, próximos passos, tentativas de WhatsApp, respostas e agendamentos.

O diretório `_agents/reno/lead/` está descontinuado. Não usar, não recriar e não tratar como camada auxiliar. Qualquer documento de cliente encontrado fora de `atendimentos/` deve ser migrado para o caminho correto e removido da origem incorreta.

## Papel das camadas
### Memória persistente
Fatos pequenos, duráveis e de alto reaproveitamento: preferências do Renato, convenções críticas e regras estáveis.

### Obsidian / segundo cérebro
Contexto estruturado, histórico curado, decisões, journals, perfis e conhecimento operacional reutilizável. Para clientes do Reno, o Obsidian usa sempre o documento único em `atendimentos/`.

### CRM
Fonte de verdade para estado atual do lead, broker, status comercial, histórico operacional e ações executadas.

## Política de escrita
O Reno deve criar ou atualizar o documento de atendimento sempre que houver ação ou decisão operacional envolvendo cliente existente do Reno: primeiro contato, envio, falha de envio, supressão relevante, resposta, diagnóstico, objeção, preferência, agendamento, mudança de status ou próximo passo.

Não escrever dump bruto de webhook, log técnico completo, erro transitório sem aprendizado, conversa inteira sem curadoria, informação redundante sem valor futuro ou detalhe descartável.

## Hierarquia antes de escrever
1. CRM para verdade operacional atual.
2. Documento em `_agents/reno/atendimentos/` para contexto curado e retomada futura do cliente.
3. Memória persistente apenas para convenções pequenas e duráveis.
4. Contextos em `_agents/reno/context/` para playbooks, políticas e inteligência consultiva geral.

## Tipos de registro do Reno
- `profile.md`: identidade, escopo, objetivo e limites.
- `decisions.md`: decisões duráveis que mudam comportamento.
- `journal/`: aprendizados, testes, hipóteses e mudanças ainda não consolidadas.
- `atendimentos/`: documento único por cliente/atendimento do Reno. É obrigatório para casos de cliente.
- `broker/`: perfis e interações de corretores quando afetam handoff.
- `context/`: playbooks, políticas, templates e contexto proprietário do Reno.
- `entity/`: entidades recorrentes sem caráter de cliente individual.

## Diretórios proibidos para clientes
- `_agents/reno/lead/` não deve existir como destino de escrita.
- `_agents/reno/entity/` não deve receber histórico de cliente individual.
- `_shared/context/` não deve receber atendimento proprietário do Reno.

## Gatilhos de escrita em atendimento
Criar ou atualizar o documento em `atendimentos/` quando houver:
- primeiro contato ou reenvio;
- falha definitiva de WhatsApp;
- supressão relevante de cliente dentro do escopo;
- primeira resposta do cliente;
- diagnóstico de necessidade, decisão ou viabilidade;
- objeção ativa;
- preferência de região, imóvel ou condição de compra;
- próximo passo definido;
- visita presencial agendada;
- handoff para corretor/operação humana;
- mudança de status no CRM.

## Templates mínimos
- Atendimento: perfil + origem + intenção atual + diagnóstico + trava principal + próximo passo + linha do tempo curada.
- Broker: padrão operacional + gargalo recorrente + implicação para handoff.
- Journal: contexto + observação + interpretação + ação sugerida.
- Decision: mudança de critério + racional + impacto esperado.

## Workflow de consulta
1. CRM para verdade atual.
2. Documento do cliente em `_agents/reno/atendimentos/` para contexto curado.
3. Broker profile para adaptar handoff.
4. Contexto em `_agents/reno/context/` para playbooks e inteligência consultiva.
5. Memória persistente para convenções estáveis.

## Manutenção
Revisão semanal enxuta:
- documentos de atendimento sem `client_id` no nome quando o ID estiver disponível;
- registros de cliente fora de `atendimentos/`;
- journals repetitivos ou maduros para decisão;
- contextos duplicados;
- notas que ninguém consultaria.

Poda não é apagar memória importante; é aumentar densidade de valor.

## Regra final
O segundo cérebro do Reno deve ficar pequeno o bastante para ser útil e rico o bastante para melhorar decisão. Para clientes, utilidade significa existir um único documento rastreável em `_agents/reno/atendimentos/`.
