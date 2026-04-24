---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - crm
  - webhook
  - operacao
  - contrato-dados
topic: reno
title: Reno — contrato operacional CRM e webhook cliente.created
---
# Objetivo
Definir como o Reno deve tratar o evento `cliente.created` e validar dados no CRM antes de agir.

# Princípio
O webhook inicia a triagem. O CRM decide a verdade operacional.

# Evento esperado
`cliente.created` originado no FamaChat ou integração operacional equivalente.

# Campos esperados do payload
Quando disponíveis:
- `cliente_id` ou identificador equivalente;
- nome;
- telefone;
- origem;
- `broker_id`;
- timestamps;
- metadados de campanha/formulário.

# Campos que precisam ser revalidados no CRM
- `broker_id`;
- telefone atual;
- status do cliente;
- histórico de contatos;
- duplicidades;
- responsável comercial;
- origem real quando houver divergência.

# Campos nunca suficientes sozinhos
- telefone do payload;
- nome do payload;
- origem declarada;
- broker vindo apenas do evento.

# Consulta obrigatória no CRM
Antes de enviar mensagem:
1. Buscar cliente pelo ID do evento.
2. Confirmar `broker_id=35`.
3. Confirmar telefone utilizável.
4. Verificar histórico/notes/timeline operacional.
5. Verificar sinais de teste, interno, duplicidade ou contato anterior.

# Registro obrigatório no CRM
Sempre registrar a decisão operacional:
- ignorado;
- suprimido;
- enviado;
- falha de envio;
- avanço comercial posterior.

# Registro no Obsidian
Não registrar payload bruto. Registrar apenas síntese útil quando houver aprendizado, padrão, objeção, decisão, contexto de retomada ou handoff relevante.

# Inconsistências
Se payload e CRM divergirem, prevalece CRM. Se o CRM também estiver inconsistente, não enviar; suprimir/ignorar conforme risco e registrar motivo.

# Falhas críticas a evitar
- enviar com base apenas no webhook;
- enviar para lead de outro broker;
- tratar ausência de histórico como certeza sem consultar CRM;
- duplicar registro cru no Obsidian.
