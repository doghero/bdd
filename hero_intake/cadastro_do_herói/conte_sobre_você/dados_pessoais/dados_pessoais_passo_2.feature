#language: pt
#encoding: utf-8

Funcionalidade: Dados pessoais - Passo 2

  Esquema do Cenario: Validar documentos

    Dado que preencho corretamente o "passo 1" e prossigo através do CTA 'Salvar e continuar' para o país "<país>
    E estou na etapa de 'Dados Pessoais', "passo 2", do cadastro de heróis do hero intake
    Quando preencho meu "<tipo_de_documento>" com dados "<tipo_de_dados>"
    E clico em salvar e continuar
    Então a validação será "<tipo_de_validação>"

  Exemplos:
    | país      | tipo_de_documento | tipo_de_dados | tipo_de_validação          |
    | Brasil    | rg                | válidos       | OK                         |
    | Brasil    | rg                | inválidos     | Erro na máscara            |
    | Brasil    | cpf               | válidos       | OK                         |
    | Brasil    | cpf               | inválidos     | Erro na máscara            |
    | Brasil    | cpf               | já existentes | Alerta de cpf já utilizado |
    | Argentina | cuit              | válidos       | OK                         |
    | Argentina | cuit              | inválidos     | Erro na máscara            |
    | Argentina | dni               | válidos       | OK                         |
    | Argentina | dni               | inválidos     | Erro na máscara            |
    | Argentina | dni               | já existentes | Alerta de dni já utilizado |
    | México    | rfc               | válidos       | OK                         |
    | México    | rfc               | inválidos     | Erro na máscara            |
    | México    | curp              | válidos       | OK                         |
    | México    | curp              | inválidos     | Erro na máscara            |
    | México    | curp              | já existentes | Alerta de curp já utilizado |
