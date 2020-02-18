#language: pt
#encoding: utf-8

Funcionalidade: Cadastro do herói - escolha seus serviços

  Cenario: Habilitação dos serviços - Dados pessoais não preenchidos

    Dado que estou logado na doghero com um novo usuário
    Quando acesso a tela de cadastro de heróis no hero intake
    Então nenhuma etapa de serviço esta liberada para edição

  Cenario: Habilitação dos serviços - Dados pessoais incompletos

    Dado que estou logado na doghero com um novo usuário
    Quando acesso a tela de cadastro de heróis no hero intake
    E concluo a primeira etapa dos dados pessoais
    Então nenhuma etapa de serviço esta liberada para edição

  Esquema do Cenario: Habilitação dos serviços - Dados pessoais incompletos

    Dado que estou logado na doghero com um novo usuário
    E acesso a tela de cadastro de heróis no hero intake
    Quando concluo com sucesso todas as etapas de 'conte um pouco sobre você'
    Então os serviços "<services>" são liberados através de um CTA para edição de acordo com a localização "<location>"

  Exemplos:
    | services | location |
    |          | AR       |
    |          | MX       |
    |          | BR       |

  Esquema do Cenario: Cadastro parcial

    Dado que estou logado na doghero com um novo usuário
    E concluo com sucesso todas as etapas de 'conte um pouco sobre você'
    Quando preencho parcialmente o serviço "<services>"
    E volto para a tela de cadastro do herói
    Então o serviço CTA do serviço é atualizado para o modo de pendência
    E a barra de progresso do serviço é atualizada

    Exemplos:
      | services   |
      | hospedagem |
      | creche     |
      | pet sitter |
      | passeios   |

  Esquema do Cenario: Cadastro enviado

    Dado que estou logado na doghero com um novo usuário
    E concluo com sucesso todas as etapas de 'conte um pouco sobre você'
    Quando completo com sucesso o serviço "<services>"
    E volto para a tela de cadastro do herói
    Então o serviço CTA do serviço é atualizado para o modo de edição
    E a barra de progresso do serviço desaparece
    E uma tag é apresentada para o serviço em questão com status de "Cadastro enviado. Aguardando aprovação"

    Exemplos:
      | services   |
      | hospedagem |
      | creche     |
      | pet sitter |
      | passeios   |

  Esquema do Cenario: Cadastro enviado e analisado

    Dado que enviei um cadastro para o serviço "<services>"
    E o serviço foi "<status>" pela central DogHero
    Quando acesso a tela de cadastro do herói
    Então uma tag é apresentada para o serviço em questão com status "<status_tag>"

    Exemplos:
      | services   | status   | status_tag |
      | hospedagem | aprovado | aprovado   |
      | hospedagem | recusado | recusado   |
      | creche     | aprovado | aprovado   |
      | creche     | recusado | recusado   |
      | pet sitter | aprovado | aprovado   |
      | pet sitter | recusado | recusado   |
      | passeio    | aprovado | aprovado   |
      | passeio    | recusado | recusado   |

  # Em que casos temos o cenario de cadastro pendente de documentos ou cursos?



