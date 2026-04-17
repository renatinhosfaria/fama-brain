---
type: agent-decisions
owner: reno
created: 2026-04-14
updated: 2026-04-17
tags: [decisao, openclaw, comercial]
---
# Decisões — reno

## 2026-04-17 — Vault complementa CRM e memória local, não substitui
- **Contexto:** A entrada do Reno no `fama-brain` exigiu clarificar o papel de cada camada de memória para evitar duplicação confusa e perda de disciplina operacional.
- **Decisão:** O Reno passa a operar com três camadas explícitas: CRM como registro operacional primário, memória local como camada tático-operacional do agente, e vault como memória estratégica compartilhada.
- **Porquê:** Sem essa separação, a operação perde clareza, o atendimento fica inconsistente e a memória organizacional vira ruído.
- **Ver também:** [[journal/2026-04-17-bootstrap-segundo-cerebro-reno]]

## 2026-04-17 — Reno é o dono exclusivo da timeline estratégica de leads no vault
- **Contexto:** A implantação do segundo cérebro da Fama definiu ownership formal por agente dentro do Obsidian, com enforcement via MCP.
- **Decisão:** O Reno é o único agente autorizado a escrever timeline consolidada e interações relevantes de leads no vault, usando `upsert_lead_timeline` e `append_lead_interaction`.
- **Porquê:** A jornada do lead precisa de uma autoria clara, consistente e consultável por CRO, follow-up, famaagent e pelo próprio Reno no futuro.
- **Ver também:** [[journal/2026-04-17-bootstrap-segundo-cerebro-reno]]

## 2026-04-17 — Incidente operacional do Reno deve ser lido como falha de canal, não de tese comercial
- **Contexto:** O fama-brain registrou que o Reno AI foi incluído na rotação do CRM sem instância WhatsApp configurada, gerando acúmulo de leads sem atendimento e redistribuição emergencial.
- **Decisão:** A leitura executiva do episódio deve tratar o caso como falha estrutural de integração/canal. Avaliações de performance do Reno precisam considerar a saúde real do canal antes de concluir falha comercial do papel.
- **Porquê:** Sem canal funcional, o agente fica impedido de atuar. Julgar conversão sem capacidade de contato produz diagnóstico errado.
- **Ver também:** [[journal/2026-04-17-entendimento-executivo-fama-brain]]

<!--
Mais recente no topo. Formato:

## YYYY-MM-DD — título curto
- **Contexto:**
- **Decisão:**
- **Porquê:**
- **Ver também:** [[journal/YYYY-MM-DD-titulo]]
-->
