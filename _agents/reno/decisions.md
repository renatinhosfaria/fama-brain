---
type: agent-decisions
owner: reno
created: '2026-04-24'
updated: '2026-04-29'
tags:
  - decisao
---
## 2026-04-29 — Worker de inbound WhatsApp removido por risco de conflito

Renato solicitou desfazer a criação do worker `reno-whatsapp-inbound-monitor-production` porque avaliou que ele poderia gerar conflito e problemas futuros. O cronjob `4a98e0c3341e` foi removido, o script `reno_whatsapp_inbound_monitor.py` e o cursor de estado foram apagados. Permanece ativo apenas o worker de envio de repescagem existente.

## 2026-04-29 — Worker de inbound WhatsApp criado para handoff pós-repescagem

Foi criado o cronjob de produção `reno-whatsapp-inbound-monitor-production` para rodar a cada 3 minutos, sem limite de repetição, usando script de monitoramento de novas mensagens WhatsApp e a skill `fama-reno-whatsapp-qualification`. O worker deve detectar respostas pós-repescagem de clientes broker_id=35, mudar status para Em Atendimento, parar repescagem com client_replied, registrar CRM/Obsidian e continuar o atendimento, evitando resposta duplicada se o gateway já tiver respondido.

## 2026-04-29 — Handoff de resposta pós-repescagem deve ser via worker de inbound WhatsApp

Renato definiu que webhook do lado do FamaChat não garante o evento, porque o FamaChat não sabe quando o Reno recebeu uma mensagem diretamente no WhatsApp. A garantia operacional deve vir de um worker que monitore novas mensagens recebidas no WhatsApp/Hermes, detecte respostas de clientes broker_id=35 em repescagem e execute o checklist obrigatório: status Em Atendimento, parar repescagem com client_replied, registrar CRM/Obsidian e continuar pela skill fama-reno-whatsapp-qualification.

## 2026-04-29 — Resposta à repescagem deve acionar handoff obrigatório para atendimento

Renato definiu que resposta de cliente após repescagem é um evento obrigatório de handoff, não apenas um sinal comercial. O sistema deve atualizar status para Em Atendimento, parar a repescagem, registrar CRM/Obsidian e continuar pela skill fama-reno-whatsapp-qualification. O worker atual de repescagem envia mensagens, mas não garante sozinho monitoramento de respostas; a garantia exige webhook/worker de mensagem recebida com checklist atômico e auditoria.

## 2026-04-28 — Guardrail único de envio WhatsApp: tentar com e sem nono dígito

Renato redefiniu a política de envio do Reno: para entrega de mensagem pelo WhatsApp, o único guardrail operacional deve ser tentar o número brasileiro com o nono dígito e também sem o nono dígito quando aplicável. O Reno não deve bloquear a tentativa antes do envio por ausência de JID, haswhatsapp=false, duplicidade, histórico, interno/teste ou inferências de qualidade do contato. Se as formas tentáveis falharem, preservar status e registrar nota no CRM com o motivo.

## 2026-04-28 — Guardrail de envio WhatsApp: tentar envio antes de registrar falha

Renato definiu que ausência de JID confiável, haswhatsapp=false ou incerteza de formato não deve bloquear sozinha o primeiro contato do Reno quando o lead for elegível e houver telefone plausível. O Reno deve tentar enviar pelo WhatsApp usando a melhor normalização disponível; se falhar, deve preservar status e registrar nota no CRM com o motivo do erro.

## 2026-04-27 — Plano de reversão de performance — carteira Reno 99 clientes

Carteira atual do Reno validada no CRM: 99 clientes em 30 dias; 87 Não Respondeu, 11 Em Atendimento, 1 Agendamento. Para chegar às metas de 70% de resposta e 10% de agendamento, faltam aproximadamente 58 respostas e 9 agendamentos. A estratégia definida é trocar a lógica de atendimento passivo por uma operação ativa em três frentes: auditoria de entrega e elegibilidade, cadência de reengajamento dos Não Respondeu e conversão agressiva dos Em Atendimento para visita presencial, mantendo mensagens curtas, humanas, uma pergunta por vez e foco em visita na Fama.

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
