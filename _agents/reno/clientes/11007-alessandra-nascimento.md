---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Alessandra Nascimento
client_id: 11007
status: Não Respondeu
broker_id: 35
tags:
  - reno
  - repescagem
  - nao-respondeu
  - union-vista
  - grand-ville
---
# Alessandra Nascimento

## Resumo operacional
- Cliente: Alessandra Nascimento
- Client ID: 11007
- Broker: Reno (`broker_id=35`)
- Status operacional no FamaChat: `Não Respondeu`
- Fluxo ativo: `repescagem`
- Origem operacional: SLA Cascata
- Empreendimento de contexto: Union Vista
- Região/bairro de contexto: Grand Ville

## Contexto comercial curado
Lead silencioso após primeiro contato/reenvio inicial. O contexto disponível no FamaChat indica interesse no **Union Vista**, na região do **Grand Ville**. Não há resposta real registrada do cliente e não há nota curada anterior no Vault.

Ângulo usado: **imóvel específico** com organização da busca e validação leve de encaixe, sem pressionar visita e sem repetir a abertura inicial.

## Histórico de repescagem

### 2026-04-29 12:42 - Step 1 enviado
- Fluxo: `repescagem`
- Step: 1
- Intenção: novo motivo para responder
- Ângulo comercial: imóvel específico / Union Vista / Grand Ville
- Enviado via WhatsApp pelo JID salvo no CRM.
- Próximo `next_run_at`: `2026-04-30T08:00:00-03:00`

Mensagem enviada:

> Oi, Alessandra! Tudo bem? 🏡
>
> Sobre o Union Vista, no Grand Ville, às vezes vale organizar primeiro se essa região e esse perfil de imóvel realmente encaixam no seu momento, antes de ficar olhando opções soltas.
>
> Posso te ajudar a fazer essa leitura de um jeito **simples e sem pressão**.
>
> Você quer começar entendendo se o Union Vista faz sentido para o que você procura?

## Próximo passo
Se não houver resposta real da cliente até `2026-04-30T08:00:00-03:00`, a próxima execução elegível pode avançar para o step 2 da repescagem. Se houver resposta real, a repescagem deve parar e o atendimento deve seguir fora desta skill, com status migrando para `Em Atendimento` quando aplicável.
