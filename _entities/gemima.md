---
schema_version: 1
type: entity
status: active
created: '2026-06-13'
updated: '2026-06-13'
source: agent-generated
author_agent: brain
owner: renato
tags:
  - reno
  - whatsapp-inbound
  - qualificacao
  - moradia
  - union-vista
  - grand-ville
  - crm-verified
  - curado-brain
name: Gemima
entity_type: lead
aliases:
  - gemima
  - cliente-11699
  - 'client:11699'
external_ids:
  client_id: '11699'
  broker_id: '35'
  empreendimento_id: '22'
  empreendimento_slug: union-vista
  fonte: Facebook Ads
  regiao: Grand Ville
mentions_entity:
  - reno-hub
  - union-vista
related:
  - '[[reno-hub]]'
  - '[[2026-06-13-primeiro-contato-enviado-cliente-11699-gemima]]'
  - '[[2026-06-13-resposta-inbound-ao-primeiro-contato-cliente-11699]]'
  - '[[2026-06-13-gemima-respondeu-e-pediu-explicacao-sobre-funcionamento]]'
  - >-
    [[2026-06-13-gemima-cliente-respondeu-tem-interesse-na-regiao-e-quer-entender-melhor-como-funciona-crm-validado-com-broker-id-35-status-alterado-para-em-atendimento-repescagem-interrompida-por-resposta]]
  - >-
    [[2026-06-13-gemima-cliente-respondeu-que-o-objetivo-da-compra-e-morar-diagnostico-em-andamento-proxima-pergunta-deve-explorar-necessidade-pratica-do-imovel-sem-parecer-interrogatorio]]
confidence: 0.96
status_comercial: Em Atendimento
origem: Facebook Ads / WhatsApp inbound
interesse_atual: >-
  Union Vista / Grand Ville para moradia. Cliente demonstrou interesse na
  região, pediu explicação sobre como funciona o atendimento e confirmou que o
  objetivo de compra é morar.
objecoes_ativas:
  - >-
    Ainda falta entender necessidade prática do imóvel para moradia:
    configuração desejada, quartos/espaço, perfil familiar e momento de compra.
  - >-
    Ainda falta qualificação financeira/viabilidade antes de indicar caminho,
    simulação ou visita.
  - >-
    Repescagem automática foi encerrada por resposta; próximos contatos devem
    seguir diagnóstico consultivo, sem novo follow-up automático.
proximo_passo: >-
  Continuar diagnóstico leve no WhatsApp: perguntar qual configuração atende
  melhor para moradia, começando por quartos/espaço ou perfil familiar; em
  seguida levantar momento de compra e condições de viabilidade antes de
  conduzir para visita ou simulação.
---
[[reno-hub]]

# Gemima

## Resumo curado
Lead originado em Facebook Ads para o **Union Vista / Grand Ville**. O CRM/FamaChat confirma status **Em Atendimento**, broker Reno e repescagem encerrada por resposta real no WhatsApp.

A conversa saiu de primeiro contato/repescagem para qualificação inicial: Gemima demonstrou interesse na região, pediu para entender melhor como funciona o atendimento e depois confirmou que a compra é para **morar**. A memória útil aqui é o arco de atendimento, não uma tarefa comercial nova.

## Classificação
- **Tipo:** entidade / lead comercial.
- **Tema:** Reno, WhatsApp inbound, qualificação inicial, moradia, Union Vista / Grand Ville.
- **Projeto/área:** [[reno-hub]].
- **Prioridade operacional:** média/alta para continuidade consultiva, porque houve resposta inbound e o diagnóstico ainda está aberto.
- **Estado:** ativo, em atendimento.

## Interesse atual
Union Vista / Grand Ville para moradia. Cliente demonstrou interesse na região, pediu explicação sobre como funciona o atendimento e confirmou que o objetivo de compra é morar.

## Objeções e lacunas ativas
- Ainda falta entender necessidade prática do imóvel para moradia: configuração desejada, quartos/espaço, perfil familiar e momento de compra.
- Ainda falta qualificação financeira/viabilidade antes de indicar caminho, simulação ou visita.
- Repescagem automática foi encerrada por resposta; próximos contatos devem seguir diagnóstico consultivo, sem novo follow-up automático.

## Próximo passo
Continuar diagnóstico leve no WhatsApp: perguntar qual configuração atende melhor para moradia, começando por quartos/espaço ou perfil familiar; em seguida levantar momento de compra e condições de viabilidade antes de conduzir para visita ou simulação.

## Verificação no CRM/FamaChat
- Cliente CRM verificado: `client_id:11699`.
- Status CRM verificado: **Em Atendimento**.
- Repescagem verificada como encerrada por resposta do cliente.
- Sem visitas, vendas ou agendamentos registrados no CRM/FamaChat no momento desta curadoria.

## Histórico de interações relacionadas
- [[2026-06-13-primeiro-contato-enviado-cliente-11699-gemima]] — primeiro contato do Reno para Union Vista / Grand Ville.
- [[2026-06-13-resposta-inbound-ao-primeiro-contato-cliente-11699]] — primeira resposta real no WhatsApp e encerramento da repescagem.
- [[2026-06-13-gemima-respondeu-e-pediu-explicacao-sobre-funcionamento]] — cliente demonstrou interesse na região e pediu explicação sobre o funcionamento.
- [[2026-06-13-gemima-cliente-respondeu-tem-interesse-na-regiao-e-quer-entender-melhor-como-funciona-crm-validado-com-broker-id-35-status-alterado-para-em-atendimento-repescagem-interrompida-por-resposta]] — journal operacional mais descritivo do mesmo marco.
- [[2026-06-13-gemima-cliente-respondeu-que-o-objetivo-da-compra-e-morar-diagnostico-em-andamento-proxima-pergunta-deve-explorar-necessidade-pratica-do-imovel-sem-parecer-interrogatorio]] — confirmação de finalidade de moradia e orientação do próximo diagnóstico.

## Interpretação assumida pela curadoria
Tratei os journals recentes como um único arco: primeiro contato → resposta inbound pedindo explicação → confirmação de objetivo de moradia → diagnóstico ainda aberto. Não consolidei nem removi journals operacionais do Reno; apenas atualizei a entidade canônica para tornar a continuidade recuperável.
