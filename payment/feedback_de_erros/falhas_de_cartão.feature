#language: pt
#encoding: utf-8

Funcionalidade: Meus cartões

  Esquema do Cenário: Acesso a tela de meus cartões

    Dado que efetuo uma reserva com o serviço de "<serviço>" com um cartão "<tipo_de_erro>"
    Quando o anfitrião aceita essa reserva
    Então recebo uma push notification informando que houve um erro com o cartão
    E ao acessar a doghero, um carrossel é apresentado na home contendo todas as reservas que tiveram falhas com um CTA para refazer o pagamento
    E um modal é apresentado com informações sobre o erro

  Exemplos:
    | serviço    | tipo_de_erro    |
    | hospedagem | sem limite      |
    | creche     | com cvv inválido|
    | pet sitter | expirado        |
    | dogwalking | com cvv inválido|

  Esquema do Cenário: Refazer pagamento após erro
    Dado que tive um erro no meu pagamento com cartão com o serviço de "<serviço>"
    Quando eu acesso novamente o para refazer o pagamento através da tela "<tela>"
    Então uma mensagem de erro de pagamento é informada logo abaixo da sessão de cartão de crédito
    E ao acessar os meus cartões um erro também é vinculado ao cartão relacionado a minha reserva

  Exemplos:
    | tela                 | serviço    |
    | home - CTA carrossel | creche     |
    | home - CTA carrossel | hospedagem |
    | home - CTA carrossel | pet sitter |
    | home - CTA carrossel | dog walking|
    | orders               | creche     |
    | orders               | hospedagem |
    | orders               | pet sitter |
    | orders               | dog walking|

  Esquema do Cenário: Verificar meus cartões após erro de pagamento
    Dado que tive um erro no meu pagamento com cartão com o serviço de "<serviço>"
    Quando eu acesso a tela de meus cartões
    Então um erro é apresentado vinculado ao cartão relacionado a minha reserva

  Exemplos:
    | serviço    |
    | creche     |
    | hospedagem |
    | pet sitter |
    | dog walking|