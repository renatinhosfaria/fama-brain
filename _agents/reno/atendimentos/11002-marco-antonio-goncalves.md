---
broker_id: 35
client_id: 11002
created: '2026-04-30'
entity_name: Marco Antonio Goncalves
entity_type: atendimento
owner: reno
source: Facebook Ads
status_crm: Em Atendimento
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - repescagem
  - place-arbi
  - em-atendimento
  - momento-futuro
  - viabilidade-idade
type: entity-profile
updated: '2026-05-04'
---
# Atendimento — Marco Antonio Goncalves

## Resumo atual
Cliente está em `Em Atendimento` no FamaChat. Em 2026-05-04, enviou inbound WhatsApp dizendo: "Penso em trocar mais pra frente". Na sequência, foi registrada nova resposta: "Mas acho que pela minha idade fica inviável."

Interpretação comercial: Marco pensa em troca de imóvel em momento futuro e já apresenta uma trava de viabilidade percebida relacionada à idade/financiamento. A próxima resposta comercial deve validar a preocupação sem prometer crédito, explicar que isso precisa ser avaliado com segurança e manter a conversa leve para entender prazo, objetivo da troca e possibilidade real.

A repescagem já havia sido interrompida por resposta anterior com `stopped_reason=client_replied`, `enabled=false` e `next_run_at=null`; nesta atualização, o status foi preservado e não havia resgate ativo a interromper.

## Dados operacionais
- Cliente ID: 11002
- Broker ID: 35
- Status CRM: Em Atendimento
- Origem: Facebook Ads
- Telefone/WhatsApp: JID WhatsApp salvo no CRM; telefone mascarado final ****-9186
- Empreendimento vinculado: Place+Arbi, Shopping Park/Zona Sul
- Última interação relevante: 2026-05-04 - inbound WhatsApp com intenção de trocar mais para frente e objeção de viabilidade por idade; status preservado em Em Atendimento; notas CRM registradas

## Contexto comercial
Lead originado de anúncio relacionado ao empreendimento **Place+Arbi**, da HLTS Construtora, no bairro Shopping Park/Zona Sul, Uberlândia. O empreendimento está em lançamento, com entrega prevista para JUN/2027 e plantas de aproximadamente 48m² a 50m².

Antes do primeiro inbound, o cliente estava em silêncio após primeiro contato e repescagens. A última mensagem de repescagem perguntava se a ideia seria mais **morar** ou **investir** no contexto do Place+Arbi.

Nas respostas úteis registradas em 2026-05-04, Marco trouxe dois sinais importantes:
- timing mais distante: pensa em trocar mais para frente;
- trava de viabilidade: acredita que, pela idade, pode ficar inviável.

Isso sugere que o foco comercial imediato não deve ser pressão por visita ou fechamento. A condução mais segura é acolher a preocupação, mostrar que a Fama consegue orientar o caminho com responsabilidade e entender, sem interrogatório, qual seria a troca desejada e qual horizonte ele imagina.

## Diagnóstico
### Necessidade
Indício atual: cliente cogita trocar de imóvel mais adiante. Ainda falta entender se a troca seria para morar melhor, sair do aluguel, aumentar espaço, mudar região ou investir.

### Momento
Momento futuro, baixa urgência imediata. O atendimento deve ser consultivo e sem pressão, buscando entender prazo aproximado e critério principal da troca.

### Decisão
Sem informação confirmada sobre decisores.

### Viabilidade
Cliente percebe uma possível inviabilidade por idade, provavelmente relacionada a financiamento/prazo. Não há dados confirmados de renda, entrada, FGTS, idade exata ou composição familiar. A resposta comercial deve evitar promessa de aprovação e usar linguagem como `avaliar com segurança`, `ver o que faz sentido` e `não cravar por WhatsApp sem análise`.

## Histórico curado de interações
### 2026-04-24 — Primeiro contato Reno
Primeiro WhatsApp enviado pelo Reno para o JID salvo no CRM. Contexto usado: Place+Arbi, Shopping Park.

### 2026-04-29 — Repescagem step 1
- Intenção: novo motivo para responder.
- Ângulo usado: imóvel específico + clarear encaixe do empreendimento no momento do cliente.
- Canal: WhatsApp.
- Registro CRM: feito via ferramenta específica do Reno.
- Próximo follow-up posteriormente migrado/corrigido para a matriz oficial.

Mensagem enviada:

> Oi, Marco! Tudo bem? 🏡
>
> Sobre o Place+Arbi no Shopping Park, às vezes vale organizar primeiro se ele encaixa no seu momento — planta, região, prazo de entrega e viabilidade — antes de ficar olhando opções soltas.
>
> Posso te ajudar a clarear esse ponto de forma **simples e sem pressão**.
>
> Você quer que eu te ajude a entender se esse empreendimento faz sentido para você?

### 2026-04-30 — Repescagem step 2
- Intenção: evitar caminho errado.
- Comparação com step anterior: mudou o ângulo de "encaixe do empreendimento" para "não olhar só preço/fotos e entender forma de compra"; mudou a pergunta para financiamento versus à vista/entrada maior; mudou o benefício para evitar envio fora do cenário do cliente.
- Ângulo usado: imóvel específico + financiamento/viabilidade inicial.
- Canal: WhatsApp.
- Destino: JID WhatsApp salvo no CRM.
- Registro CRM/meta_data: atualizado via `mark_reno_followup_sent`.
- Próximo `next_run_at`: 2026-05-01T14:20:00-03:00.

