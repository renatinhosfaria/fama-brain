---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Santiago Derson
client_id: 10997
status: Não Respondeu
broker_id: 35
tags:
  - reno
  - repescagem
  - whatsapp
  - union-vista
---
# Santiago Derson

## Perfil operacional
- Cliente: Santiago Derson
- Client ID: 10997
- Broker: Reno (`broker_id=35`)
- Status atual no CRM: Não Respondeu
- Origem: Facebook Ads
- Empreendimento associado: Union Vista, Grand Ville, Uberlândia

## Contexto comercial curado
Cliente demonstrou interesse no Union Vista, no Grand Ville. O primeiro contato do Reno foi uma abertura curta perguntando se a região combinava com a busca do cliente. Até esta execução, não havia resposta real registrada do cliente.

Ângulo principal usado na repescagem: **imóvel específico / organização da busca**, com argumento de clarear se região, prazo de entrega e faixa de investimento fazem sentido antes de olhar opções soltas.

## Histórico de repescagem

### 2026-04-29 11:49 - Repescagem step 1 enviada
Fluxo: repescagem
Step enviado: 1
Intenção do step: criar um novo motivo para resposta sem repetir o primeiro contato.
Canal: WhatsApp

Mensagem enviada:

```text
Oi, Santiago! Tudo bem? 🏡

Sobre o Union Vista no Grand Ville, às vezes o melhor primeiro passo não é sair olhando opção solta, e sim entender se a região, o prazo de entrega e a faixa de investimento fazem sentido para o que você busca.

Posso te ajudar a organizar isso de um jeito *simples e sem pressão*.

Você prefere que eu te ajude primeiro pela região do Grand Ville ou pela viabilidade da compra?
```

Registro CRM: envio registrado via tool específica `mark_reno_followup_sent`.
Próximo `next_run_at`: 2026-04-30T08:00:00-03:00.
Próximo passo: se não houver resposta real do cliente, aguardar elegibilidade da fila para step 2. Se houver resposta real, parar repescagem e seguir atendimento normal fora deste fluxo.
