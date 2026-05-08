---
type: entity-profile
owner: reno
entity_type: atendimento
entity_name: Eliseu
client_id: 10972
broker_id: 35
status_crm: Em Atendimento
source: SLA Cascata
created: '2026-04-30'
updated: '2026-05-08'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vista
  - condicao-valor
  - visita-pendente
  - duplicate-ownership
  - manual-review
  - resgate-paused
---
# Atendimento — Eliseu

Vínculos: [[reno]], [[playbook-atendimento]], [[eliseu]], [[union-vista]], [[credito-imobiliario]], [[operacao-crm-webhook]], [[fama-produtos]].

## Resumo atual
Cliente em atendimento pelo Reno, com interesse no Union Vista e foco em investimento/valorização. O Resgate chegou ao step 5 em 2026-05-03 com bucket `visita_pendente`, mas na revalidação de 2026-05-07 foi encontrada duplicidade/ownership ativa no mesmo telefone/JID em outro cadastro em atendimento (cliente 10845, broker 24). Por isso o step 6 não foi enviado e o fluxo de Resgate foi pausado com `manual_review_duplicate_active_broker`.

## Dados operacionais
- Cliente ID: 10972
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: cadastrado no CRM; número completo não exposto aqui
- Última interação relevante: 2026-05-07 — Resgate pausado por duplicidade/ownership ativa; nenhum WhatsApp enviado nesta execução

## Contexto comercial
- Empreendimento de interesse: Union Vista, região do Grand Ville, Uberlândia.
- Cliente perguntou preço, quantidade de torres e entrega.
- Foi informado no atendimento anterior: valores a partir de R$ 292.400 conforme unidade, 4 torres, previsão de entrega Jul/2027, apartamentos de 2 quartos com suíte, sacada e vaga coberta.
- Cliente perguntou sobre plano investidor, 10% de entrada e parcela baixa.
- Cliente indicou pensar em valorização e eventualmente revenda.

## Diagnóstico
### Necessidade
Avaliar se o Union Vista faz sentido como possibilidade de investimento/valorização, não apenas como moradia imediata.

### Momento
A conversa teve sequência real e o Resgate foi nutrido até o step 5. Nesta execução o ciclo foi interrompido por ownership duplicada antes do step 6.

### Decisão
Ainda sem decisor adicional identificado.

### Viabilidade
A trava principal continua sendo condição/fluxo (entrada, parcela e validação do plano investidor por unidade/tabela atual), mas a prioridade operacional agora é revisão manual de ownership, porque o mesmo telefone/JID também está ativo em outro cadastro/broker.

## Histórico curado de interações
### 2026-04-25 — Primeiro contato e resposta do cliente
Reno retomou o cliente pelo Union Vista, região do Grand Ville. Cliente respondeu perguntando preço, torres e entrega. Depois perguntou sobre plano investidor com 10% de entrada e parcela baixa.

### 2026-04-25 — Condução sobre investimento
Reno explicou que pode existir possibilidade de fluxo com entrada parcelada pela construtora, mas que 10%/parcela baixa precisa ser validado conforme unidade e tabela. Cliente informou pensar em valorização e talvez revenda. Reno reforçou que o lançamento com entrega em 2027 pode fazer sentido pela valorização durante obra, mas que fluxo e unidade precisam ser escolhidos com cuidado, convidando para passar na Fama para simular cenários.

### 2026-04-30 — Resgate step 1 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, pensando naquele plano investidor do Union Vista, o ponto principal é ver se o fluxo de entrada e parcelas fica confortável pra você. Quer que eu te ajude a olhar por esse lado?”

### 2026-04-30 — Resgate step 2 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, pra não ficar preso só no “10% de entrada”, eu olharia primeiro qual ponto pesa mais no seu caso: entrada inicial, parcela durante a obra ou potencial de revenda. Qual desses te preocupa mais hoje?”

### 2026-04-30 — Resgate step 3 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, posso fazer um filtro mais direto do Union Vista pra você, olhando só cenários que não pesem tanto na entrada e façam sentido para revenda depois.

Quer que eu siga por esse caminho?”

### 2026-05-01 — Resgate step 4 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, pensando como investimento, eu não olharia só a menor entrada. O ideal é comparar o fluxo com a chance de valorização do Union Vista.

Se eu te mandar um resumo simples desse cenário, ajuda?”

### 2026-05-03 — Resgate step 5 enviado
Bucket: `visita_pendente`.
Mensagem enviada: “Eliseu, pelo que você buscou como investimento, acho mais seguro olhar o fluxo do Union Vista na tela, com entrada e parcelas lado a lado.

Amanhã você consegue passar na Fama para eu te mostrar 2 cenários simples?”

### 2026-05-07 — Pausa por duplicidade/ownership
Revalidação encontrou o mesmo telefone/JID também vinculado ao cliente 10845, que segue em Em Atendimento com outro broker (24). O Resgate não enviou step 6 e a branch foi pausada com `stopped_reason=manual_review_duplicate_active_broker`.

## Objeções e travas
- Condição/valor: interesse em plano investidor, entrada reduzida e parcela baixa.
- Viabilidade: necessidade de validar se o fluxo cabe de forma confortável e se a unidade/tabela atual permite o cenário desejado.
- Estratégia de investimento: entender se a prioridade real é entrada baixa, parcela durante obra ou potencial de revenda/valorização.
- Ownership/duplicidade: mesmo telefone/JID também aparece em outro cadastro ativo em atendimento, exigindo revisão manual antes de qualquer novo passo.

## Próximo passo
Não enviar novo Resgate enquanto a duplicidade/ownership não for resolvida. Aguardar revisão manual; se o contato for confirmado como único/adequado ao Reno, reavaliar a régua a partir do estado operacional vigente.

## Observações operacionais
- CRM/FamaChat confirmado como fonte operacional: cliente existe, `broker_id=35`, status `Em Atendimento`, sem visita/agendamento ativo no momento da pausa.
- Branch de Resgate atualizada para `step=5`, `enabled=false`, `next_run_at=null`, `last_sent_at=2026-05-03T17:52:37-03:00`, `stopped_reason=manual_review_duplicate_active_broker`.
- Mesmo telefone/JID identificado também no cliente 10845, broker 24, ainda em `Em Atendimento`.
- Nota CRM registrada nesta execução: ID 17194.
- Documento mantido no caminho oficial de atendimento do Reno em `_agents/reno/atendimentos/10972-eliseu.md`.
