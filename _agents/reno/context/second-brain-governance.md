---
created: '2026-04-24'
owner: reno
tags:
  - reno
  - obsidian
  - second-brain
  - governanca
  - taxonomia
title: Reno — governança do segundo cérebro
type: context
updated: '2026-04-24'
---
# Reno — governança do segundo cérebro

## Regra de caminho
Tudo que for conteúdo do Reno deve ser salvo exclusivamente em `_agents/reno/`.
Não criar notas, journals, decisões, perfis, contextos ou registros operacionais pertencentes ao Reno fora desse caminho.

## Papel das camadas
### Memória persistente
Fatos pequenos, duráveis e de alto reaproveitamento: preferências do Renato, convenções críticas e regras estáveis.

### Obsidian / segundo cérebro
Contexto estruturado, histórico curado, decisões, journals, perfis e conhecimento operacional reutilizável.

### CRM
Fonte de verdade para estado atual do lead, broker, status comercial, histórico operacional e ações executadas.

## Política de escrita
O Reno só escreve no segundo cérebro quando o registro melhora retomada, decisão, handoff, diagnóstico ou aprendizado operacional.

Não escrever quando for dump bruto de webhook, log técnico completo, erro transitório sem aprendizado, conversa inteira sem curadoria, informação redundante já confiável no CRM ou detalhe descartável sem valor futuro.

## Hierarquia antes de escrever
1. Isso pertence ao CRM por ser estado operacional vivo?
2. Isso é pequeno, durável e útil em muitas sessões? Se sim, considerar memória persistente.
3. Isso é contexto curado e útil para futuro? Se sim, Obsidian em `_agents/reno/`.

## Tipos de registro do Reno
- `profile.md`: identidade, escopo, objetivo e limites.
- `decisions.md`: decisões duráveis que mudam comportamento.
- `journal/`: aprendizados, testes, hipóteses e mudanças ainda não consolidadas.
- `lead/`: timelines e interações de leads quando há valor de retomada.
- `broker/`: perfis e interações de corretores quando afetam handoff.
- `context/`: playbooks, políticas, templates e contexto proprietário do Reno.
- `entity/`: entidades recorrentes com valor operacional claro.

## Gatilhos de escrita
### Lead timeline
Escrever quando houver necessidade concreta, objeção ativa, mudança de estágio, próximo passo definido ou motivo útil de pausa/recusa.

### Broker profile
Escrever quando houver padrão recorrente, gargalo de handoff, preferência operacional relevante ou risco.

### Journal
Escrever quando houver experimento, falha instrutiva, padrão novo ou mudança operacional.

### Decision
Escrever quando o aprendizado vale além de um caso, muda comportamento futuro e deve permanecer válido até revisão.

## Templates mínimos
- Lead: perfil + intenção atual + trava principal + próximo passo.
- Broker: padrão operacional + gargalo recorrente + implicação para handoff.
- Journal: contexto + observação + interpretação + ação sugerida.
- Decision: mudança de critério + racional + impacto esperado.

## Workflow de consulta
1. CRM para verdade atual.
2. Lead timeline para contexto curado.
3. Broker profile para adaptar handoff.
4. Contexto em `_agents/reno/context/` para playbooks e inteligência consultiva.
5. Memória persistente para convenções estáveis.

## Manutenção
Revisão semanal enxuta:
- journals repetitivos ou maduros para decisão;
- lead timelines infladas;
- broker profiles sem uso real;
- contextos duplicados;
- notas que ninguém consultaria.

Poda não é apagar memória importante; é aumentar densidade de valor.

## Regra final
O segundo cérebro do Reno deve ficar pequeno o bastante para ser útil e rico o bastante para melhorar decisão. Se crescer como arquivo morto, falhou.
