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
updated: '2026-05-03'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vista
  - condicao-valor
  - visita-pendente
---
# Atendimento — Eliseu

## Resumo atual
Cliente em atendimento pelo Reno, interessado no Union Vista. Já respondeu e conversou sobre preço, torres, entrega e possibilidade de plano investidor. Ficou silencioso após condução sobre valorização/revenda e convite para simular cenários presencialmente na Fama.

Em 2026-04-30 foram enviados Resgates steps 1, 2 e 3 com bucket `condicao_valor`. Em 2026-05-01 foi enviado o Resgate step 4 com bucket `condicao_valor`, mudando o ângulo para comparação entre fluxo e chance de valorização do Union Vista. Em 2026-05-03, por ser domingo e já haver sinal claro de interesse/investimento sem visita marcada, o step 5 foi reclassificado para `visita_pendente`, com CTA de visita presencial para segunda-feira, focando em ver 2 cenários simples de entrada e parcelas na tela da Fama.

## Dados operacionais
- Cliente ID: 10972
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: cadastrado no CRM; envios via WhatsApp confirmados sem expor número completo aqui
- Última interação relevante: 2026-05-03 17:52 BRT — Resgate step 5 enviado

## Contexto comercial
- Empreendimento de interesse: Union Vista, região do Grand Ville, Uberlândia.
- Cliente perguntou preço, quantidade de torres e entrega.
- Foi informado no atendimento anterior: valores a partir de R$ 292.400 conforme unidade, 4 torres, entrega prevista Jul/2027, apartamentos de 2 quartos com suíte, sacada e vaga coberta.
- Cliente perguntou sobre plano investidor, 10% de entrada e parcela baixa.
- Cliente indicou pensar em valorização e eventualmente revenda.

## Diagnóstico
### Necessidade
Avaliar se o Union Vista faz sentido como possibilidade de investimento/valorização, não apenas como moradia imediata.

### Momento
Cliente entrou em conversa ativa, mas parou após orientação sobre plano investidor e convite para análise mais segura. Permaneceu sem resposta após os steps 1 a 4 de Resgate.

### Decisão
Ainda sem decisor adicional identificado. Próxima conversa deve entender se ele decide sozinho e se a estratégia é revenda/valorização ou renda futura.

### Viabilidade
Trava principal ligada a condição/fluxo: entrada, parcela baixa e validação de plano investidor por unidade/tabela atual. O step 5 deixou de tentar resolver por resumo no WhatsApp e conduziu para visita presencial, porque a comparação de entrada/parcelas e potencial de investimento depende de ver cenários lado a lado sem prometer condição ou aprovação.

## Histórico curado de interações
### 2026-04-25 — Primeiro contato e resposta do cliente
Reno retomou o cliente pelo Union Vista, região do Grand Ville. Cliente respondeu perguntando preço, torres e entrega. Depois perguntou sobre plano investidor com 10% de entrada e parcela baixa.

### 2026-04-25 — Condução sobre investimento
Reno explicou que pode existir possibilidade de fluxo com entrada parcelada pela construtora, mas que 10%/parcela baixa precisa ser validado conforme unidade e tabela. Cliente informou pensar em valorização e talvez revenda. Reno reforçou que lançamento com entrega em 2027 pode fazer sentido pela valorização durante obra, mas que fluxo e unidade precisam ser escolhidos com cuidado, convidando para passar na Fama para simular cenários.

### 2026-04-30 — Resgate step 1 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, pensando naquele plano investidor do Union Vista, o ponto principal é ver se o fluxo de entrada e parcelas fica confortável pra você. Quer que eu te ajude a olhar por esse lado?”
Próximo Resgate previsto: 2026-04-30 14:34 BRT, se permanecesse sem resposta e ainda elegível.

### 2026-04-30 — Resgate step 2 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, pra não ficar preso só no “10% de entrada”, eu olharia primeiro qual ponto pesa mais no seu caso: entrada inicial, parcela durante a obra ou potencial de revenda. Qual desses te preocupa mais hoje?”
Contexto usado: CRM/FamaChat confirmou `broker_id=35`, status `Em Atendimento`, sem visita/agendamento ativo e histórico sobre plano investidor do Union Vista; vault confirmou diagnóstico de condição/valor e viabilidade como travas principais; não havia nota CRM posterior indicando resposta do cliente após o step 1.
Próximo Resgate previsto: 2026-04-30 16:53 BRT, se permanecesse sem resposta e ainda elegível.