Mensagem enviada:

> Marco, tudo bem? 🔑
>
> Uma coisa importante sobre lançamento como o Place+Arbi é não olhar só preço e fotos.
>
> Como as plantas ficam em torno de 48–50m² e a entrega é para jun/2027, o caminho muda bastante dependendo se a compra seria para morar, investir ou planejar com financiamento.
>
> Pra eu não te mandar algo fora do seu cenário, você pretende comprar mais por **financiamento** ou seria à vista/entrada maior?

### 2026-05-01 — Repescagem step 3
- Intenção: diagnóstico leve.
- Comparação com step anterior: mudou o ângulo de forma de compra/financiamento para finalidade de uso; mudou o tipo de pergunta para escolha simples entre morar ou investir; mudou a abertura para uma pergunta direta; mudou o benefício de "não mandar algo fora do cenário" para evitar opções no escuro.
- Ângulo usado: imóvel específico + finalidade da compra.
- Canal: WhatsApp.
- Destino: JID WhatsApp salvo no CRM.
- Registro CRM/meta_data: atualizado via `mark_reno_followup_sent`.
- Próximo `next_run_at`: 2026-05-02T19:10:00-03:00.

Mensagem enviada:

> Boa noite, Marco! 📍
>
> Vou te fazer uma pergunta bem direta pra não ficar te mandando opção no escuro.
>
> O Place+Arbi pode fazer sentido por caminhos diferentes: morar na região do Shopping Park/Zona Sul, comprar planejando 2027 ou até pensar como investimento.
>
> Hoje sua ideia seria mais **morar** ou **investir**?

### 2026-05-01 — Inbound WhatsApp e correção operacional
Rotina silenciosa identificou inbound pelo WhatsApp para o JID/telefone de Marco. Cliente validado no CRM como `broker_id=35`.

Ações realizadas no FamaChat:
- status alterado condicionalmente de `Não Respondeu` para `Em Atendimento`;
- repescagem interrompida com `step=3`, `enabled=false`, `next_run_at=null` e `stopped_reason=client_replied`;
- nota CRM registrada informando a resposta inbound e a limitação do payload recebido.

Observação: o conteúdo textual recebido nesta rotina não foi tratado como mensagem comercial do cliente porque veio contaminado com texto de skill/instrução operacional.

### 2026-05-04 — Inbound WhatsApp com timing futuro
Rotina silenciosa identificou inbound WhatsApp de Marco com o conteúdo: "Penso em trocar mais pra frente".

Ações realizadas no FamaChat:
- cliente validado como `broker_id=35`;
- status atual verificado como `Em Atendimento` e preservado, sem regressão;
- follow-ups verificados: repescagem já interrompida, `next_run_at=null`; resgate ausente;
- nota CRM registrada com a interpretação comercial de momento futuro para troca de imóvel.

Nota CRM relacionada: id 16657.

### 2026-05-04 — Inbound WhatsApp com objeção de idade/viabilidade
CRM registrou nova resposta inbound de Marco: "Mas acho que pela minha idade fica inviável."

Interpretação comercial: objeção/trava de viabilidade percebida por idade, provavelmente associada a financiamento. A condução deve validar a preocupação, evitar prometer crédito e propor avaliação segura quando fizer sentido.

Nota CRM relacionada: id 16658.

## Objeções e travas
- Timing futuro: cliente pensa em trocar mais para frente, então há baixa urgência imediata.
- Viabilidade por idade: cliente acredita que a idade pode tornar a compra/financiamento inviável.
- Trava comercial: ainda não está claro se a troca futura envolve venda de imóvel atual, mudança de região, aumento de espaço, financiamento, composição familiar ou investimento.

## Próximo passo
Na resposta comercial normal do WhatsApp, validar a preocupação de idade sem prometer aprovação. O melhor caminho é responder de forma curta e segura, explicando que idade pode influenciar, mas que a viabilidade depende de análise do cenário completo.

Depois, fazer uma pergunta leve para manter a conversa: entender se a troca seria para morar melhor ou apenas planejamento futuro. Não pressionar visita imediatamente; se Marco demonstrar abertura para avaliar, a visita presencial pode ser posicionada como forma segura de olhar possibilidades sem chute.

## Observações operacionais
- Documento oficial mantido em `_agents/reno/atendimentos/11002-marco-antonio-goncalves.md` conforme governança canônica.
- Conteúdo consolidado originalmente a partir do documento legado `_agents/reno/clientes/11002-marco-antonio-goncalves.md`; o legado não foi deletado nesta execução.
- O CRM/FamaChat permanece a fonte de verdade operacional para status, meta_data e notas.
- A duplicidade de registros com o mesmo telefone em outros brokers (`SLA Cascata`) não foi alterada; a atuação desta rotina foi limitada ao cliente Reno `client_id=11002`, `broker_id=35`.
