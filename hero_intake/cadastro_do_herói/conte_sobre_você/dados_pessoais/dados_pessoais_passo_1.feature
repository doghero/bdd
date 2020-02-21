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

  Cenário: Validar preenchimento de endereço - Localização atual - Seus dados
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando escolho a opção de usar a localização atual
    E os campos de endereço são populados de acordo com a localização atual
    E minha localização é apresentada no mapa
    E se eu altero o pin do mapa
    Então o campo de endereço também é alterado

  Esquema do Cenario: Validar autocomplete do endereço - Localização manual - Seus dados -
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando clico para preencher meu endereço
    E um modal é aberto apresentando sugestões conforme digito meu endereço
    E ao digitar meu endereço
    Então a sugestão trará apenas endereços baseados no meu país "<país>"

    Exemplos:
    | país      |
    | brasil    |
    | méxico    |
    | argentina |

  Cenario: Preencher endereço sem número
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando escolho um endereço sem informar o número
    E o campo de endereço é apresentado com um alerta, solicitando o número
    E se eu habilito a opção de endereço sem número
    Então nenhum erro é apresentado, sendo possível concluir essa etapa

  Cenario: Preencher endereço com número
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    Quando escolho um endereço com número
    Então o campo de endereço é apresentado com sucesso
    E nenhum erro é apresentado, sendo possível concluir essa etapa

  Cenario: Mover o pin no mapa
    E estou na etapa de 'Dados Pessoais', "passo 1", do cadastro de heróis do hero intake
    E escolho um endereço corretamente
    E minha localização é apresentada no mapa
    Quando eu movo o pin para um novo endereço
    Então minha localização é atualizada
