---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Biiahsiilva
client_id: 11001
flow: repescagem
status: Não Respondeu
broker_id: 35
tags:
  - reno
  - repescagem
  - nao-respondeu
  - union-vista
---
# Cliente — Biiahsiilva

## Identificação
- Cliente: Biiahsiilva
- client_id: 11001
- Broker: Reno (`broker_id=35`)
- Status operacional: Não Respondeu
- Origem: Facebook Ads
- Empreendimento de interesse: Union Vista — Grand Ville, Uberlândia

## Contexto comercial curado
Lead sem resposta real após primeiro contato. Primeiro contato anterior mencionou interesse no Union Vista, no Grand Ville, perguntando se a região combinava com a busca da cliente.

Ângulo principal para repescagem: **imóvel específico**.

Argumento usado: criar novo motivo para resposta mostrando que vale avaliar se localização, prazo de entrega e forma de pagamento encaixam no momento da cliente, sem pressionar visita e sem repetir a abertura inicial.

## Repescagem — histórico

### Step 1 — enviado em 2026-04-29T12:13:11-03:00
Fluxo: repescagem

Mensagem enviada:

> Oi, Biiahsiilva! Tudo bem? 🏡
>
> Sobre o Union Vista, no Grand Ville, às vezes vale olhar além das fotos: entender se a localização, o prazo de entrega e a forma de pagamento combinam com o seu momento evita perder tempo com opção que parece boa, mas não encaixa.
>
> Posso te ajudar a fazer essa primeira leitura de um jeito **simples e sem pressão**.
>
> Você quer que eu veja se o Union Vista faz sentido para o que você está buscando hoje?

Próximo `next_run_at`: 2026-04-30T08:00:00-03:00

Próximo passo: se continuar sem resposta e permanecer elegível em `status = Não Respondeu`, seguir para Step 2 da repescagem a partir do próximo horário. Se houver resposta real, interromper repescagem e tratar por fluxo normal de atendimento.
