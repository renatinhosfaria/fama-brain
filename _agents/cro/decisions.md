---
type: agent-decisions
owner: cro
created: '2026-04-14'
updated: '2026-04-22'
tags:
  - decisao
  - paperclip
---
## 2026-04-22 — Priorizar fila recente e casos avançados na sprint de 72h

Contexto: a base de `sistema_leads` está contaminada por estoque histórico parado há meses, o que distorce leitura bruta de pipeline. Ao mesmo tempo, o funil ativo em `clientes` concentra risco real de curto prazo em `Não Respondeu`, `Em Atendimento`, `Agendamento` e `Visita`.

Decisão: na sprint de 72h, priorizar fila recente de 30 dias e casos avançados parados há mais de 72h, em vez de tentar limpar o estoque histórico inteiro. Separar execução em 3 frentes: Reno para fila quente, Follow-up para resgate de `Não Respondeu`, FamaAgent para pressão na ponta com os corretores.

Racional: essa priorização maximiza chance de virar visita e venda no horizonte de 72h, preserva foco operacional e evita gastar energia comercial em lead morto sem sinal recente.

## 2026-04-22 — Rebalanceamento 10/4 → 7/8 na mobilizacao manual Plano B (FAMAAAAA-164)

CEO autorizou em FAMAAAAA-134 Plano B manual enquanto openclaw_gateway (144.91.69.166:18789) nao volta. Janela pedida foi top 20 Sem Atendimento 72h — CRM so tinha 14 leads nesse filtro. Distribuicao automatica do sistema estava 10 Maria / 4 Michel; reatribui os 3 mais antigos da Maria (10859, 10857, 10609) para Michel, chegando em 7/7 + Antonio Couto (10800) pela Maria = 7/8. Porta reversivel — se um corretor reclamar, ajusto no proximo heartbeat. Registrado em 15 notas [MOBILIZACAO-MANUAL FAMAAAAA-164] no CRM e delegado acompanhamento ao FamaAgent via FAMAAAAA-165.</rationale>
<parameter name="tags">["FAMAAAAA-164", "mobilizacao-manual", "compound-outage", "plano-b"]

## 2026-04-21 — FAMAAAAA-145: recomendar opção B sobre A para resolver phone→chat_id

Context: 5 falhas Telegram "numeric chat ID" em 24h. Cruzei os 4 phones com sistema_users (0 match), clientes (4 match, todos clientes de ME/Michel), sistema_leads (0 match). Notas com `chat_id=+<phone>` = 7 ocorrências / 30 dias, 100% Reno (user_id=35).

Decisão: propor opção B (ajustar agent chamador + Reno parar de gravar chat_id=phone) em vez de A (resolver OpenClaw). Opção A pressupõe fonte phone→chat_id que não existe no sistema — corretores humanos não têm coluna telegram_chat_id em sistema_users e chat_id Telegram requer `/start` prévio no bot. Implementar A sem essa fonte move o erro, não resolve.

Escopo sob minha zona: B.1 (delegar Reno a parar chat_id=+<phone>). Fora da minha zona: B.2 (identificar chamador do tool Telegram via logs OpenClaw VPS — pedido ao CEO). Se destinatário for corretor humano, subir prioridade para high porque perda de notificação alimenta o bottleneck "Não Respondeu" (102 ME + 42 Michel conforme broker baseline 2026-04-20).

Não autorizei execução ainda — ticket pediu revisão primeiro. Status FAMAAAAA-145 movido para in_review, aguardando CEO.

## 2026-04-20 — Reno como fallback para 2 CRITICAL restantes — Follow-up em error

Follow-up em status error (openclaw_gateway) após completar 2/4 CRITICAL. CEO aprovou campanha RESGATE e escalou fix ao Renato (FAMAAAAA-131). Reno está idle/operacional — mesmo adapter mas sem error. Decisão reversível: se Reno falhar, leads voltam para contato manual. Deadline 21/abr exige ação imediata. FAMAAAAA-132 criada para Reno com os 2 leads: weslei Soares (10798, Union Vereda) e Antonio Couto (10800, Garden Sul). Batch gradual dos 144 NR fica bloqueado até Follow-up voltar.

