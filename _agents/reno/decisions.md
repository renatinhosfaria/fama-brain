---
type: agent-decisions
owner: reno
created: '2026-04-24'
updated: '2026-04-26'
tags:
  - decisao
---
## 2026-04-26 — Persistência operacional por atendimento: status CRM, anotações e documento único no vault

Renato definiu que o Reno deve: (1) ao enviar a primeira mensagem WhatsApp, alterar o cliente de `Sem Atendimento` para `Não Respondeu`; (2) quando o lead responder pela primeira vez, alterar de `Não Respondeu` para `Em Atendimento`; (3) registrar no FamaChat tudo que for importante ou relevante do atendimento; (4) manter um documento único por atendimento no vault via mcp-obsidian, sempre dentro de `_agents/reno/`, usando caminho determinístico por cliente para evitar duplicidade. Esta regra foi incorporada ao SOUL do Reno, à skill operacional `fama-reno-webhook-first-contact` e ao prompt da rota `famachat-created` para o primeiro envio.

## 2026-04-24 — Backlog Sem Atendimento lote 2 autorizado para mais 20 mensagens

Renato solicitou enviar pelo menos mais 20 mensagens hoje aos 56 clientes ainda em Sem Atendimento. A análise mostrou que muitos remanescentes têm source_details.origem=lead_automatico, mas com metadados de Facebook/Meta Lead Ads (lead_id, form_id, page_id, ad_id), indicando ingestão automática de leads externos, não autolead interno por si só. Foi criado um segundo lote com 20 execuções, uma a cada 3 minutos, mantendo supressão para contato real anterior, usuário interno, notas explícitas de origem interna/teste e ausência de WhatsApp válido. Cada envio deve registrar CRM, atualizar status para Não Respondeu após sucesso e registrar no vault.

## 2026-04-24 — Reno não deve perder o timing da visita presencial

Renato reforçou que o objetivo principal do Reno é chamar o lead para visita presencial no escritório da Fama. O fluxo deve continuar priorizando produto antes de finanças, mas sem transformar WhatsApp em destino final. Assim que houver interesse mínimo em empreendimento/região, abertura para ver opções ou conversa de financiamento, Reno deve propor a visita como próximo passo natural, antes de esgotar diagnóstico financeiro pelo WhatsApp.

## 2026-04-24 — Reno deve priorizar produto antes da qualificação financeira

Renato observou que, em geral, clientes engajam mais com informações, fotos, vídeos, plantas, bairro, entrega e diferenciais de empreendimentos do que com perguntas financeiras cedo demais. A metodologia do Reno deve manter a força da Fama em crédito, mas usar o financeiro como ponte de viabilidade após gerar interesse no produto, evitando sequência de perguntas sobre renda/entrada/composição familiar sem antes entregar ou oferecer material do imóvel.

## 2026-04-24 — Conteúdo do Reno deve ficar exclusivamente em _agents/reno

Renato definiu que tudo que for do Reno no vault deve ser salvo apenas no caminho `_agents/reno/`. A partir desta decisão, notas, journals, decisões, registros operacionais, perfis e contexto proprietário do Reno não devem ser criados fora do diretório do agente. Quando houver informação mista, a versão operacional do Reno deve permanecer dentro de `_agents/reno/`; áreas compartilhadas só devem receber contexto realmente compartilhado e não proprietário do Reno.

## 2026-04-24 — Disparo controlado do backlog Sem Atendimento com registro CRM e Vault

Renato autorizou processar clientes vinculados ao Reno em status Sem Atendimento com cadência mínima de 3 minutos, um cliente por execução. A rotina foi configurada para validar elegibilidade no CRM antes do envio, mandar mensagem inicial curta via WhatsApp, registrar nota no CRM, alterar status para Não Respondeu após sucesso e registrar cada interação no vault Obsidian. Casos com contato real anterior, autolead/origem interna, ausência de WhatsApp válido ou correspondência com usuário interno devem ser suprimidos.

## 2026-04-24 — Documentos operacionais mínimos do Reno foram formalizados no segundo cérebro

Foram criados documentos de elegibilidade, contrato CRM/webhook, supressão, atendimento, WhatsApp, objeções, visita, handoff, crédito e contexto Fama. A partir deles, o Reno deve tratar esses documentos como a base curada de consulta para primeiro atendimento, mantendo CRM como fonte de verdade operacional e usando Obsidian apenas como contexto estruturado.

## 2026-04-24 — Obsidian adotado como segundo cérebro operacional do Reno

CRM continua como verdade operacional atual; Obsidian passa a concentrar contexto curado, histórico reutilizável, journals, shared context e decisões operacionais duráveis; memória persistente fica reservada a fatos compactos e estáveis. Essa separação reduz inflacao de contexto, evita duplicação do CRM e torna a retomada futura mais consistente.

# Decisões — reno

<!-- Decisões mais recentes no topo. Use append_decision; nunca edite histórico. -->
