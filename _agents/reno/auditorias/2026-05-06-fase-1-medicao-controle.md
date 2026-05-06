---
type: journal
owner: reno
created: '2026-05-06'
updated: '2026-05-06'
tags:
  - reno
  - auditoria
  - medicao-controle
  - dashboard
  - funnel
  - crm
  - fase-1
---
# Auditoria — Fase 1 Medição e Controle do Reno

## Escopo
Execução da próxima fase recomendada para o Reno: **Fase 1 — Medição e controle**.

Objetivo desta execução: criar um primeiro baseline operacional do funil Reno com dados reais do FamaChat/CRM, cron jobs produtivos e estado do WhatsApp, sem alterar clientes, filas ou agendamentos.

## Fontes consultadas
- CRM/FamaChat via `mcp-postgres`.
- Tabelas: `clientes`, `clientes_id_anotacoes`, `clientes_agendamentos`.
- Runtime Hermes via `cronjob list`.
- Status WhatsApp via `mcp_mcp_postgres_whatsapp_status`.
- Data de referência do banco: `2026-05-06T02:24:42Z`.
- Data/hora operacional São Paulo: `2026-05-05 23:24:42`.

## Critério operacional v1
Escopo Reno:
- `clientes.broker_id = 35`.

Métricas v1:
- **Recebidos**: clientes Reno criados no período.
- **Status do funil**: status atual em `clientes.status`.
- **Engajados por status**: clientes atuais em `Em Atendimento`, `Agendamento` ou `Visita`.
- **Avanço para agendamento por status**: clientes atuais em `Agendamento` ou `Visita`.
- **Primeiro contato enviado**: inferido por notas CRM com padrões como `Primeiro contato enviado pelo Reno`, `Reno enviou o primeiro contato`, `Reno enviou o primeiro WhatsApp`, `Reno realizou o primeiro contato`.
- **Falha de WhatsApp**: inferida por notas CRM com padrões como `Envio automático do Reno não realizado`, `WhatsApp não validou o número disponível` ou `falha definitiva do envio`.
- **Visitas**: `clientes_agendamentos` com `broker_id=35` e `type='Visita'`.
- **Filas ativas**: `clientes.meta_data.reno_followup.{repescagem,resgate,agendamento}`.

Observação: nesta versão, eventos de mensagem ainda são inferidos por texto de nota. Isso é suficiente para baseline, mas não é ideal para dashboard definitivo.

## Resultado — mês atual até agora
Período operacional: maio/2026 até a data de referência.

- Clientes recebidos: **31**.
- Sem Atendimento: **1**.
- Não Respondeu: **16**.
- Em Atendimento: **8**.
- Agendamento: **4**.
- Visita: **0**.
- Arquivado: **2**.
- Engajados por status: **12**.
- Taxa de engajamento sobre recebidos: **38,7%**.
- Avanço para Agendamento/Visita por status: **4**.
- Taxa de agendamento sobre recebidos: **12,9%**.
- Primeiro contato enviado identificado por notas: **28**.
- Falha de WhatsApp identificada por notas: **4**.
- Inbound/resposta registrado por nota: **2**.
- Clientes com evento de repescagem em notas no mês: **96**.
- Clientes com evento de resgate em notas no mês: **30**.
- Clientes com evento de agendamento em notas no mês: **10**.
- Visitas criadas no mês: **4**.
- Visitas no mês: **5**.
- Visitas Agendadas: **3**.
- Visitas Confirmadas: **2**.
- Visitas Canceladas: **0**.

## Resultado — últimos 7 dias
- Clientes recebidos: **35**.
- Sem Atendimento: **1**.
- Não Respondeu: **16**.
- Em Atendimento: **8**.
- Agendamento: **4**.
- Visita: **1**.
- Arquivado: **5**.
- Primeiro contato enviado identificado por notas: **28**.
- Falha de WhatsApp identificada por notas: **4**.
- Engajados por status: **13**.
- Avanço para Agendamento/Visita por status: **5**.
- Taxa de engajamento sobre enviados identificados: **46,4%**.
- Taxa de agendamento sobre recebidos: **14,3%**.
- Taxa de falha de envio sobre recebidos: **11,4%**.
- Visitas criadas: **5**.
- Visitas no período: **5**.
- Visitas Agendadas: **3**.
- Visitas Confirmadas: **2**.
- No-show registrado formalmente: **0**.

## Resultado — últimos 30 dias
- Clientes recebidos: **131**.
- Sem Atendimento: **1**.
- Não Respondeu: **16**.
- Em Atendimento: **35**.
- Agendamento: **4**.
- Visita: **1**.
- Arquivado: **74**.
- Primeiro contato enviado identificado por notas: **65**.
- Falha de WhatsApp identificada por notas: **21**.
- Engajados por status: **40**.
- Avanço para Agendamento/Visita por status: **5**.
- Taxa de engajamento sobre enviados identificados: **61,5%**.
- Taxa de agendamento sobre recebidos: **3,8%**.
- Taxa de falha de envio sobre recebidos: **16,0%**.
- Visitas criadas: **6**.
- Visitas no período: **6**.
- Visitas Agendadas: **3**.
- Visitas Confirmadas: **2**.
- Visitas Canceladas: **1**.
- No-show registrado formalmente: **0**.

## Estado das filas Reno
### Repescagem
- Branch total: **110**.
- Com envio registrado em `last_sent_at`: **89**.
- Ativas: **24**.
- Vencidas agora: **8**.
- Clientes em `Não Respondeu` sem branch de repescagem: **0**.

Ponto de atenção: a amostra de vencidos inclui clientes cujo status já está `Em Atendimento` ou `Arquivado`. Isso indica que parte das branches antigas de repescagem não foi encerrada quando o status progrediu ou arquivou.

