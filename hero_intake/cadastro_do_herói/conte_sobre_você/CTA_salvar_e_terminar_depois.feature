#language: pt
#encoding: utf-8

Funcionalidade: CTA - Salvar e terminar depois

  Contexto:
    Dado que estou com um usuário não-herói na tela de HIT - Dados pessoais
    E acesso um dos passos disponiveis em uma etapa habilitada

  Esquema do Cenario: CTA - Salvar e terminar depois - Dados corretos

    E eu preencho "<forma_de_preenchimento>"
    Quando clico no CTA para salvar a terminar depois
    Então o passo será salvo e serei redirecionado para o menu apresentando todas as etapas
    E ao clicar em alterar novamente essa etapa serei direcionado para a mesma tela com os dados anteriormente salvos

  Exemplos:
    | forma_de_preenchimento                                    |
    | parcialmente e corretamente um passo                      |
    | parcialmente um passo, não preenchendo dados obrigatórios |

  Cenario: CTA - Salvar e terminar depois - Dados incorretos
    E eu preencho parcialmente e incorretamente um passo
    Quando clico no CTA para salvar a terminar depois
    Então um alerta será apresentado informando que existem dados preenchidos incorretamente
    E o sistema não salvará minha edição


  Esquema do Cenario: Botão de voltar - Salvar e terminar depois - Dados corretos
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no botão "<botão>"
    Então um alerta será apresentado perguntando se quero ou não salvar como rascunho
    E escolho a opção "salvar"
    Então o passo será salvo e serei redirecionado para "<redirecionamento>"
    E ao voltar novamente para essa etapa serei direcionado para a mesma tela com os dados anteriormente salvos

  Exemplos:
    | forma_de_preenchimento                                    | botão                     | redirecionamento         |
    | parcialmente e corretamente um passo                      | voltar                    | menu com todas as etapas |
    | parcialmente um passo, não preenchendo dados obrigatórios | de outro passo habilitado | o passo escolhido        |

  Esquema do Cenario: Botão de voltar - Salvar e terminar depois - Dados incorretos
    E eu preencho parcialmente e incorretamente um passo
    Quando clico no botão "<botão>"
    Então um alerta será apresentado informando que existem dados preenchidos incorretamente
    E o sistema não salvará minha edição
    E serei redirecionado para "<redirecionamento>"

    Exemplos:
      | botão                     | redirecionamento         |
      | voltar                    | menu com todas as etapas |
      | de outro passo habilitado | o passo escolhido        |

