#language: pt
#encoding: utf-8

Funcionalidade: Cadastro de cartão

  Esquema do Cenário: Validar acesso a tela de 'Meus cartões' - Nenhum cartão adicionado

    Dado que acesso a tela de 'Meus cartões' através "<meio_de_acesso>"
    E ela é apresentada com o nome "<titulo>"
    Quando clico em adicionar um novo cartão
    Então a tela de adicionar cartões é apresentada com placeholders corretos
    E o documento apresentado é referente ao meu país

    Exemplos:
      | meio_de_acesso | titulo                                      |
      | checkout       | selecione um cartão (de acordo com o idioma)|
      | checkout       | selecione um cartão (de acordo com o idioma)|
      | menu           | meus cartões (de acordo com o idioma)       |
      | menu           | meus cartões (de acordo com o idioma)       |

  Esquema do Cenário: Adicionar novo cartão corretamente
    Dado que estou na tela de adicionar cartão
    Quando preencho todos os dados corretamente para a bandeira "<bandeira>"
    E preencho meu documento "<tipo_documento>"
    E clico em salvar
    Então uma tela de sucesso é apresentada
    E ao clicar no unico CTA disponível, o usuario é direcionado para a tela de cartões com o cartão sendo apresentado

    Exemplos:
      | bandeira | tipo_documento |
      | visa     | cpf            |
      | master   | cpf            |
      | amex     | cpf            |
      | elo      | cpf            |
    #mx
      | visa     | rfc            |
      | master   | rfc            |
    #ar
      | visa     | dni            |
      | master   | dni            |
      | visa     | cuit           |
      | master   | cuit           |


  Esquema do Cenário: Adicionar novo cartão - incorretamente
    Dado que estou na tela de adicionar cartão
    Quando preencho "<dado_invalido>"
    Então o campo do dado inválido deve apresentar um alerta em vermelho com sua descrição

  Exemplos:
    | dado_invalido      |
    | numero             |
    | nome incompleto    |
    | vencimento         |
    | cvv                |
    | documento do país  |

