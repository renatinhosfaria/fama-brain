---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Rosii Gonçalves
client_id: 10992
status: Não Respondeu
flow: repescagem
---
# Rosii Gonçalves

## Perfil operacional
- Cliente: Rosii Gonçalves
- client_id: 10992
- Broker: Reno (`broker_id=35`)
- Status atual no CRM: Não Respondeu
- Fluxo ativo: repescagem
- Origem operacional: SLA Cascata

## Contexto comercial curado
- Interesse registrado no CRM: Union Vereda, região do Jaraguá, em Uberlândia.
- Empreendimento vinculado: Union Vereda (`id_empreendimento=161`), apartamento na região do Jaraguá, com entrega prevista para Dez/2028.
- Primeiro contato anterior do Reno apresentou o atendimento e perguntou se a região combinava com a busca; não houve resposta real registrada.

## Diagnóstico de repescagem
- Ângulo comercial usado: imóvel específico.
- Racional: criar um novo motivo para resposta sem repetir a abertura inicial, posicionando a conversa como uma leitura simples de encaixe do Union Vereda no momento de compra da cliente.

## Interações de repescagem

### 2026-04-29 11:31 - Repescagem step 1
**Mensagem enviada:**

> Oi, Rosii! Tudo bem? 🏡
>
> Sobre o Union Vereda, no Jaraguá, às vezes o melhor próximo passo não é só olhar fotos ou valores, mas entender se ele combina com seu momento de compra — região, prazo de entrega e forma de pagamento.
>
> Posso te ajudar a fazer essa leitura de um jeito **simples e sem pressão**.
>
> Você quer que eu veja contigo se esse imóvel encaixa no que você procura?

**Registro operacional:** envio WhatsApp confirmado e registrado via tool específica do Reno.

**Próximo next_run_at:** 2026-04-30T12:00:00-03:00.

**Próximo passo:** se não houver resposta real da cliente, seguir para repescagem step 2 a partir do próximo horário elegível. Se houver resposta real, parar repescagem e conduzir atendimento em fluxo próprio, mantendo o status fora de `Não Respondeu` quando aplicável.
