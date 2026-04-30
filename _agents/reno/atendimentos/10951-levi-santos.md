---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Levi Santos
client_id: 10951
broker_id: 35
status_crm: Em Atendimento
source: Facebook Ads
created: '2026-04-29'
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vereda
---
# Atendimento — Levi Santos

## Resumo atual
Cliente Levi Santos, CRM client_id 10951, broker_id 35/Reno, em `Em Atendimento`. Interesse associado ao empreendimento Union Vereda, no Jaraguá. O cliente respondeu à repescagem, pediu mais informações e depois perguntou sobre a metragem; após resposta do Reno sobre plantas de 57/58m² e opção térrea maior, ficou em silêncio. Resgate step 1 enviado em 2026-04-30 com gancho específico sobre escolher entre planta padrão e térrea maior.

## Dados operacionais
- Cliente ID: 10951
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads
- Telefone/WhatsApp: disponível no CRM; não expor em relatórios
- WhatsApp JID: registrado no CRM
- Empreendimento vinculado: Union Vereda (`id_empreendimento=161`)
- Última interação relevante: 2026-04-30 14:41 - Resgate step 1 enviado pelo Reno

## Contexto comercial
Lead veio de Facebook Ads com interesse no Union Vereda, bairro Jaraguá, Uberlândia. Empreendimento com apartamentos de 2 quartos, suíte, varanda/sacada, 1 vaga, áreas principais de 57 a 58m² e opção térrea maior cadastrada com 82,2m². Valores publicados a partir de R$ 288.880, dependendo da unidade. Lazer/serviços incluem piscina, academia, espaço gourmet, churrasqueira, playground, brinquedoteca, salão de festas, beach tennis, portaria 24h, elevadores, coworking e bicicletário. Entrega cadastrada: Dez/2028. Não mencionar endereço exato espontaneamente.

## Diagnóstico
### Necessidade
Ainda não declarada com clareza. O interesse atual parece ligado a entender melhor o perfil/planta do Union Vereda.

### Momento
Cliente já saiu do silêncio inicial e pediu informações, mas interrompeu após explicação de metragem/opções.

### Decisão
Não há decisor adicional identificado.

### Viabilidade
Ainda sem dados de renda, entrada, financiamento ou faixa confortável. Não prometer crédito; usar financiamento apenas como apoio de viabilidade quando o cliente trouxer esse tema.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato do Reno
Reno enviou mensagem inicial sobre o Union Vereda/Jaraguá. Status atualizado para `Não Respondeu` após envio bem-sucedido.

### 2026-04-29 — Repescagem step 1 e resposta do cliente
Reno enviou repescagem sobre o Union Vereda. Cliente respondeu: "Bom dia. Pode passar mais informações". Status foi atualizado para `Em Atendimento`. Reno apresentou o Union Vereda com informações iniciais, incluindo bairro, perfil de 2 quartos com suíte, varanda gourmet, lazer, entrada parcelada pela construtora e documentação grátis para cliente MCMV.

### 2026-04-29 — Pergunta sobre metragem
Cliente perguntou: "São quantos metros quadrados mesmo". Reno respondeu que as opções principais têm cerca de 57 a 58m², com 2 quartos, suíte, varanda gourmet e 1 vaga; mencionou também opção térrea maior cadastrada com 82,2m². Próximo passo sugerido: entender se prefere planta padrão ou unidade maior.

### 2026-04-30 — Resgate step 1 enviado
Bucket: `midia_opcao_enviada`.

Mensagem enviada:
```text
Levi, sobre o Union Vereda: como você tinha perguntado da metragem, acho que o melhor agora é separar a planta de 57/58m² da térrea maior.

Qual faz mais sentido pra você olhar primeiro?
```

Estado operacional após envio: `step=1`, `last_sent_at=2026-04-30T14:41:18-03:00`, `next_run_at=2026-04-30T16:11:18-03:00`, `last_context_bucket=midia_opcao_enviada`, `stopped_reason=null`.

## Objeções e travas
- Trava atual: cliente parou após receber explicação sobre metragem/opções; ainda não escolheu entre planta padrão e unidade térrea maior.
- Lacuna: documento legado anterior estava em `_agents/reno/clientes/10951-levi-santos.md` e documento antigo em `_agents/reno/atendimentos/cliente-10951-levi-santos.md`; este arquivo oficial consolida o atendimento no padrão atual.

## Próximo passo
Aguardar resposta do cliente. Se responder escolhendo planta padrão ou térrea maior, continuar atendimento normal com `fama-reno-whatsapp-qualification`, enviar/explicar a opção correspondente e conduzir para visita presencial na Fama assim que houver sinal positivo. Se permanecer em silêncio até `next_run_at`, avaliar próximo step de Resgate com abordagem diferente, sem repetir a mesma pergunta.

## Observações operacionais
- CRM/FamaChat é a fonte de verdade operacional.
- Envio de Resgate step 1 registrado no CRM pela tool específica `mark_reno_followup_sent`, nota CRM ID 16186.
- Não houve agendamento, visita ativa ou venda vinculada no momento deste envio.
- Não houve alteração de status durante o Resgate; cliente permanece em `Em Atendimento`.
