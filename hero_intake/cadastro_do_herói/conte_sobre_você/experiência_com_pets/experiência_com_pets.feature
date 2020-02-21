#language: pt
#encoding: utf-8

Funcionalidade: Experiência com pets - Passo 1

  Contexto:
    Dado que conclui com sucesso a etapa de dados pessoais

  Cenario: Validar passo 01

    Quando preencho todos os campos do passo 01 da etapa de experiência com pets
    Então o próximo passo será liberado caso eu salvar e continuar

  Esquema do Cenario: Passo 02 - Validar apresentação de campo de texto
    E já estou no passo 02 da etapa de experiência com pets
    Quando seleciono a opção "<opção>" na pergunta se ja tive experiência
    Então "<resultado>"

  Exemplos:
    | opção                                      | resultado                                    |
    | de não ter experiência                     | nada acontece                                |
    | qualquer opcão relativa a ter experiência  | uma caixa de texto obrigatório é apresentada |

  Cenário: Passo 02 - Validar preenchimento de campo de texto de experiência
    E escolhi uma opção relativa a ter experiência na pergunta de experiência com pets
    E o campo de texto é apresentado
    Quando eu preencher o mesmo, um contador de quantidade mínima de carácteres será apresentado
    E esse campo só será considerado correto assim que essa quantidade for atingida
    E não haverá quantidade máxima

  Cenário: Passo 03 - Validar preenchimento de campo de texto
    E já estou no passo 03 da etapa de experiência com pets
    Quando eu começar a preencher o campo de descrição do perfil
    E esse campo só será considerado correto assim que essa quantidade for atingida
    E não haverá quantidade máxima

  Cenário: Passo 03 - Validar ícone de ajuda
    E já estou no passo 03 da etapa de experiência com pets
    Quando eu clicar no ícone de ajuda do campo de descrição do perfil
    Então uma nova tela com dicas sobre o mesmo será apresentada
    E ao clicar em fechar, voltarei para a tela anterior