### Resgate
- Branch total: **25**.
- Com envio registrado em `last_sent_at`: **19**.
- Ativas: **11**.
- Vencidas agora: **0**.
- Clientes em `Em Atendimento` sem branch de resgate: **10**.

Ponto de atenção: há clientes em `Em Atendimento` sem branch de resgate. Isso não foi corrigido nesta execução porque inicializar branch pode mudar elegibilidade futura para outbound; precisa de decisão operacional específica.

### Agendamento
- Branch total: **4**.
- Com envio registrado em `last_sent_at`: **1**.
- Ativas: **3**.
- Vencidas agora: **0**.
- Clientes em `Agendamento` sem branch de agendamento: **0**.

## Runtime produtivo
Cron jobs produtivos encontrados e ativos:
- `reno-repescagem-message-queue-production` — job `680545c7e1fb`, schedule `*/6 * * * *`, repeat `forever`, último status `ok`, skills `fama-reno-governance` + `repescagem-follow-up`.
- `reno-resgate-message-queue-production` — job `027dc32ab85e`, schedule `3-59/6 * * * *`, repeat `forever`, último status `ok`, skills `fama-reno-governance` + `resgate-follow-up`.
- `reno-agendamento-message-queue-production` — job `100a6e499838`, schedule `1-59/6 * * * *`, repeat `forever`, último status `ok`, skills `fama-reno-governance` + `agendamento-follow-up`.

Status WhatsApp:
- Instância `gestor`: **Conectado**.
- Usuário associado: Renato Faria.

## Achados de controle
1. **O funil já tem dados suficientes para um dashboard v1.** O CRM permite medir recebidos, status atual, falhas de WhatsApp, filas de follow-up e visitas.
2. **A meta mensal de agendamento sobre recebidos está acima de 10% no recorte atual de maio**, considerando status atual `Agendamento`/`Visita`: 4 de 31 = 12,9%.
3. **A medição de primeiro contato ainda depende de texto de nota.** Para dashboard definitivo, o ideal é normalizar eventos em campo/tabela própria.
4. **Há risco de ruído em repescagem antiga.** Existem branches ativas/vencidas em clientes que já não estão em `Não Respondeu`.
5. **Há lacuna de resgate.** Existem 10 clientes atuais em `Em Atendimento` sem branch de resgate.
6. **Há visita passada ainda como `Agendado`.** Appointment `237`, cliente `11141` Thiago Santos Mendes, visita em `2026-05-04T21:00:00Z`, continua com status `Agendado`. Deve ser validada como compareceu, não compareceu, remarcou ou outro resultado operacional.
7. **No-show não está mensurável de forma confiável ainda.** Não há status formal de `Não Compareceu` registrado no recorte, apesar de existir ao menos uma visita passada com status ainda aberto.

## Dashboard v1 recomendado
Blocos mínimos para painel Reno:

### 1. Entrada e contato
- Recebidos no período.
- Primeiro contato enviado.
- Falha de WhatsApp.
- Sem Atendimento remanescente.

### 2. Funil por status
- Não Respondeu.
- Em Atendimento.
- Agendamento.
- Visita.
- Arquivado.

### 3. Conversão
- Engajados por status / recebidos.
- Agendamento ou Visita / recebidos.
- Agendamento ou Visita / engajados.

### 4. Follow-up
- Repescagem: branch total, ativos, vencidos, enviados, branch fora de status esperado.
- Resgate: branch total, ativos, vencidos, enviados, Em Atendimento sem branch.
- Agendamento: branch total, ativos, vencidos, enviados.

### 5. Visitas
- Visitas criadas.
- Agendadas futuras.
- Confirmadas.
- Canceladas.
- Passadas ainda abertas.
- Não compareceu / no-show.

## Recomendações operacionais pós-baseline
1. Criar métrica/evento normalizado para `reno_event_type`, evitando regex em notas.
2. Criar visão ou endpoint de dashboard com os blocos acima.
3. Fazer saneamento controlado das branches de repescagem ativas em clientes fora de `Não Respondeu`.
4. Decidir se todos os clientes em `Em Atendimento` sem branch devem entrar no Resgate, e com qual `next_run_at` seguro.
5. Regularizar visitas passadas em aberto, começando pelo appointment `237`.
6. Adicionar status operacional explícito para no-show/comparecimento, se ainda não estiver padronizado no FamaChat.

## SQL base usado no dashboard v1
Abaixo está a lógica resumida para evolução em view/endpoint.

```sql
-- Escopo base
SELECT *
FROM clientes
WHERE broker_id = 35;

-- Funil por status
SELECT status, count(*)
FROM clientes
WHERE broker_id = 35
GROUP BY status;

-- Follow-up state
SELECT
  meta_data->'reno_followup'->'repescagem' AS repescagem,
  meta_data->'reno_followup'->'resgate' AS resgate,
  meta_data->'reno_followup'->'agendamento' AS agendamento
FROM clientes
WHERE broker_id = 35;

-- Visitas Reno
SELECT *
FROM clientes_agendamentos
WHERE broker_id = 35
  AND type = 'Visita';
```

## Conclusão
A Fase 1 foi executada como baseline real de medição e controle. O Reno já possui runtime produtivo ativo, WhatsApp conectado e dados suficientes para painel operacional. A principal fragilidade não é falta de dados, e sim ausência de eventos normalizados: hoje parte importante da métrica depende de inferência por notas CRM. O próximo passo técnico mais seguro é transformar esse baseline em view/endpoint/dashboard, antes de automatizar reparos de fila ou status.
