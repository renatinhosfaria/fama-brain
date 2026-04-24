---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - operacao
  - testes
  - supressao
topic: reno
title: 'Reno — política para leads internos, testes e autoleads'
---
# Objetivo
Evitar que o Reno envie WhatsApp para leads internos, testes, autoleads ou registros usados para validação técnica.

# Regra central
Na dúvida razoável de teste/interno, suprimir o primeiro contato e registrar o motivo no CRM.

# Sinais de lead de teste
- Nome contém `teste`, `test`, `reno`, `bot`, `webhook`, `qa`, `homologação`.
- Email com domínio interno ou padrão falso.
- Telefone repetido em muitos registros.
- Telefone de colaborador conhecido.
- Origem técnica ou campanha de homologação.
- Mensagem/formulário claramente artificial.

# Sinais de autolead interno
- Renato ou alguém da operação aparece como cliente.
- Número usado para teste da Fama.
- Registro criado para testar integração, CRM, webhook, WhatsApp ou agente.

# Ação padrão
- Não enviar WhatsApp.
- Registrar no CRM: `Reno: primeiro contato suprimido — lead interno/teste/autolead.`
- Não registrar no Obsidian salvo se o caso revelar falha recorrente de identificação.

# Quando escalar para decisão operacional
Se testes continuam chegando como leads reais, criar journal e depois decision com regra mais restritiva.

# Anti-padrões
- Responder cliente interno como se fosse lead real.
- Usar Obsidian para guardar lista extensa de testes transitórios.
- Ignorar sem registrar no CRM quando o caso é broker 35.
