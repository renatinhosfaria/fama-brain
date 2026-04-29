---
type: journal
owner: reno
created: '2026-04-28'
updated: '2026-04-28'
tags:
  - reno
  - plano-estrategico
  - whatsapp
  - resposta
  - agendamento
---
# Plano estratégico — reversão resposta/agendamento Reno

## Cenário atual verificado no CRM

- Base Reno total: 99 clientes.
- Status atual:
  - Não Respondeu: 79.
  - Em Atendimento: 13.
  - Arquivado: 7.
- Agendamentos registrados para broker_id=35: 1.
- Taxa atual sobre base total:
  - Resposta/atendimento: 13/99 = 13,1%.
  - Agendamento: 1/99 = 1,0%.
- Meta sobre base total:
  - 70% respondendo: 70 clientes.
  - 10% agendando: 10 clientes.
- Gap estimado:
  - +57 respostas.
  - +9 agendamentos.

## Direção estratégica

O problema não deve ser tratado como “mais disparo”. Deve ser tratado como uma operação de recuperação de conversa com quatro frentes:

1. Garantir entrega real no WhatsApp.
2. Aumentar taxa de resposta com mensagens mais humanas, curtas e contextualizadas.
3. Gerar desejo pelo empreendimento antes de qualificar financeiramente.
4. Transformar qualquer sinal positivo em convite presencial rápido.

## Meta operacional

Em até 14 dias:
- elevar clientes em atendimento de 13 para pelo menos 70 na base total;
- elevar agendamentos de 1 para pelo menos 10;
- manter rastreabilidade no CRM por cliente: enviado, respondeu, objeção, próximo passo, agendamento ou falha.

## Plano em 4 fases

### Fase 1 — Higienização e recuperação de entrega

- Reprocessar os 79 clientes em Não Respondeu com nova política de envio.
- Para cada cliente, tentar WhatsApp com o nono dígito e sem o nono dígito quando aplicável.
- Não bloquear por JID ausente, haswhatsapp=false, duplicidade, histórico ou inferência interna antes da tentativa.
- Registrar no CRM: sucesso, falha, número/formato que funcionou quando disponível e status preservado/alterado.

### Fase 2 — Régua de resposta em 3 toques

Para quem recebeu e não respondeu:

1. Toque 1 — abertura contextual curta.
2. Toque 2 — 24h depois, com benefício/região/empreendimento.
3. Toque 3 — 72h depois, pergunta de baixa fricção para recuperar resposta.

Exemplo de terceiro toque:
`Oi, {nome}. Só pra eu não te mandar coisa fora do que você procura: você ainda está olhando imóvel nessa região ou já mudou o foco?`

### Fase 3 — Conversão de resposta em visita

Quando o cliente responder:
- não iniciar por renda/FGTS/score;
- fazer no máximo 2 perguntas leves;
- apresentar empreendimento com 3 a 5 diferenciais e mídia;
- perguntar `O que você achou dele?`;
- ao menor sinal positivo, chamar para visita presencial na Fama.

CTA padrão:
`Como você gostou dele, o melhor próximo passo é você passar aqui na Fama. Presencialmente eu consigo te mostrar as opções com calma e olhar o financiamento com mais segurança. Você consegue passar hoje no fim do dia?`

### Fase 4 — Rotina diária de gestão

Todo dia, acompanhar:
- clientes enviados no dia;
- respostas recebidas;
- clientes que ficaram sem resposta após 24h/72h;
- convites feitos para visita;
- visitas agendadas;
- objeções mais comuns;
- falhas técnicas de envio.

## Prioridades comerciais

1. Resgatar primeiro Facebook Ads e SLA Cascata em Não Respondeu, pois concentram maior volume.
2. Dar tratamento mais forte para quem respondeu qualquer coisa, mesmo resposta curta.
3. Transformar pergunta de valor/financiamento em ponte para presencial, não em simulação longa por WhatsApp.
4. Não deixar conversa sem próximo passo: visita, envio de prévia, retorno combinado ou remarcação.

## Indicadores de controle

- Taxa de resposta = Em Atendimento / base trabalhada.
- Taxa de agendamento = Agendamentos / base trabalhada.
- Conversão resposta -> agendamento.
- Tempo médio até primeiro envio.
- Tempo médio até primeiro follow-up.
- Motivos de não agendamento.

## Próxima ação recomendada

Executar um plano de recuperação dos 79 clientes em Não Respondeu em cadência controlada, com régua de 3 toques e painel diário de evolução até atingir pelo menos 70 respostas e 10 agendamentos.
