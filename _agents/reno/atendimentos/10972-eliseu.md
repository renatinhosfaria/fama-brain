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
updated: '2026-04-30'
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - resgate
  - union-vista
  - condicao-valor
---
# Atendimento — Eliseu

## Resumo atual
Cliente em atendimento pelo Reno, interessado no Union Vista. Já respondeu e conversou sobre preço, torres, entrega e possibilidade de plano investidor. Ficou silencioso após condução sobre valorização/revenda e convite para simular cenários presencialmente na Fama.

Em 2026-04-30 foram enviados Resgates steps 1, 2 e 3 com bucket `condicao_valor`. O step 3 mudou o ângulo para uma oferta de filtro objetivo do Union Vista, priorizando cenários com entrada menos pesada e potencial de revenda, em vez de repetir a pergunta anterior sobre qual ponto pesa mais.

## Dados operacionais
- Cliente ID: 10972
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: SLA Cascata
- Telefone/WhatsApp: cadastrado no CRM; envios via WhatsApp confirmados sem expor número completo aqui
- Última interação relevante: 2026-04-30 17:12 BRT — Resgate step 3 enviado

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
Cliente entrou em conversa ativa, mas parou após orientação sobre plano investidor e convite para análise mais segura. Permaneceu sem resposta após os primeiros steps de Resgate.

### Decisão
Ainda sem decisor adicional identificado. Próxima conversa deve entender se ele decide sozinho e se a estratégia é revenda/valorização ou renda futura.

### Viabilidade
Trava principal ligada a condição/fluxo: entrada, parcela baixa e validação de plano investidor por unidade/tabela atual. Step 3 buscou reduzir fricção oferecendo filtrar apenas cenários do Union Vista que não pesem tanto na entrada e façam sentido para revenda. Não prometer condição; usar atendimento presencial/consulta de tabela para simular cenários com segurança.

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
Próximo Resgate previsto: 2026-05-01 17:12 BRT, se permanecer sem resposta e ainda elegível.

## Objeções e travas
- Condição/valor: interesse em plano investidor, entrada reduzida e parcela baixa.
- Viabilidade: necessidade de validar se o fluxo cabe de forma confortável e se a unidade/tabela atual permite o cenário desejado.
- Estratégia de investimento: entender se a prioridade real é entrada baixa, parcela durante obra ou potencial de revenda/valorização.

## Próximo passo
Se responder, interromper a régua de Resgate e voltar ao atendimento normal. Conduzir para análise objetiva do plano investidor; se ele autorizar o filtro, separar cenários do Union Vista com menor peso de entrada e bom potencial de revenda, e então propor visita presencial na Fama para validar tabela/unidade e simular o fluxo com segurança.

## Observações operacionais
- CRM/FamaChat confirmado como fonte operacional: cliente existe, `broker_id=35`, status `Em Atendimento`, sem visita/agendamento ativo no momento do envio.
- Documento mantido no caminho oficial de atendimento do Reno em `_agents/reno/atendimentos/10972-eliseu.md`.
- Não houve alteração de status durante o Resgate step 3; cliente permanece em `Em Atendimento`.
- WhatsApp enviado para JID cadastrado no CRM; telefone completo não exposto no vault.
- Escrita pode exigir `vault-steward` por ownership do diretório; frontmatter mantém owner `reno`.