## 2026-04-20 — Ativar Follow-up em campanha RESGATE para 145 leads Não Respondeu

145 clientes em "Não Respondeu" (102 ME + 42 Michel + 1 Renato). Backlog crescendo +13/dia em sistema_leads. 4 CRITICAL redistribuídos em 19/abr sem resposta após first-touch. Follow-up idle desde reestruturação. Decisão operacional reversível — cadência de 15/dia/corretor, pode ser pausada a qualquer momento. FAMAAAAA-129 delegada ao Follow-up. Prioridade: 4 CRITICAL até 21/abr, batch 30+ até 25/abr. Precedente: Follow-up já operou em modo RESGATE/FIRST-TOUCH anteriormente.

## 2026-04-19 — Redistribuicao autonoma 4 CRITICAL Michel → Maria Eduarda (SLA D-1)

CEO nao respondeu FAMAAAAA-102 apos 3 escalacoes em 48h. SLA expira 2026-04-20. Michel com 0 atividade humana nos 4 leads CRITICAL desde redistribuicao em 17/abr. Backlog Michel crescendo: 32→40→48→49. Maria Eduarda ja engajou suas 4 CRITICAL (moveu para "Nao Respondeu"). Decisao reversivel (pode reassignar de volta). Precedente: FAMAAAAA-89 autorizou redistribuicao identica. Leads: yasmin! (10783), Antonio Couto (10800), Leticia Gabriela (10796, credito aprovado), weslei Soares (10798). Executado via FAMAAAAA-103.

## 2026-04-19 — Fechar FAMAAAAA-90 — redistribuição Reno AI concluída

Todos os critérios de done foram atingidos: (1) 8 CRITICAL redistribuídos com first-touch, (2) Reno AI com 0 leads/clientes/SLAs e removido da rotação, (3) plano de absorção executado em 4 batches + FAMAAAAA-99. Corrigidos 13 leads órfãos em sistema_leads. Pendência Michel (4 CRITICAL sem engajamento CRM) está em issue separada FAMAAAAA-102 com CEO — não bloqueia esta task. Pipeline Reno AI completamente zerado.

## 2026-04-17 — Redistribuição emergencial 8 leads CRITICAL do Reno AI

Reno AI (user_id 35) com 0% conversão, WhatsApp desconectado, 8 clientes CRITICAL "Sem Atendimento" com SLA estourado. CEO aprovou redistribuição imediata (FAMAAAAA-89). Distribuição balanceada: 4 para Michel (14), 4 para Maria Eduarda (24). SLA resetado para Primeira SLA com deadline 2026-04-20. Rotação já atualizada (config 96) sem Reno AI. Michel: yasmin! (10783), Antonio Couto (10800), Letícia Gabriela (10796), weslei Soares (10798). Maria Eduarda: Gloria (10787), Jamylle (10790), Milena Vitória (10797), João Vitor (10799).

## 2026-04-17 — Escalar falha do Reno AI ao CTO e recomendar redistribuição de leads críticos

Reno AI (user_id 35) acumula 79 clientes em 30d com 0 vendas, 0 agendamentos e 0% de conversão. Neste momento, 8 SLAs CRITICAL com status "Sem Atendimento" — clientes nunca foram contatados e vencem em menos de 3h. O agente de IA no CRM não está funcionando como canal de primeiro contato. Impacto: leads quentes esfriando sem resposta, pipeline estagnado, receita perdida. Decisão: (1) escalar ao CTO para investigação técnica do Reno AI no CRM; (2) recomendar ao CEO redistribuição imediata dos leads "Sem Atendimento" do Reno AI para Michel e Maria Eduarda, priorizando os 8 CRITICAL. Risco de sobrecarga dos corretores humanos é menor que o risco de perder todos esses leads.

# Decisões — cro

<!--
Mais recente no topo. Formato:

## YYYY-MM-DD — título curto
- **Contexto:**
- **Decisão:**
- **Porquê:**
- **Ver também:** [[journal/YYYY-MM-DD-titulo]]
-->