### 2026-04-30 — Resgate step 3 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, posso fazer um filtro mais direto do Union Vista pra você, olhando só cenários que não pesem tanto na entrada e façam sentido para revenda depois.

Quer que eu siga por esse caminho?”
Contexto usado: CRM/FamaChat confirmou `broker_id=35`, status `Em Atendimento`, sem visita/agendamento ativo e histórico sobre plano investidor; sessão/Hermes e notas anteriores indicaram silêncio após outbound do Reno; vault confirmou a trava de condição/valor. A abordagem mudou em relação ao step 2: saiu da pergunta comparativa sobre preocupação principal e passou para permissão de filtro objetivo de cenários.
Próximo Resgate previsto: 2026-05-01 17:12 BRT, se permanecesse sem resposta e ainda elegível.

### 2026-05-01 — Resgate step 4 enviado
Bucket: `condicao_valor`.
Mensagem enviada: “Eliseu, pensando como investimento, eu não olharia só a menor entrada. O ideal é comparar o fluxo com a chance de valorização do Union Vista.

Se eu te mandar um resumo simples desse cenário, ajuda?”
Contexto usado: CRM/FamaChat confirmou `broker_id=35`, status `Em Atendimento`, sem visita/agendamento/visita ativa, branch de Resgate vencida e silêncio após o último outbound; vault confirmou contexto de plano investidor, entrada reduzida, parcela baixa, valorização e revenda; sessão/Hermes histórica confirmou que o step 3 já ofereceu filtro direto. A nova abordagem mudou o ângulo comercial para comparação simples de investimento, mudou o CTA para oferta de resumo e reduziu a fricção da resposta.
Próximo Resgate previsto: 2026-05-03 17:30 BRT, se permanecesse sem resposta e ainda elegível.

### 2026-05-03 — Resgate step 5 enviado
Bucket: `visita_pendente`.
Mensagem enviada: “Eliseu, pelo que você buscou como investimento, acho mais seguro olhar o fluxo do Union Vista na tela, com entrada e parcelas lado a lado.

Amanhã você consegue passar na Fama para eu te mostrar 2 cenários simples?”
Contexto usado: CRM/FamaChat confirmou cliente existente, `broker_id=35`, status `Em Atendimento`, sem agendamento/visita ativo, branch de Resgate em step 4 com `next_run_at` vencido e `stopped_reason=null`; timeline e notas não indicaram resposta do cliente após o step 4; vault confirmou interesse no Union Vista, perfil investidor, trava de entrada/parcela e ausência de visita marcada. A abordagem mudou em relação ao step 4: saiu de resumo por WhatsApp e foi para CTA presencial de segunda-feira, com benefício de comparar cenários simples na tela sem prometer condição.
Próximo Resgate previsto: 2026-05-07 17:52 BRT, se permanecer sem resposta e ainda elegível.

## Objeções e travas
- Condição/valor: interesse em plano investidor, entrada reduzida e parcela baixa.
- Viabilidade: necessidade de validar se o fluxo cabe de forma confortável e se a unidade/tabela atual permite o cenário desejado.
- Estratégia de investimento: entender se a prioridade real é entrada baixa, parcela durante obra ou potencial de revenda/valorização.
- Visita pendente: cliente demonstrou interesse e recebeu convite para validação presencial, mas ainda não confirmou horário.

## Próximo passo
Se responder, interromper a régua de Resgate e voltar ao atendimento normal. Prioridade comercial: confirmar visita presencial na Fama, preferencialmente para segunda-feira, para mostrar 2 cenários simples do Union Vista com entrada e parcelas lado a lado. Se não conseguir visita, reduzir fricção perguntando se prefere olhar primeiro entrada, parcela durante obra ou potencial de revenda.

## Observações operacionais
- CRM/FamaChat confirmado como fonte operacional: cliente existe, `broker_id=35`, status `Em Atendimento`, sem visita/agendamento ativo no momento do envio.
- Documento mantido no caminho oficial de atendimento do Reno em `_agents/reno/atendimentos/10972-eliseu.md`.
- Não houve alteração de status durante o Resgate step 5; cliente permanece em `Em Atendimento`.
- WhatsApp enviado para JID cadastrado no CRM; telefone completo não exposto no vault.
- Nota CRM do step 4 criada automaticamente pela ferramenta de persistência do Resgate: ID 16304.
- Nota CRM do step 5 criada automaticamente pela ferramenta de persistência do Resgate: ID 16613.
