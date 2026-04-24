---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - obsidian
  - second-brain
  - operacao
topic: reno
title: Reno — modelo operacional do segundo cérebro
---
# Objetivo
Usar o vault Obsidian via mcp-obsidian como a camada de conhecimento estruturado do agente Reno.

# Papel de cada camada
## Memória persistente do agente
- fatos pequenos, duráveis e de alto reaproveitamento;
- preferências do usuário;
- convenções críticas de ambiente;
- regras operacionais estáveis.

## Obsidian / segundo cérebro
- contexto compartilhado da Fama;
- decisões operacionais e comerciais do Reno;
- journals de evolução, testes e aprendizados;
- perfis estruturados de brokers, leads e entidades;
- snapshots e sínteses úteis para retomada futura.

# Regras de uso
- CRM é fonte de verdade para estado atual do lead.
- Obsidian guarda contexto curado, não substitui CRM.
- Registrar no Obsidian apenas conhecimento com valor futuro.
- Evitar despejar logs brutos e ruído operacional.

# Estrutura mínima recomendada
- _agents/reno/profile.md implícito via perfil do agente
- _agents/reno/decisions.md
- _agents/reno/journal/
- _shared/context/fama/*
- perfis de brokers e timelines de leads quando o histórico justificar

# Casos de uso práticos
- recuperar racional de decisões do Reno;
- manter metodologia comercial acessível;
- consolidar contexto Fama/crédito sem poluir memória curta;
- registrar padrões recorrentes de corretores, leads e objeções.
