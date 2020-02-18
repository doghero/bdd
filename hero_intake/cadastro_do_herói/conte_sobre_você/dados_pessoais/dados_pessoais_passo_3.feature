#language: pt
#encoding: utf-8

Funcionalidade: Dados pessoais - Passo 3

  Contexto:
    Dado que preencho corretamente o "passo 2" e prossigo através do CTA 'Salvar e continuar'

  Esquema do Cenario: Validar mascara de telefone

    E estou na etapa de 'Dados Pessoais', "passo 3", do cadastro de heróis do hero intake
    Quando preencho seleciono o país "<tipo_pais>" e preencho meu celular com "<tipo_de_dados>"
    Então o campos de telefone será "<resultado_validação>"

    Exemplos:
    | tipo_pais | tipo_de_dados      | resultado_validação             |
    | Brasil    | telefone correto   | Botão de verificação habilitado |
    | Brasil    | telefone incorreto | Alerta de erro                  |
    | Brasil    | sem ddd            | Alerta de erro                  |
    | Argentina | telefone correto   | Botão de verificação habilitado |
    | Argentina | telefone incorreto | Alerta de erro                  |
    | Argentina | sem ddd            | Alerta de erro                  |
    | México    | telefone correto   | Botão de verificação habilitado |
    | México    | telefone incorreto | Alerta de erro                  |
    | México    | sem ddd            | Alerta de erro                  |

  Esquema do Cenario: Verificar número

    E estou na etapa de 'Dados Pessoais', "passo 3", do cadastro de heróis do hero intake
    E seleciono o país "<tipo_pais>" e preencho meu celular com "telefone correto"
    Quando clico em verificar o número
    E um campo com o código de verificação é apresentado
    E ao informar o código "<tipo_de_código>" e clicar em verificar o número
    Então a mensagem de "<resultado>" é apresentada
    E o cta de verificação "<cta_verificação>"
    E o cta para continuar "<cta_continuar>

    Exemplos:

    | tipo_pais | tipo_de_código | resultado           | cta_verificação | cta_continuar     |
    | Brasil    | correto        | sucesso             | desaparece      | é habilitado      |
    | Brasil    | incorreto      | erro na verificação | é apresentado   | fica desabilitado |
    | Argentina | correto        | sucesso             | desaparece      | é habilitado      |
    | Argentina | incorreto      | erro na verificação | é apresentado   | fica desabilitado |
    | Mexico    | correto        | sucesso             | desaparece      | é habilitado      |
    | Mexico    | incorreto      | erro na verificação | é apresentado   | fica desabilitado |

  Esquema do Cenario: Verificar reenvio de SMS

    E estou na etapa de 'Dados Pessoais', "passo 3", do cadastro de heróis do hero intake
    E seleciono o país "<tipo_pais>" e preencho meu celular com "telefone correto"
    E clico em verificar o número
    E recebo um código de verificação via SMS
    Quando eu clico em reenviar o código
    Então recebo um novo código de verificação via SMS
    E ao inserir o primeiro código ele não deverá ser validado
    Mas ao inserir o último código recebido ele será validado com sucesso

    Exemplos:
    | tipo_pais |
    | Brasil    |
    | Argentina |
    | México    |

  Cenário: Botão de ajuda
    E estou na etapa de 'Dados Pessoais', "passo 3", do cadastro de heróis do hero intake
    Quando clico no botão de ajuda
    Então informações são apresentadas detalhando o motivo da validação do número de contato
    E clico no botão de fechar
    E a tela de ajuda é fechada

  Cenario: Quantidade de tentativas - A DEFINIR

  Cenario: Tempo de expiração de SMS - A DEFINIR
