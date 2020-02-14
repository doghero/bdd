#language: pt
#encoding: utf-8

Funcionalidade: Dados pessoais - Passo 1

  Contexto:
    Dado que estou logado na doghero com um novo usuário

  Cenario: Validar campos pré-populados - Seus dados

    E acesso a tela de cadastro de heróis no hero intake
    Quando acesso a etapa de 'Dados Pessoais', "passo 1"
    Então os campos referentes a nome, sobrenome e email devem vir pré-populados de acordo com o informado no sign up
    E esses mesmos campos não poderão ser alterados

  Esquema do Cenário: Validar upload de fotos - Seus dados
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando seleciono a opção de upload de foto de perfil
    E escolho "<meio_de_upload>"
    Então a foto é apresentada com sucesso no meu perfil
    E posso alterar essa foto através do mesmo processo

    Exemplos:
      | meio_de_upload        |
      | uma foto da galeria   |
      | a opção de tirar foto |

  Cenário: Validar preenchimento de endereços - Localização atual - Seus dados
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando escolho a opção de usar a localização atual
    E os campos de endereço são populados de acordo com a localização atual
    E minha localização é apresentada no mapa
    E se eu altero o pin do mapa
    Então o campo de endereço também é alterado


  Cenario: Validar preenchimento de endereços - Localização manual - Seus dados
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando clico para preencher meu endereço
    E um modal é aberto apresentando sugestões conforme digito meu endereço
    E ao selecionar a sugestão escolhida o modal se fecha
    E os campos de endereço existentes na tela são populados de acordo com minha escolha
    Mas caso algum desses campos obrigatórios não seja preenchido automaticamente o mesmo será sinalizado para preenchimento do usuário
    E minha localização é apresentada no mapa
    E se eu altero o pin do mapa
    Então o campo de endereço também é alterado
